//  fizzBuzz.c

#include <stdio.h>

/** Implements the FizzBuzz algorithm in the (prettier) do...while syntax */
void use_doWhile(int number)
{
	int count = 1;
	do {
        if (count % 3 == 0)  printf("Fizz");
        if (count % 5 == 0)  printf("Buzz");
        if ((count % 3 != 0) && (count % 5 != 0)) printf("number=%d", count);
        printf("\n");
		count++;
        
	} while (count < number);
}

/** Implements the FizzBuzz algorithm in the (prettier) do...while syntax */
void use_forLoop(int number)
{
    for (unsigned int count = 1; count <= number; count++) {
        if (count % 15 == 0) {
            printf("FizzBuzz\n");
        } else if (count % 3 == 0) {
            printf("Fizz\n");
        } else if (count % 5 == 0){
            printf("Buzz\n");
        } else {
            printf("%u\n", count);
        }
    }
}

/** Implements the FizzBuzz algorithm in a tiny amount of code
    Technically this isn't correct since it prints the number every time, whereas
    the problem statement says to only print the iteration number when
    both Fizz and Buzz are not true.
    */
void use_tinyCode(int number)
{
   for (int count = 1; count <= 100; count++) {
      printf("number= %d %s%s\n", count, count%3?"":"Fizz", count%5?"":"Buzz");
   }
}

/** Pick from one of the available FizzBuzz algorithms from `main()`*/
int main(int argc, char *argv[]) {
	
	printf("Starting the FizzBuzz test\n");
    use_tinyCode(50);
    return(0);
}

