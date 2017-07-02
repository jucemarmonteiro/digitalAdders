// Copyright {2011} {Jucemar Monteiro - jucemar.monteiro@gmail.com}
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at

// http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
#include<stdio.h>
#include<math.h>
#define size 64


void gen( int,FILE *);
void p(int,int,FILE *);
int interface();
void gen_truph_table();
int power(int,int);

char vector[2][size]; //pos 0 = a, pos 1 = b;
int main(){
	int tam =0,cin=0,a=0,b=0,i=0,j=0,tipo=0;
	FILE * fp;
	char path [50];
	for(i=0;i<2;i++)
		for(j=0;j<size;j++)
			vector[i][j]='0';
	do{
		tipo=interface();
		if(tipo>0){
			if(tipo==1){
				gen_truph_table();
				for(i=3;i<8;i++){
					tam =2*power(2,i);
					sprintf(path, "%s%d%s", "stimulus_",tam , "bits" );
					fp = fopen( path, "w" );
					gen(tam,fp);
					fclose(fp);
					printf("%s%d%s\n","Tabela verdade stimulus_",tam,"bits gerada.");	
				}
			}else{
				printf("tipo = %d\n",tipo);
				if(tipo==2)
					gen_truph_table();
				else{
					tam =2*power(2,tipo);
					sprintf(path, "%s%d%s", "stimulus_",tam , "bits" );
					fp = fopen( path, "w" );
					gen(tam,fp);
					fclose(fp);
					printf("%s%d%s\n","Tabela verdade stimulus_",tam,"bits gerada.");
				}
			}
				
		}
	
	}while(tipo!=0);



	return 0;
}
void p(int cin,int tam, FILE * fp){
	int i,j;
	for(i=0;i<2;i++){
			for(j=(tam/4)-1;j>=0;j--)
				fprintf(fp,"%c",vector[i][j]);
			fprintf(fp,"\n");
			if(i==1)
				fprintf(fp,"%X\n",cin);
		}
	//printf("\n");
}


void gen(int tam,FILE * fp){
	int pos=0,cin,a,b,pg;
	for(cin=0;cin<2;cin++){

		//a=0 ,b=0
		vector[0][pos]='0';
		vector[1][pos]='0';
		p(cin,tam,fp);

		//a=7, b=1
		vector[0][pos]='1';
		vector[1][pos]='7';
		p(cin,tam,fp);

		//a=14(e), b=0 
		vector[0][pos]='0';
		vector[1][pos]='E';
		p(cin,tam,fp);		

		//a=14(e), b=1 
		vector[0][pos]='1';
		vector[1][pos]='E';
		p(cin,tam,fp);
			

		//a=15(f), b=0 
		vector[0][pos]='0';
		vector[1][pos]='F';
		p(cin,tam,fp);
			
		//a=15(f), b=1 
		vector[0][pos]='1';
		vector[1][pos]='F';
		p(cin,tam,fp);
	

		//a=15(f), b=15(f) 
		vector[0][pos]='F';
		vector[1][pos]='F';
		p(cin,tam,fp);
	}

	for(pos=1;pos<(tam/4);pos++)
		for(cin=0;cin<2;cin++){
			for(pg=0;pg<2;pg++){
				//printf("pg=%d\n",pg);
				int j;
				if(pg==0){
					vector[0][0]='F';
					vector[1][0]='0';
				}else{
					vector[0][0]='F';
					vector[1][0]='1';
				}
				for(j=1;j<pos;j++){
					vector[0][j]='F';
					vector[1][j]='0';
				}
	
				//a=0 ,b=0
				vector[0][pos]='0';
				vector[1][pos]='0';
				p(cin,tam,fp);

				//a=7, b=1
				vector[0][pos]='1';
				vector[1][pos]='7';
				p(cin,tam,fp);

				//a=14(e), b=0 
				vector[0][pos]='0';
				vector[1][pos]='E';
				p(cin,tam,fp);		

				//a=14(e), b=1 
				vector[0][pos]='1';
				vector[1][pos]='E';
				p(cin,tam,fp);
			

				//a=15(f), b=0 
				vector[0][pos]='0';
				vector[1][pos]='F';
				p(cin,tam,fp);
			
				//a=15(f), b=1 
				vector[0][pos]='1';
				vector[1][pos]='F';
				p(cin,tam,fp);
	

				//a=15(f), b=15(f) 
				vector[0][pos]='F';
				vector[1][pos]='F';
				p(cin,tam,fp);

			}

		}
			
}

int power(int x, int y){
      if(y == 0)
        return 1;
     return (x * power(x,y-1) );
}
void gen_truph_table(){
	FILE * fp;
	char path [50];
	int tm=8,range=0,a,b,c;
	range = power(2,tm);
	sprintf(path, "%s%d%s", "stimulus_",tm , "bits" );
	fp = fopen( path, "w" );
	for(c=0;c<=1;c++)
	for(a=0;a<range;a++)
	for(b=0;b<range;b++){
		fprintf(fp,"%X\n",a);
		fprintf(fp,"%X\n",b);
		fprintf(fp,"%X\n",c);
	}
	fclose(fp);
	printf("%s%d%s\n","Tabela verdade stimulus_",tm,"bits gerada.");
}

int interface(){
	int tipo=0;
	do{
		printf("%s\n","digite:\n0) Sair.\n1) Para gerar todos os conjuntos de vetores.");
		printf("%s\n","2) Gerar os vetores para os somadores de 8 bits."); 
		printf("%s\n","3) Gerar os vetores para os somadores de 16 bits.");
		printf("%s\n","4) Gerar os vetores para os somadores de 32 bits.");
		printf("%s\n","5) Gerar os vetores para os somadores de 64 bits.");
		printf("%s\n","6) Gerar os vetores para os somadores de 128 bits.");
		printf("%s\n","7) Gerar os vetores para os somadores de 256 bits.");
		scanf("%d",&tipo);
		if(tipo<0||tipo>7){
			printf("%s\n","Valor Incorreto.");
		}else
			return tipo;
		
	}while(tipo<0||tipo>7);


}
