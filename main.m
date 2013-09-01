#import<Foundation/Foundation.h>
#import "arithmetic.h"

int main(int argc, char *argv[])
{
	arithmetic *ar = [[arithmetic alloc]init];

	printf("\nAddition: %d\n", [ar addpara : 5: 10]);
	printf("\nMultiplication: %d\n", [ar multipara : 5: 12]);
	printf("\nSubtraction: %d\n", [ar subpara : 75: 61]);
	printf("\nDivision: %f\n", [ar divpara : 500: 10]);

	return 0;
}