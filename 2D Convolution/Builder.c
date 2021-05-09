#include <stdio.h>
//#include "imageIO.h"
//#include "image.h"
//#include <MAX.h>
#define MAX1 512
#define MAX2 MAX1
#include <x86intrin.h>
#include <print.h>
//#include "convpack.h"
//unsigned short int input[MAX1][MAX2] __attribute__(( aligned(32)));

__m256i  _mm256_hadd5x5_epi16(__m256i a );
__m256i  _mm256_hadd7x7_epi16(__m256i a );
__m256i  _mm256_hadd7x72_epi16(__m256i a );
//__m256i _mm256_swap_epi16( __m256i a, __m256i b, __m256i mask);
int main()
{
	/*FILE *imageFileInDisk = NULL;
	char *imageName = "me1.pgm";
	int xsize, ysize, maxgray;
	
	imageFileInDisk = fopen ( imageName, "r" );
	
	if ( imageFileInDisk == NULL ) {
		printf ( "\n" );
		printf ( "  Cannot open the input file %s.\n", imageName );
		return 1;
	}
	
	readHeader(imageFileInDisk, &xsize, &ysize ,&maxgray);
	printf( "|%s| |%d| |%d| |%d|\n", type, xsize, ysize, maxgray );
	
	readP2ImageData(imageFileInDisk, input);
	
	fclose(imageFileInDisk);
	
	//printImage16(input);
	saveImage(input, "out.pgm" , &xsize, &ysize ,&maxgray );*/
	short x[16], y[16];
	__m256i a,  b, temp_a, temp_b;// vec1, Output_v = _mm256_setzero_si256();//, vec2, vec3, vec4, vec5;
	//__m256i mask = _mm256_set_epi8( 0,0, 0,0, 0,0, 0,0, 0x80,0x80, 0,0, 0,0       ,0,0, 0,0, 0x80,0x80, 0,0, 0,0, 0,0, 0,0, 0x80,0x80, 0,0);
	//__m256i mask2 = _mm256_set_epi8( 0,0, 0,0,        0,0,         0,0,         0x80,0x80,  0,0,        0,0,         0,0,            0,0,       0x80,0x80, 0,0,       0,0,       0,0,            0,0,       0x80,0x80, 0,0);
	//__m256i mask3 = _mm256_set_epi8( 0,0, 0,0,        0,0,         0x80,0x80,   0,0,        0,0 ,       0,0,         0,0,            0x80,0x80, 0,0,       0,0,       0,0,       0,0,            0x80,0x80, 0,0,       0,0);
	//__m256i mask4 = _mm256_set_epi8( 0,0, 0,0,        0x80,0x80,   0,0,         0,0 ,       0,0 ,       0,0 ,        0x80,0x80,      0,0,       0,0,       0,0,       0,0,       0x80,0x80,      0,0,       0,0,       0,0);
	//__m256i mask5 = _mm256_set_epi8( 0,0, 0x80,0x80,  0,0,         0,0 ,        0,0 ,       0,0 ,       0x80,0x80 ,  0,0 ,           0,0,       0,0,       0,0,       0x80,0x80, 0,0 ,           0,0,       0,0 ,      0,0);
	
	//__m256i mask3 = _mm256_set_epi8(0, 0, 0x80, 0x80, 0, 0, 0, 0, 0x80, 0x80, 0, 0, 0, 0, 0x80, 0x80, 0, 0, 0, 0, 0x80, 0x80, 0, 0, 0, 0, 0x80, 0x80, 0, 0, 0, 0);
	//__m256i v255= _mm256_set1_epi16(0Xff);
	
	for(int i=0; i<16; i++) {x[i] = i+1; y[i] = i+17;} 
	__m256i mask = _mm256_set_epi8( 0,0, 0x80,0x80, 0,0, 0,0, 0x80,0x80, 0,0, 0,0       ,0x80,0x80, 0,0, 0,0, 0x80,0x80, 0,0, 0,0, 0x80,0x80, 0,0, 0,0);

	a =  _mm256_loadu_si256((__m256i*)x); 
	b = _mm256_loadu_si256((__m256i*)y);
	printf(" original    a : "); printVeci16(a); 
	printf(" original    b : "); printVeci16(b); 
	
	temp_a = _mm256_blendv_epi8 (a, b, mask);
	temp_b = _mm256_blendv_epi8 (b, a, mask);
	a = temp_a;
	b = temp_b;
	
	printf("swap         a : ");printVeci16(a); 
	printf("swap         b : ");printVeci16(b); 
	
	//__m256i mask = _mm256_set_epi8( 0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0x80,0x80,    0,0, 0,0, 0,0, 0,0, 0,0, 0,0, 0x80,0x80, 0,0);

	//step 1
	//vec1 =  _mm256_hadd7x7_epi16(a ); //printf("\n\n");
	//Output_v = vec1;
	//vec1 =  _mm256_alignr_epi8( vec1, _mm256_permute2x128_si256(vec1, vec1, 1), ((8-t)*2)); //printf("\n\n");
	//printf("            vec1 : ");printVeci16(vec1); 
	
	//vec1 =  _mm256_hadd7x72_epi16(a ); //printf("\n\n");
	//vec1 =  _mm256_alignr_epi8( vec1, _mm256_permute2x128_si256(vec1, vec1, 1), ((8-t)*2)); //printf("\n\n");
	//printf("            vec1 : ");printVeci16(vec1); 
	
	//Output_v = _mm256_blendv_epi8 (Output_v ,vec1, mask2);
	//printf("       0Output_v : ");printVeci16(Output_v); 
	
	//vec1 = _mm256_alignr_epi8( vec1, _mm256_permute2x128_si256(vec1, vec1, 1), 6*2);
	//mask2 = _mm256_bslli_epi128(mask2, 2);
	//Output_v = _mm256_blendv_epi8 (Output_v ,vec1, mask2);
	//printf("       0Output_v : ");printVeci16(Output_v);
	
	//printf("\n\n");
	//mask =  _mm256_alignr_epi8( mask, _mm256_permute2x128_si256(mask, mask, 1), 7*2);
	//Output_v = _mm256_blendv_epi8 (Output_v ,vec1, mask);
	//printf("       0Output_v : ");printVeci16(Output_v); 
	//Output_v = vec1;
	
	//vec2 =  _mm256_alignr_epi8( vec1, _mm256_permute2x128_si256(vec1, vec1, 1), 7*2); //printf("\n\n");
	//printf("            vec2 : ");printVeci16(vec2); 
	//Output_v = _mm256_blendv_epi8 (Output_v ,vec2, mask2);
	//printf("       1Output_v : ");printVeci16(Output_v); 
	
	//vec3 =  _mm256_alignr_epi8( vec1, _mm256_permute2x128_si256(vec1, vec1, 1), 6*2); //printf("\n\n");
	//printf("            vec3 : ");printVeci16(vec3); 
	//printf("\n\n");
	//mask =  _mm256_alignr_epi8( mask, _mm256_permute2x128_si256(mask, mask, 1), 7*2);
	//Output_v = _mm256_blendv_epi8 (Output_v ,vec3, mask3);
	//printf("       2Output_v : ");printVeci16(Output_v); 
	
	//vec4 =  _mm256_alignr_epi8( vec1, _mm256_permute2x128_si256(vec1, vec1, 1), 5*2); //printf("\n\n");
	//printf("            vec4 : ");printVeci16(vec4); 
	//printf("\n\n");
	
	//mask =  _mm256_alignr_epi8( mask, _mm256_permute2x128_si256(mask, mask, 1), 7*2);
	//Output_v = _mm256_blendv_epi8 (Output_v ,vec4, mask4);
	//printf("       3Output_v : ");printVeci16(Output_v); 
	
	//vec5 =  _mm256_alignr_epi8( vec1, _mm256_permute2x128_si256(vec1, vec1, 1), 4*2); //printf("\n\n");
	//printf("            vec5 : ");printVeci16(vec5); 
	//mask =  _mm256_alignr_epi8( mask, _mm256_permute2x128_si256(mask, mask, 1), 7*2);
	//Output_v = _mm256_blendv_epi8 (Output_v ,vec5, mask5);
	//printf("       4Output_v : ");printVeci16(Output_v); 
	
	printf("\n\n");
	
	printf("\n\n");
	//printf("          Output : ");printVeci16(Output_v); 
	printf("\n\n");
	return 0;
}
inline __m256i _mm256_hadd5x5_epi16(__m256i a  )
{
	__m256i a1, a2, a3, a4;//, sum_v;
	a1 = _mm256_alignr_epi8(_mm256_permute2x128_si256(a, _mm256_setzero_si256(), 0x31), a, 1 * 2);printf("              a1 : "); printVeci16(a1);
	//a2 = _mm256_bsrli_epi128(a1, 2);printf("              a2 : "); printVeci16(a2); it does not work because of the lanes
	a2 = _mm256_alignr_epi8(_mm256_permute2x128_si256(a, _mm256_setzero_si256(), 0x31), a, 2 * 2);printf("              a2 : "); printVeci16(a2);
	a3 = _mm256_bsrli_epi128(a2, 2);printf("              a3 : ");printVeci16(a3);
	//a3= _mm256_alignr_epi8(_mm256_permute2x128_si256(a, _mm256_setzero_si256(), 0x31), a, 3 * 2);
	a4 = _mm256_bsrli_epi128(a3, 2);printf("              a4 : ");printVeci16(a4);
	//a4= _mm256_alignr_epi8(_mm256_permute2x128_si256(a, _mm256_setzero_si256(), 0x31), a, 4 * 2);
	return _mm256_add_epi16(_mm256_add_epi16(_mm256_add_epi16(a1, a2), _mm256_add_epi16(a3, a4)) , a );
	//return _mm256_alignr_epi8( sum_v, _mm256_permute2x128_si256(sum_v, sum_v, 1), index*2);
}
inline __m256i _mm256_hadd7x7_epi16(__m256i a  )
{
	__m256i a1, a2, a3, a4, a5, a6;//, sum_v;
	a1 = _mm256_alignr_epi8(_mm256_permute2x128_si256(a, _mm256_setzero_si256(), 0x31), a, 1 * 2);printf("              a1 : "); printVeci16(a1);
	//a2 = _mm256_bsrli_epi128(a1, 2);printf("              a2 : "); printVeci16(a2); it does not work because of the lanes
	a2 = _mm256_alignr_epi8(_mm256_permute2x128_si256(a, _mm256_setzero_si256(), 0x31), a, 2 * 2);printf("              a2 : "); printVeci16(a2);
	a3 =  _mm256_alignr_epi8(_mm256_permute2x128_si256(a, _mm256_setzero_si256(), 0x31), a, 3 * 2);printf("              a3 : ");printVeci16(a3);
	//a3= _mm256_alignr_epi8(_mm256_permute2x128_si256(a, _mm256_setzero_si256(), 0x31), a, 3 * 2);
	a4 =  _mm256_alignr_epi8(_mm256_permute2x128_si256(a, _mm256_setzero_si256(), 0x31), a, 4 * 2);printf("              a4 : ");printVeci16(a4);
	a5 =  _mm256_alignr_epi8(_mm256_permute2x128_si256(a, _mm256_setzero_si256(), 0x31), a, 5 * 2);printf("              a5 : ");printVeci16(a5);
	a6 =  _mm256_alignr_epi8(_mm256_permute2x128_si256(a, _mm256_setzero_si256(), 0x31), a, 6 * 2);printf("              a6 : ");printVeci16(a6);


	//a4= _mm256_alignr_epi8(_mm256_permute2x128_si256(a, _mm256_setzero_si256(), 0x31), a, 4 * 2);
	return _mm256_add_epi16(_mm256_add_epi16(_mm256_add_epi16(a1, a2), _mm256_add_epi16(a3, a4)) ,  _mm256_add_epi16(_mm256_add_epi16(a5, a6), a ));
	//return _mm256_alignr_epi8( sum_v, _mm256_permute2x128_si256(sum_v, sum_v, 1), index*2);
}
inline __m256i _mm256_hadd7x72_epi16(__m256i a  )
{
	short int temp[16];
	
	_mm256_store_si256((__m256i *)&temp[0], a);//printf("              0a : "); printVeci16(a);
	a = _mm256_insert_epi16(a, temp[0]+temp[1]+temp[2]+temp[3]+temp[4]+temp[5]+temp[6],0); ;//printf("              1a : "); printVeci16(a);
	a = _mm256_insert_epi16(a, temp[7]+temp[8]+temp[9]+temp[10]+temp[11]+temp[12]+temp[13],7); //printf("              2a : "); printVeci16(a);
	//a4= _mm256_alignr_epi8(_mm256_permute2x128_si256(a, _mm256_setzero_si256(), 0x31), a, 4 * 2);
	return a;
	//return _mm256_alignr_epi8( sum_v, _mm256_permute2x128_si256(sum_v, sum_v, 1), index*2);
}
/*inline __m256i _mm256_swap_epi16( __m256i a, __m256i b, __m256i mask)
{
	
	
	return a;
}*/

//3x3 Builder 
/*sumTotal_v = _mm256_setzero_si256();
	printf("            vec2 : "); 
	vec2 =  _mm256_hadd3x32_epi16(a);  
	printVeci16(vec2);                 
	printf("\n\n");
	
	sumTotal_v = _mm256_setzero_si256();
	printf("      sumTotal_v : "); 
	sumTotal_v = _mm256_blendv_epi8 (v255 ,vec2, mask2);
	printVeci16(sumTotal_v);                 
	printf("\n\n");
	
	printf("            vec3 : ");
	vec3 =  _mm256_hadd3x33_epi16(a);  
	printVeci16(vec3);
	printf("\n\n");
	sumTotal_v = _mm256_setzero_si256();
	printf("      sumTotal_v : ");
	sumTotal_v = _mm256_blendv_epi8 (v255 ,vec3 , mask3);
	printVeci16(sumTotal_v);                 
	printf("\n\n");*/
