/*********************************************************************/
/* Homework Assignment 5, for EECS 22, Fall 2018                     */
/*                                                                   */
/* Author: Kevin Ross		                                         */
/*                                                                   */
/* IterativeFilter.c: file for iterative filters                     */
/*                                                                   */
/*********************************************************************/

#include "IterativeFilter.h"

MOVIE *doIterativeFilter(IMAGE *image, iterableFilter filter, float start, float end, float change)
{
	float i = start;
	MOVIE *mv = CreateMovie();
	IMAGE *copy = CopyImage(image);
	printf("Iterative filter: Image copied successfully!\n");
	if(start > end)
	{
		//Generate n frames
		for(i=start; i > end; i-=change)
		{
			copy = filter(copy, i);
			printf("filt %f, ", i);
			AppendRGBImage(mv->Frames, CopyImage(copy));
		}
	}
	else
	{
		printf("test 1\n");
		for(i=start; i < end; i+=change)
		{
			printf("test 2:");
			copy = filter(copy, i);
			printf(" %f, ", i);
			AppendRGBImage(mv->Frames, CopyImage(copy));
		}
	}
	RGB2YUVMovie(mv);
	printf("\nRGB converted to YUV movie successfully!\n");
	return mv;
	
}
