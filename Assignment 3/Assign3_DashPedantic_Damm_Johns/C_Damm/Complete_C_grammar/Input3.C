/*
 C GRAMMAR TEST 3

 NESTED IF's
 BIRTHDAY TEST
*/

#include <stdio.h>
#include <stdlib.h>

int main()
{
	int year1 = 1984;	
	int month1 = 09;
	int day1 = 07;
	int year2 = 1989;
	int month2 = 06;
	int day2 = 24;
	

	if (year1 > year2)
	{
		printf("%s\n", "PERSON 1 IS OLDER");
	}
	else if (year1 < year2)
	{
		printf("%s\n", "PERSON 2 IS OLDER");
	}
	else
	{
		if (month1 > month2)
		{
			printf("%s\n", "PERSON 1 IS OLDER");
		}
		else if (month1 < month2)
		{
			printf("%s\n", "PERSON 2 IS OLDER");
		}
		else
		{
			if (day1 > day2)
			{
				printf("%s\n", "PERSON 1 IS OLDER");
			}
			else if (day1 < day2)
			{
				printf("%s\n", "PERSON 2 IS OLDER");				
			}
			else
			{
				printf("%s\n", "YOU ARE BOTH THE SAME AGE");
			}
		}
	}

	printf("GOODBYE\n");

	return EXIT_SUCCESS;
}
