#include <stdio.h>
#include <string.h>
unsigned short int conv3[3][16] __attribute__(( aligned(32))) ;

unsigned short int conv5[5][16] __attribute__(( aligned(32))) ;
																 
unsigned short int conv7[7][16] __attribute__(( aligned(32))) ;
																 
unsigned short int conv9[9][16] __attribute__(( aligned(32))) ;
#define atoa(x) #x
inline void makeString(char* str, char* str1, char* str2, char* str3, int str4)
{
	strcat(str,str1);
	strcat(str,str2);
	strcat(str,str3);
	strcat(str, atoa(str4));
	printf("%s \n", str);
	
} 


inline void kernel3x3(unsigned short int x1,  unsigned short int x2,  unsigned short int x3,  unsigned short int y1,  unsigned short int y2,  unsigned short int y3,  unsigned short int z1,  unsigned short int z2,  unsigned short int z3)
{
	conv3[0][0] = conv3[0][3] = conv3[0][6] = conv3[0][9]  = conv3[0][12] = x1;
	conv3[0][1] = conv3[0][4] = conv3[0][7] = conv3[0][10] = conv3[0][13] = x2;
	conv3[0][2] = conv3[0][5] = conv3[0][8] = conv3[0][11] = conv3[0][14] = x3;
	conv3[0][15] = 0;
	
	//y
	conv3[1][0] = conv3[1][3] = conv3[1][6] = conv3[1][9]  = conv3[1][12] = y1;
	conv3[1][1] = conv3[1][4] = conv3[1][7] = conv3[1][10] = conv3[1][13] = y2;
	conv3[1][2] = conv3[1][5] = conv3[1][8] = conv3[1][11] = conv3[1][14] = y3;
	conv3[1][15] = 0;	
	//z
	conv3[2][0] = conv3[2][3] = conv3[2][6] = conv3[2][9]  = conv3[2][12] = z1;
	conv3[2][1] = conv3[2][4] = conv3[2][7] = conv3[2][10] = conv3[2][13] = z2;
	conv3[2][2] = conv3[2][5] = conv3[2][8] = conv3[2][11] = conv3[2][14] = z3;
	conv3[2][15] = 0;
}

inline void printKernel(unsigned short int a[3][16], int k)
{
	int i, j;
	printf("\n");
	for(i=0;i<k;i++){
		for(j=0;j<16;j++){
			printf("%3d, ", a[i][j]);
		}
		printf("\n");
	}
}	

int main()
{
	char name[32] = "pic";
	makeString(name, "b", "c", "d", 3);
	
	printf("%s", name);
	kernel3x3(1,2,3,4,5,6,7,8,9);
	printKernel(conv3, 3);

	

	
	return 0;
}
