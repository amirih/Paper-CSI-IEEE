#include <x86intrin.h>
#include <stdio.h>
#define MAX1 32
#define MAX2 MAX1
#include <print.h>

inline __m256i _mm256_haddg_epi32(__m256i a, __m256i b, __m256i c, __m256i i1, __m256i i2 , __m256i i3 )
{
	int t[3][8] __attribute__(( aligned(32)));
		
	//_mm256_store_si256(&a_t[], a);
	_mm256_storeu_si256((__m256i *)&t[0][0], a);
	_mm256_storeu_si256((__m256i *)&t[1][0], b);
	_mm256_storeu_si256((__m256i *)&t[2][0], c);
	//_mm256_storeu_si256((__m256i *)&output[i][j], Output_v);
	
	a = _mm256_i32gather_epi32 ((int const *)&t[0][0],i1,4);printf("\n   a : ");printVeci32(a);
	b = _mm256_i32gather_epi32 ((int const *)&t[0][0],i2,4);printf("\n   b : ");printVeci32(b);
	c = _mm256_i32gather_epi32 ((int const *)&t[0][0],i3,4);printf("\n   c : ");printVeci32(c);
	
	return _mm256_add_epi32(a, _mm256_add_epi16(b,c));
}

int main()
{

	__m256i i1 = _mm256_set_epi32( 21, 18, 15, 12,  9, 6, 3, 0);
	__m256i i2 = _mm256_set_epi32( 22, 19, 16, 13, 10, 7, 4, 1);
	__m256i i3 = _mm256_set_epi32( 23, 20, 17, 14, 11, 8, 5, 2);
	
	__m256i a  = _mm256_set_epi32( 8,  7,  6,  5,  4,  3,  2,  1); printf("\n   a : ");printVeci32(a);
	__m256i b  = _mm256_set_epi32(16, 15, 14, 13, 12, 11, 10,  9); printf("\n   b : ");printVeci32(b);
	__m256i c  = _mm256_set_epi32(24, 23, 22, 21, 20, 19, 18, 17); printf("\n   c : ");printVeci32(c);
	
	__m256i sum =  _mm256_haddg_epi32( a,  b,  c,  i1,  i2 ,  i3 );

 	
	printf("\n sum : ");printVeci32(sum);

	return 0;
}
