/*
 C GRAMMAR TEST 1

 NUMBER GUESSING GAME
*/

#include <stdio.h>
#include <stdlib.h>

int main()
{
	int guess = 0;	
	int solution = 50;
	
	while (1)
	{
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
