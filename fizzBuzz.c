//
//  main.c
//  FizzBuzz
//
//  Created by Tim Triemstra on 1/23/16.
//  Copyright © 2016 Tim Triemstra. All rights reserved.
//

#include <stdio.h>

int main(int argc, char *argv[]) {
	
	printf("Starting the FizzBuzz test\n");
	
	int count = 1;
	do {
		printf("\n%i ", count);
		if (count % 3 == 0) printf("Fizz");
		if (count % 5 == 0) printf("Buzz");	
		count++;
	} while (count < 101);
	printf("\n");

}