/**
 * \file pattern_generator.c
 * \brief
 * \author mb274643
 * \date Dec 2024
 *
 */


#include "pattern_generator.h"


// Pattern générator defined by Marcelo and Charles WITH data formatting for AXI transfers:
// creates 3*num_pixels_per_index*num_indexes 32bit values
// par colonne : cpter 16 bits :
// 2 MSB (15-14) : n° de la colonne [0 à 3]
// 6 MSB (13- 8): n° de pixel [1 à 48]
// 8 LSB ( 7- 0): n° d’indice [1 a 255] - overflow
// We perform series of 3 axi lite transfers:
// ControlWord for Cols 0123 -> pixel data for Cols01 -> pixel data for COls23 -> repeat
// Control words will be:
//-CC pixel0       : FWS = 11001000 = 010
//-CC pixel1-47    : DTW = 11000000 = 000
//-CC pixel48      : LDW = 11101010 = 111
void pattern_generator(uint32_t *pixelData_array, int num_pixels_per_index,
						      int num_indexes, int flipEvenPixels_flag)
{
    int array_index = 0;  // Track position

    uint32_t value;
    uint16_t valA, valB;

    for (int i = 1; i <= num_indexes; i++)		//for each index
    {
        int pixel_value = 1;
        for (int i_word = 0; i_word < 2*num_pixels_per_index; i_word++) //2 32bit words for each pixel (C01, C23)
        {

            if (i_word%2 == 0) //pixel data: C0|C1
            {
            	valA = ((0b00 << 14) | (pixel_value << 8) | (i & 0xFF));
            	valB = ((0b01 << 14) | (pixel_value << 8) | (i & 0xFF));
            	value = (valA << 16) | valB;
            	if (flipEvenPixels_flag && (pixel_value % 2 == 0))
				{
					value = ~value;
				}
            }
            else 			//pixel data: C2|C3
            {
            	valA = ((0b10 << 14) | (pixel_value << 8) | (i & 0xFF));
				valB = ((0b11 << 14) | (pixel_value << 8) | (i & 0xFF));
				value = (valA << 16) | valB;
				if (flipEvenPixels_flag && (pixel_value % 2 == 0))
				{
					value = ~value;
				}
				pixel_value++;
            }

            pixelData_array[array_index++] = value;
        }
    }
}

void add_CCwords(uint32_t *output_array, uint32_t *pixelData_array, int num_pixels_per_index,
                            int num_indexes, int num_axi_per_pixel)
{
    int array_index = 0;
    int pixelData_index = 0;
    uint32_t value;

    for (int i = 1; i <= num_indexes; i++)	// for each index
    {
        for (int i_word = 0; i_word < num_axi_per_pixel * num_pixels_per_index; i_word++)
        {
            if (i_word % num_axi_per_pixel == 0) // Header for control words CC01 and CC23
            {
                if (i_word == 0)
                {
                    value = 0x0000C8C8; // FWS 8bit in firmware
                }
                else if (i_word == num_axi_per_pixel * (num_pixels_per_index - 1))
                {
                    value = 0x0000EAEA; // LDW 8bit
                }
                else
                {
                    value = 0x0000C0C0; // DTW 8bit
                }
            }
            else // pixel data from CO|C1 or C2|C3
            {
                value = pixelData_array[pixelData_index++];
            }

            output_array[array_index++] = value;
        }
    }
}


//2 MSB = n colonne
//14 LSB = increment pixel counter value
void pattern_generator_inc(uint32_t *pixelData_array, int num_pixels_per_index,
				int num_indexes, int flipEvenPixels_flag)
{

    int array_index = 0;  // Track position

    uint32_t value;
    uint16_t valA, valB;

    for (int i = 1; i <= num_indexes; i++)		//for each index
    {
        int pixel_value = 1;
        for (int i_word = 0; i_word < 2*num_pixels_per_index; i_word++) //3 AXI words for each pixel (CCs, C01, C23)
        {

            if (i_word%2 == 0) //pixel data: C0|C1
            {
            	valA = ((0b00 << 14) | pixel_value);
            	valB = ((0b01 << 14) | pixel_value);
            	value = (valA << 16) | valB;
            	if (flipEvenPixels_flag && (pixel_value % 2 == 0))
				{
					value = ~value;
				}
            }
            else 			//pixel data: C2|C3
            {
            	valA = ((0b10 << 14) | pixel_value);
				valB = ((0b11 << 14) | pixel_value);
				value = (valA << 16) | valB;
				if (flipEvenPixels_flag && (pixel_value % 2 == 0))
				{
					value = ~value;
				}
				pixel_value++;
            }

            pixelData_array[array_index++] = value;
        }
    }
}

// Note.: First definition with SoF word, deprecated for new IP
// Pattern générator defined by Marcelo and Charles:
// par colonne : cpter 16 bits :
// 2 MSB (15-14) : n° de la colonne [0 à 3]
// 6 MSB (13- 8): n° de pixel [1 à 48]
// 8 LSB ( 7- 0): n° d’indice [1 a 255] - overflow
/* Ex: colonne 2
 * 1111111111111111, 10 000001 00000001, 10 000010 00000001, 10 000011 00000001 ... 10 110000 00000001
   1111111111111111, 10 000001 00000010, 10 000010 00000010, 10 000011 00000010 ... 10 110000 00000010
 */
void pattern_generator_16bits(uint16_t *output_array, int column_value,
							  int num_pixels_per_index, int num_indexes)
{
    if (column_value < 0 || column_value > 3)
    {
        printf("Column value must be between 0 and 3.\n");
        return;
    }

    int pixel_value = 0;
    int i = 1;
    int array_index = 0;  // Track position

    // Generate data for the specified number of pixels and indexes
    for (int row = 0; row < num_indexes; row++)
    {
        for (int pixel = 0; pixel <= num_pixels_per_index; pixel++)
        {
            uint16_t binary_value;

            if (pixel_value == 0)
            {
                // SoF word
                binary_value = 0xFFFF;
            } else
            {
                // Format: 2-bit column + 6-bit pixel value + 8-bit index
                binary_value = (column_value << 14) | ((pixel_value & 0x3F) << 8) | (i & 0xFF);
            }
            output_array[array_index++] = binary_value;

            //overflow prevention
            pixel_value++;
            if (pixel_value > num_pixels_per_index)
            {
                pixel_value = 0;
            }
        }

        //overflow prevention
        i++;
        if (i > num_indexes)
        {
            i = 1;
        }
    }
}

//void pattern_generator_update(uint32_t *output_array, int num_pixels_per_index,
//						      int num_indexes, int num_axi_per_pixel, int flipEvenPixels_flag)
//{
//    int array_index = 0;  // Track position
//
//    uint32_t value;
//    uint16_t valA, valB;
//
//    for (int i = 1; i <= num_indexes; i++)		//for each index
//    {
//        int pixel_value = 1;
//        for (int i_word = 0; i_word < num_axi_per_pixel*num_pixels_per_index; i_word++) //3 AXI words for each pixel (CCs, C01, C23)
//        {
//
//            if (i_word%num_axi_per_pixel == 0) //Control words CC01 and CC23
//            {
//            	//value = 0x00000007; //fixed ctrl word (b111 for col01 and b000 for col23)
//            	if(i_word == 0)
//            	{
//            		//value = 0x00000012; //FWS 3bit = 0000...010010
//            		value = 0x0000C8C8; //FWS 8bit in firmware
//            	}
//            	else if(i_word == num_axi_per_pixel*(num_pixels_per_index-1))
//            	{
//            		//value = 0x0000003F; //LDW 3bit = 0000...111111
//            		value = 0x0000EAEA; //LDW 8bit
//            	}
//            	else
//            	{
//            		//value = 0x00000000; //DTW 3bit = 0000...000000
//            		value = 0x0000C0C0; //DTW 8bit
//            	}
//
//            }
//            else if (i_word%num_axi_per_pixel == 1) //pixel data: C0|C1
//            {
//            	valA = ((0b00 << 14) | (pixel_value << 8) | (i & 0xFF));
//            	valB = ((0b01 << 14) | (pixel_value << 8) | (i & 0xFF));
//            	value = (valA << 16) | valB;
//            	if (flipEvenPixels_flag && (pixel_value % 2 == 0))
//				{
//					value = ~value;
//				}
//            }
//            else 			//pixel data: C2|C3
//            {
//            	valA = ((0b10 << 14) | (pixel_value << 8) | (i & 0xFF));
//				valB = ((0b11 << 14) | (pixel_value << 8) | (i & 0xFF));
//				value = (valA << 16) | valB;
//				if (flipEvenPixels_flag && (pixel_value % 2 == 0))
//				{
//					value = ~value;
//				}
//				pixel_value++;
//
//            }
//
//            output_array[array_index++] = value;
//        }
//    }
//}

//----------------------------------------------------------------------------------------
//-----------IRAP pattern generator stimuli for functionality testing---------------------
//----------------------------------------------------------------------------------------

void pattern_generator_TPT(TPT_region regions[5], uint32_t *pattern, int num_pixels_per_index, int num_columns)
{
	int frame_cnt = 0;
	//region loop
	for(int i_region=0; i_region < 5; i_region++)
	{
		uint16_t value = regions[i_region].a; //start value
		//step loop
		for(int i_steps=0; i_steps < regions[i_region].N; i_steps++)
		{
			//frame loop
			for(int i_frames=0; i_frames < regions[i_region].b+1; i_frames++)
			{
				//pixel loop
				for(int i_pixel=0; i_pixel < num_pixels_per_index; i_pixel++)
				{
					//all pixels in frame have same value
//					pattern[2*(frame_cnt * num_pixels_per_index + i_pixel)] = ((uint32_t)value << 16) | value;
//					pattern[2*(frame_cnt * num_pixels_per_index + i_pixel)+1] = ((uint32_t)value << 16) | value;

					//modif for test: values only in C0P3, C1P6, C1P7 and C3P10
					if(i_pixel==3)//only Col0
					{
						pattern[2*(frame_cnt * num_pixels_per_index + i_pixel)] = ((uint32_t)value << 16) | 0;
						pattern[2*(frame_cnt * num_pixels_per_index + i_pixel)+1] = ((uint32_t)0 << 16) | 0;
					}
					else if(i_pixel==6)//only Col1
					{
						pattern[2*(frame_cnt * num_pixels_per_index + i_pixel)] = ((uint32_t)0 << 16) | value;
						pattern[2*(frame_cnt * num_pixels_per_index + i_pixel)+1] = ((uint32_t)0 << 16) | 0;
					}
					else if(i_pixel==7)//only Col2
					{
						pattern[2*(frame_cnt * num_pixels_per_index + i_pixel)] = ((uint32_t)0 << 16) | 0;
						pattern[2*(frame_cnt * num_pixels_per_index + i_pixel)+1] = ((uint32_t)value << 16) | 0;
					}
					else if(i_pixel==10)//only Col3
					{
						pattern[2*(frame_cnt * num_pixels_per_index + i_pixel)] = ((uint32_t)0 << 16) | 0;
						pattern[2*(frame_cnt * num_pixels_per_index + i_pixel)+1] = ((uint32_t)0 << 16) | value;
					}
					else
					{
						pattern[2*(frame_cnt * num_pixels_per_index + i_pixel)] = ((uint32_t)0 << 16) | 0;
						pattern[2*(frame_cnt * num_pixels_per_index + i_pixel)+1] = ((uint32_t)0 << 16) | 0;
					}


				}
				frame_cnt++;
			}
			value +=  regions[i_region].c;
		}
	}
}
