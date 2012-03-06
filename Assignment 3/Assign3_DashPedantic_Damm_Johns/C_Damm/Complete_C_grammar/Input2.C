/*
 C GRAMMAR TEST 2

 MENU + NUMBER GUESSING GAME + BOX PRINTER
*/

#include <stdio.h>
#include <stdlib.h>

int main()
{
	int guess = 0;	
	int solution = 50;
	char choice = 0;
	int i = 0;
	int j = 0;
	int width = 10;
	int height = 10;
	
	while (1)
	{
		printf("%s\n", "***MENU***");
		printf("%s\n", "a: Number guessing game");
		printf("%s\n", "b: Print a box");
		
		scanf("%c", &choice);

		switch (choice)
		{
			case 'a':
				do
				{
					printf("%s\n", "Enter a number: ");
					scanf("%d", &guess);

					if (guess < solution)
					{
						printf("%s\n", "To low!");
					}
					else if (guess > solution)
					{
						printf("%s\n", "To high!");
					}
				}
				while (guess != solution);				
				break;

			case 'b':
				for (i = 0; i < height; i++)
				{
					for (j = 0; j < width; j++)
					{
						printf("%s", "*");
					}
					printf("\n");
				}
				break;

			default:
				break;
		}

		printf("Would you like to play again [0-no, 1-yes]?\n");
		scanf("%d", &guess);

		if (guess == 0)
		{
			break;
		}
	}
	
	printf("GOODBYE\n");

	return EXIT_SUCCESS;
}
