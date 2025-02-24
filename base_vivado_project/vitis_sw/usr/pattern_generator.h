/**
 * \file pattern_generator.h
 * \brief
 * \author mb274643
 * \date Dec 2024
 *
 */

#ifndef pattern_generator_h_INCLUDED
#define pattern_generator_h_INCLUDED


/***************************** Include Files *********************************/
#include <stdint.h>


/************************** Constant Definitions *****************************/


/************************** Variable Definitions *****************************/



/************************** Function Prototypes ******************************/
void add_CCwords(uint32_t *output_array, uint32_t *pixelData_array, int num_pixels_per_index,
                            int num_indexes, int num_axi_per_pixel);
void pattern_generator(uint32_t *pixelData_array, int num_pixels_per_index,
						      int num_indexes, int flipEvenPixels_flag);
void pattern_generator_inc(uint32_t *pixelData_array, int num_pixels_per_index,
							  int num_indexes, int flipEvenPixels_flag);
void pattern_generator_16bits(uint16_t *output_array, int column_value,
							  int num_pixels_per_index, int num_indexes);

//----------------------------------------------------------------------------------------
//-----------IRAP pattern generator stimuli for functionality testing---------------------
//----------------------------------------------------------------------------------------
typedef struct
{
    int a;  // Value of the pattern at the beginning of the region
    int b;  // Number of frames per step 1+b
    int c;  // Increment between two successive steps
    int N;  // Number of steps in the region
} TPT_region;
void pattern_generator_TPT(TPT_region regions[5], uint32_t* pattern, int num_pixels_per_index, int num_columns);


#endif /* pattern_generator_H_ */
