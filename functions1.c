#include "functions1.h"
#include <stdio.h>

void matrizInit(int N, double *matrizA, double *matrizB, double *matrizC) {
	int i,j;
	for(i=0; i<N; i++){
	       for(j=0; j<N; j++){
		      matrizA[j+i*N] = 2.0*(i+j);
		      matrizB[j+i*N] = 3.2*(i+j);
		      matrizC[j+i*N] = 1.0;
		}
}
}





void multiplicacionMatrices(int N,  double *matrizA, double *matrizB, double *matrizC){

	int i=0;
        int j=0;
	int k=0;

	for(i=0; i<N; i++)
		for(j=0; j<N; j++)
		{
			double *pA, *pB, suma =0.0;
			pA = matrizA+(i*N);//Fila
			pB = matrizB+j; //Columna
			for(k=0;k < N;k++, pA++, pB+=N){

				suma += (*pA * *pB);
			}
			matrizC[i*N+j] = suma;
		}


}


void imprimirMatrices(int N, double *matriz){

	int i=0;
        int j=0;

	for(i=0; i<N; i++)
	{

		for(j=0; j<N; j++)
		{

			printf("%f", matriz[j+i*N]);
			printf("  ");
		}





		printf("\n");
	}

}
