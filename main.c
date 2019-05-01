/*
PWM controlado por Teclado
Alunos: Ivan de Abreu Lima e Nafisa Ibrahim
Prof.: Fábio Iaione
*/

#include <8051.h>	// Carrega um arquivo básico contendo as inicializações necessários 
#include <stdio.h>	// Função função printf_fast_f
#include "fonte.c"	// Contem os caracteres do GLCD
#include "delay.c"	// Contem os novos delays para 11.0592 MHz

//#include "config.c"

/* Defines do GLCD */
#define CS1 P2_0
#define CS2 P2_1
#define RS 	P2_2 
#define RW	P2_3
#define E	P2_4
#define RST	P2_5
#define DB P3 /* P4 */
#define CMD 0
#define DATA 1
#define ESQ 0
#define DIR 1
char contador = 0;
char POS = 0;

/* 
No 8051.h não tem a função NOP(); 
Para isso, a criamos diretamente dentro em Assembly
*/
#define NOP() \
    __asm     \
        nop   \
    __endasm  \

/* OBS: O novo valor de clock é 11.0592 MHz, desconsidere os comentários abaixo */
#define NOP4() 	NOP();NOP();NOP();NOP() // Atraso de 160 ns @ 25 MHz
#define NOP8()	NOP4();NOP4() 			// Atraso de 320 ns @ 25 Mhz
#define NOP12()	NOP4();NOP4();NOP4() 	// Atraso de 480 ns @ 25 Mhz

/* Delay em MS para 25Mhz */
void delay_ms_(unsigned int t)
{
	TMOD |= 0x01;
	TMOD &= ~0x02;
	while(t>0)
	{
		TR0 = 0;
		TF0 = 0;
		TH0 = 0x9E;
		TL0 = 0x58;
		TR0 = 1;
		while(TF0 != 1);
		t--;
	}
}

/* Delay de us para 25Mhz */
void delay_us_2(unsigned int t){
	TMOD &= ~0x01;
	TMOD |= 0x02;

	TR0 = 0;
	TF0 = 0;
	TL0 = 0xE7;
	TH0 = 0XE7;
	TR0 = 1;
	
	for(;t>0;t--){
		while(TF0==0);
		TF0 = 0;
	}
}

/* Função de leitura no GLCD */
unsigned char le_glcd(__bit cd, __bit cs){
	
	unsigned char byte;

	RW = 1;
	CS1 = cs;
	CS2 = !cs;
	RS = cd;

	NOP4();

	E = 1;

	NOP8();

	//SFRPAGE = CONFIG_PAGE;
	byte = DB;
	//SFRPAGE = LEGACY_PAGE;

	NOP4();

	E = 0;

	NOP12();

	return byte;

}

/* Inicializa o GLCD */
void esc_glcd(unsigned char byte,__bit cd,__bit cs){

	while(le_glcd(CMD, cs) & 0x80);
	 
	RW = 0;
	CS1 = cs;
	CS2 = !cs;
	RS = cd;

	//SFRPAGE = CONFIG_PAGE;
	DB = byte;
	//SFRPAGE = LEGACY_PAGE;

	NOP4();

	E = 1;
	NOP12();
	E = 0;

	//SFRPAGE = CONFIG_PAGE;
	DB = 0xFF;
	//SFRPAGE = LEGACY_PAGE;

	NOP12();

}

/* Inicializa o GLCD */
void Init_LCGD(){

	E 	= 0;
	RST = 1;
	CS1 = 1;
	CS2 = 1;

	//SFRPAGE = CONFIG_PAGE;
	DB = 0xFF;
	//SFRPAGE = LEGACY_PAGE;

	
	// Verifica se LCD terminou de iniciar 
	while(le_glcd(CMD, ESQ) & 0x10); 
	while(le_glcd(CMD, DIR) & 0x10); 

	/* Liga o LCD dos dois lados */
	esc_glcd(0x3F, CMD, ESQ);
	esc_glcd(0x3F, CMD, DIR);


	/* Reset de Posições */

	esc_glcd(0x40, CMD, ESQ); // Y
	esc_glcd(0x40, CMD, DIR); // Y

	esc_glcd(0xB8, CMD, ESQ); // X
	esc_glcd(0xB8, CMD, DIR); // X

	esc_glcd(0xC0, CMD, ESQ); // Z
	esc_glcd(0xC0, CMD, DIR); // Z

}


void conf_y(unsigned char y, __bit cs){

	y = y & 0x3F;
	esc_glcd(0x40 | y, CMD, cs);
}


void conf_pag(unsigned char page, __bit cs){

	page = page & 0x07;
	esc_glcd(0xb8 | page, CMD, cs);
}

void limp_glcd(__bit cs){

	unsigned int  i, j;

	for(i = 0; i < 8; i++){
		conf_pag(i, cs);
		conf_y(0, cs);
		for(j = 0; j < 64; j++){
			esc_glcd(0x00, DATA, cs);
		}
	}

}


void escreveEspaco(__bit cs){
	esc_glcd(0x00, DATA, cs);
	esc_glcd(0x00, DATA, cs);
	esc_glcd(0x00, DATA, cs);	
}




/* Escreve caracter */
void putchar(char c){

	int i;	

	if(c < 9){
		conf_pag(c - 1, ESQ);
		conf_pag(c - 1, DIR);
		conf_y(0, ESQ);
		conf_y(0, DIR);
		contador = 0;
	}

	else{
		
		for(i = 0; i < 5; i++){
			esc_glcd(fonte[c - 32][i], DATA, POS);
		}

		escreveEspaco(POS);
		contador = contador + 1;
	}

	if (contador == 8){
		POS = !POS;
		contador = 0;
	}

}

void main(){

	//Init_Device();
	
	//SFRPAGE = LEGACY_PAGE;

	Init_LCGD();

	limp_glcd(ESQ);
	limp_glcd(DIR);

	printf_fast_f("\x01linha 1        >");
	printf_fast_f("\x02 linha 2       >");
	printf_fast_f("\x03  linha 3      >");
	printf_fast_f("\x04   linha 4     >");
	printf_fast_f("\x05    linha 5    >");
	printf_fast_f("\x06     linha 6   >");	
	printf_fast_f("\x07      linha 7  >");
	printf_fast_f("\x08       linha 8 >");

	delay_ms(1000);

	printf_fast_f("\x04var = %5.1f    >", 123.568);
	
	while(1);
}
