/**
 * \file startIP_ddr.h
 * \brief
 * \author mb274643
 * \date Nov 2024
 *
 */


/* This application is an example application for the emul demux firmware for
 * the Trenz TE0813+TEB0818.
 * The firmware is composed of a custom emul demux IP via AXI lite and stream interfaces.
 * AXI stream transactions are done via an AXI DMA IP in simple register mode.
 *
 * The console debug output is configured as Serial UART at 115200 speed
 *
 * Flow of the code:
 *
 * 1-> initialize DMA engine
 * 2-> generate data pattern in ddr memory or import data pattern from a variable in .h file
 * 3-> configure IPs number of pixels to process until finished via AXI lite write
 * 4-> start the IP via AXI lite write
 * 5-> initialize software timer and start DMA transfer
 * 6-> poll status register via AXI lite read until IP is finished
 * 7-> perform timing calculations and debug info
 * 8-> reinitiate IP in its IDLE state via axi write to be ready for another loop
 * X-> loop from 2-8 if wanted.
 */

//------------------------------------------------------
//-------------------Headers----------------------------
#include <stdio.h>
#include <stdbool.h>
//-----------headers for the hardware design------------
#include "../../../../workspace_tests/testEmulDemux_app/src/platform.h" //platform created by Vitis in workspace
#include "xparameters.h"

//-----------UART debug console-------------------------------
#include "xuartps.h"
//#define UART_DEVICE_ID XPAR_XUARTPS_0_DEVICE_ID

//--------------Xilinx helper functions-----------------
#include "xil_printf.h"
#include "xil_io.h"
#include "xtime_l.h"
#include "xaxidma.h"

#include "sleep.h"

//----------Xilinx autogenerated IP library--------------
//#include "emul_demux_ip_ddr.h"
#include "emul_demux_SM.h"

//-----------User created DMA simple API-------------
#include "usr/axidma_simple_intr_api.h"
#include "usr/pattern_generator.h"

// --------- Dataset Selection (select only one, none for pattern gen)----------
//#define DATASET_EMUL_DEMUX
//#define DATASET_EMUL_DEMUX_9EVENTS
//#define DATASET_EMUL_DEMUX_6EVENTS
//#define DATASET_EMUL_DEMUX_SHIFTED150
//#define DATASET_EMUL_DEMUX_SHIFTED150_9EVENTS
//#define DATASET_EMUL_DEMUX_SHIFTED150_6EVENTS
#define DATASET_CHANGED_EMUL_DEMUX
//#define DATASET_CHANGED_EMUL_DEMUX_SHIFTED10_13EVENTS
//#define DATASET_CHANGED_EMUL_DEMUX_SHIFTED10_15EVENTS

//#define DATASET_PATTERN_GEN_12692_48
//#define DATASET_EMUL_DEMUX_CC_8BIT

#define NUM_PIXELS_PER_INDEX 48
#define PATTERN_GEN_TPT


// ----------- Include and Dataset metadata  -----------
//NOTE: verify dataset path
#if NUM_PIXELS_PER_INDEX == 48
	#ifdef DATASET_EMUL_DEMUX_SHIFTED150_9EVENTS
		#include "/local/home/mb274643/Desktop/GIT_REPOS/datasets/48pixels/Emul_Demux_impul_2024-07-18_16-46_shifted150_14467samplesfor9events.h"
		const unsigned int NUM_INDEXES          = 14467;
		const unsigned int NUM_LOOPS_IN_1SEC	= 9;
		#define FILE_NAME            "Emul_Demux_impul_2024-07-18_16-46_shifted150_14467samplesfor9events.h"
		#define DATASET_INFO         "IFCA dataset Shifted 150 samples with extra samples for 9 events in 1sec"
	#elif defined(DATASET_EMUL_DEMUX_SHIFTED150_6EVENTS)
		#include "/local/home/mb274643/Desktop/GIT_REPOS/datasets/48pixels/Emul_Demux_impul_2024-07-18_16-46_shifted150_21701samplesfor6events.h"
		const unsigned int NUM_INDEXES          = 21701;
		const unsigned int NUM_LOOPS_IN_1SEC	= 6;
		#define FILE_NAME            "Emul_Demux_impul_2024-07-18_16-46_shifted150_21701samplesfor6events.h"
		#define DATASET_INFO         "IFCA dataset Shifted 150 samples with extra samples for 6 events in 1sec"
	#elif defined(DATASET_EMUL_DEMUX_SHIFTED150)
		#include "/local/home/mb274643/Desktop/GIT_REPOS/datasets/48pixels/Emul_Demux_impul_2024-07-18_16-46_shifted150.h"
		const unsigned int NUM_INDEXES          = 12692;
		const unsigned int NUM_LOOPS_IN_1SEC	= 1;
		#define FILE_NAME            "Emul_Demux_impul_2024-07-18_16-46_shifted150.h"
		#define DATASET_INFO         "IFCA dataset Shifted 150 samples"
	#elif defined(DATASET_EMUL_DEMUX)
		#include "/local/home/mb274643/Desktop/GIT_REPOS/datasets/48pixels/Emul_Demux_impul_2024-07-18_16-46.h"
		const unsigned int NUM_INDEXES          = 12692;
		const unsigned int NUM_LOOPS_IN_1SEC	= 1;
		#define FILE_NAME            "Emul_Demux_impul_2024-07-18_16-46.h"
		#define DATASET_INFO         "Base IFCA dataset with 12692 samples for 48 pixels, all columns with same data"
	#elif defined(DATASET_EMUL_DEMUX_9EVENTS)
		#include "/local/home/mb274643/Desktop/GIT_REPOS/datasets/48pixels/Emul_Demux_impul_2024-07-18_16-46_14467samplesfor9events.h"
		const unsigned int NUM_INDEXES          = 14467;
		const unsigned int NUM_LOOPS_IN_1SEC	= 9;
		#define FILE_NAME            "Emul_Demux_impul_2024-07-18_16-46_14467samplesfor9events.h"
		#define DATASET_INFO         "IFCA dataset with extra samples for 9 events in 1sec"
	#elif defined(DATASET_EMUL_DEMUX_6EVENTS)
		#include "/local/home/mb274643/Desktop/GIT_REPOS/datasets/48pixels/Emul_Demux_impul_2024-07-18_16-46_21701samplesfor6events.h"
		const unsigned int NUM_INDEXES          = 21701;
		const unsigned int NUM_LOOPS_IN_1SEC	= 6;
		#define FILE_NAME            "Emul_Demux_impul_2024-07-18_16-46_21701samplesfor6events.h"
		#define DATASET_INFO         "IFCA dataset with extra samples for 6 events in 1sec"
	#elif defined(DATASET_PATTERN_GEN_12000_48)
		#include "/local/home/mb274643/Desktop/GIT_REPOS/datasets/48pixels/pattern_gen_12000_48.h"
		const unsigned int NUM_INDEXES          = 12000;
		const unsigned int NUM_LOOPS_IN_1SEC	= 1;
		#define FILE_NAME            "pattern_gen_12000_48.h"
		#define DATASET_INFO         "Pattern generation with 12000 samples"
	#elif defined(DATASET_PATTERN_GEN_12692_48)
		#include "/local/home/mb274643/Desktop/GIT_REPOS/datasets/48pixels/pattern_gen_12692_48.h"
		const unsigned int NUM_INDEXES          = 12692;
		const unsigned int NUM_LOOPS_IN_1SEC	= 1;
		#define FILE_NAME            "pattern_gen_12692_48.h"
		#define DATASET_INFO         "Pattern generation with 12692 samples"
	#elif defined(DATASET_EMUL_DEMUX_CC_8BIT)
		#include "/local/home/mb274643/Desktop/GIT_REPOS/datasets/48pixels/dataset_CC_8bit_test.h"
		const unsigned int NUM_INDEXES          = 12692;
		const unsigned int NUM_LOOPS_IN_1SEC	= 1;
		#define FILE_NAME            "dataset_CC_8bit_test.h"
		#define DATASET_INFO         "Base IFCA dataset with 12692 samples for 48 pixels, all columns with same data, test with CC8bit"

	#elif defined(DATASET_CHANGED_EMUL_DEMUX)
		#include "/local/home/mb274643/Desktop/GIT_REPOS/datasets/48pixels/changed_Emul_Demux_impul_2024-07-18_16-46.h"
		const unsigned int NUM_INDEXES          = 12692;
		const unsigned int NUM_LOOPS_IN_1SEC	= 1;
		#define FILE_NAME            "changed_Emul_Demux_impul_2024-07-18_16-46.h"
		#define DATASET_INFO         "IFCA dataset Shifted 150 samples with extra samples for 6 events in 1sec"
	#elif defined(DATASET_CHANGED_EMUL_DEMUX_SHIFTED10_13EVENTS)
		#include "/local/home/mb274643/Desktop/GIT_REPOS/datasets/48pixels/changed_Emul_Demux_impul_2024-07-18_16-46_shifted10_10017samplesfor13events.h"
		const unsigned int NUM_INDEXES          = 10017;
		const unsigned int NUM_LOOPS_IN_1SEC	= 13*2+1; //for 2 seconds
		#define FILE_NAME            "changed_Emul_Demux_impul_2024-07-18_16-46_shifted10_10017samplesfor13events.h"
		#define DATASET_INFO         "IFCA dataset with pix28-32=pix34-38 Shifted 10 samples for 13 events in 1 sec"
	#elif defined(DATASET_CHANGED_EMUL_DEMUX_SHIFTED10_15EVENTS)
		#include "/local/home/mb274643/Desktop/GIT_REPOS/datasets/48pixels/changed_Emul_Demux_impul_2024-07-18_16-46_shifted10_8681samplesfor15events.h"
		const unsigned int NUM_INDEXES          = 8681;
		const unsigned int NUM_LOOPS_IN_1SEC	= 15*2+1; //for 2 seconds
		#define FILE_NAME            "changed_Emul_Demux_impul_2024-07-18_16-46_shifted10_8681samplesfor15events.h"
		#define DATASET_INFO         "IFCA dataset with pix28-32=pix34-38 Shifted 10 samples for 15 events in 1 sec"
	#else
		const unsigned int NUM_INDEXES          = 21683;
		const unsigned int NUM_LOOPS_IN_1SEC	= 1;
	#endif
#elif NUM_PIXELS_PER_INDEX == 34
	#ifdef DATASET_EMUL_DEMUX_SHIFTED150_9EVENTS
		#include "/local/home/mb274643/Desktop/GIT_REPOS/datasets/34pixels/Emul_Demux_impul_2024-07-18_16-46_shifted150_14467samplesfor9events.h"
		const unsigned int NUM_INDEXES          = 14467;
		const unsigned int NUM_LOOPS_IN_1SEC	= 9;
		#define FILE_NAME            "Emul_Demux_impul_2024-07-18_16-46_shifted150_14467samplesfor9events.h"
		#define DATASET_INFO         "IFCA dataset Shifted 150 samples with extra samples for 9 events in 1sec"
	#elif defined(DATASET_EMUL_DEMUX_SHIFTED150_6EVENTS)
		#include "/local/home/mb274643/Desktop/GIT_REPOS/datasets/34pixels/Emul_Demux_impul_2024-07-18_16-46_shifted150_21701samplesfor6events.h"
		const unsigned int NUM_INDEXES          = 21701;
		const unsigned int NUM_LOOPS_IN_1SEC	= 6;
		#define FILE_NAME            "Emul_Demux_impul_2024-07-18_16-46_shifted150_21701samplesfor6events.h"
		#define DATASET_INFO         "IFCA dataset Shifted 150 samples with extra samples for 6 events in 1sec"
	#elif defined(DATASET_EMUL_DEMUX_SHIFTED150)
		#include "/local/home/mb274643/Desktop/GIT_REPOS/datasets/34pixels/Emul_Demux_impul_2024-07-18_16-46_shifted150.h"
		const unsigned int NUM_INDEXES          = 12692;
		const unsigned int NUM_LOOPS_IN_1SEC	= 1;
		#define FILE_NAME            "Emul_Demux_impul_2024-07-18_16-46_shifted150.h"
		#define DATASET_INFO         "IFCA dataset Shifted 150 samples"
	#elif defined(DATASET_EMUL_DEMUX)
		#include "/local/home/mb274643/Desktop/GIT_REPOS/datasets/34pixels/Emul_Demux_impul_2024-07-18_16-46.h"
		const unsigned int NUM_INDEXES          = 12692;
		const unsigned int NUM_LOOPS_IN_1SEC	= 1;
		#define FILE_NAME            "Emul_Demux_impul_2024-07-18_16-46.h"
		#define DATASET_INFO         "Base IFCA dataset with 12692 samples for 48 pixels, all columns with same data"
	#elif defined(DATASET_EMUL_DEMUX_9EVENTS)
		#include "/local/home/mb274643/Desktop/GIT_REPOS/datasets/34pixels/Emul_Demux_impul_2024-07-18_16-46_14467samplesfor9events.h"
		const unsigned int NUM_INDEXES          = 14467;
		const unsigned int NUM_LOOPS_IN_1SEC	= 9;
		#define FILE_NAME            "Emul_Demux_impul_2024-07-18_16-46_14467samplesfor9events.h"
		#define DATASET_INFO         "IFCA dataset with extra samples for 9 events in 1sec"
	#elif defined(DATASET_EMUL_DEMUX_6EVENTS)
		#include "/local/home/mb274643/Desktop/GIT_REPOS/datasets/34pixels/Emul_Demux_impul_2024-07-18_16-46_21701samplesfor6events.h"
		const unsigned int NUM_INDEXES          = 21701;
		const unsigned int NUM_LOOPS_IN_1SEC	= 6;
		#define FILE_NAME            "Emul_Demux_impul_2024-07-18_16-46_21701samplesfor6events.h"
		#define DATASET_INFO         "IFCA dataset with extra samples for 6 events in 1sec"
	#else
		const unsigned int NUM_INDEXES          = 2;
		const unsigned int NUM_LOOPS_IN_1SEC	= 1;
	#endif
#else
		const unsigned int NUM_INDEXES          = 10;
		const unsigned int NUM_LOOPS_IN_1SEC	= 1;
#endif

//------------------------------------------------------
//---------------------Constant Defines-----------------
//-----------Emul Demux IP axi lite registers-----------
const uint64_t BASE_ADDR 	    		  = XPAR_EMUL_DEMUX_SM_0_S_AXI_BASEADDR;
//const uint32_t BASE_REG_OFFSET 			  = EMUL_DEMUX_SM_S_AXI_SLV_REG0_OFFSET;
//const uint32_t STATUS_REG_OFFSET 		  = EMUL_DEMUX_SM_S_AXI_SLV_REG1_OFFSET;
//const uint32_t DEBUGINFO_REG_OFFSET		  = EMUL_DEMUX_SM_S_AXI_SLV_REG2_OFFSET;
//const uint32_t NUMPIXELSTOREAD_REG_OFFSET = EMUL_DEMUX_SM_S_AXI_SLV_REG3_OFFSET;
//const uint32_t NUMPIXELPERFRAME_REG_OFFSET = EMUL_DEMUX_SM_S_AXI_SLV_REG4_OFFSET; //NOTE: the address past REG3 need to be set in emul_demux_SM.h, since
//																				// cant recognize it as a 32 register axi lite interface
//const uint32_t LOGBUF_RPTR_REG_OFFSET 		  = EMUL_DEMUX_SM_S_AXI_SLV_REG5_OFFSET;
//const uint32_t LOGBUF_TIMESTAMPLSB_REG_OFFSET = EMUL_DEMUX_SM_S_AXI_SLV_REG6_OFFSET;
//const uint32_t LOGBUF_TIMESTAMPMSB_REG_OFFSET = EMUL_DEMUX_SM_S_AXI_SLV_REG7_OFFSET;
//const uint32_t LOGBUF_FRAMENUM_REG_OFFSET 	  = EMUL_DEMUX_SM_S_AXI_SLV_REG8_OFFSET;
//const uint32_t LOGBUF_STATUS_REG_OFFSET 	  = EMUL_DEMUX_SM_S_AXI_SLV_REG9_OFFSET;
		const uint32_t BASE_REG_OFFSET 			  = 0;
		const uint32_t STATUS_REG_OFFSET 		  = 4;
		const uint32_t DEBUGINFO_REG_OFFSET		  = 8;
		const uint32_t NUMPIXELSTOREAD_REG_OFFSET = 12;
		const uint32_t NUMPIXELPERFRAME_REG_OFFSET = 16; //NOTE: the address past REG3 need to be set in emul_demux_SM.h, since
																						// cant recognize it as a 32 register axi lite interface
		const uint32_t LOGBUF_RPTR_REG_OFFSET 		  = 20;
		const uint32_t LOGBUF_TIMESTAMPLSB_REG_OFFSET = 24;
		const uint32_t LOGBUF_TIMESTAMPMSB_REG_OFFSET = 28;
		const uint32_t LOGBUF_FRAMENUM_REG_OFFSET 	  = 32;
		const uint32_t LOGBUF_STATUS_REG_OFFSET 	  = 36;

//-------------Emul Demux Custom IP Defines-------------
const uint32_t STATUS_DONE 	    = 0x1;        // IP register value when it’s finished transmitting all data
const uint32_t BUTTON_PRESS_VAL = 0x00001000; // Value to write to activate the module

//--------------DMA Engine Defines----------------------
const uint32_t POLL_TIMEOUT_COUNTER = 1000000U;
const int NUMBER_OF_EVENTS 			= 1;
const int SLEEP_TIME_S 				= 15;

//-------------Pixel Data Defines----------------------
const uint32_t NUMPIXELSTOBEREAD 		      = NUM_PIXELS_PER_INDEX * NUM_INDEXES;
const uint32_t NUM_AXI_TRANSACTIONS_PER_PIXEL = 3;
const uint32_t TOTAL32BITWORDS 				  = NUM_AXI_TRANSACTIONS_PER_PIXEL * NUMPIXELSTOBEREAD;

//-----------Forward Declarations------------------------
void print_startup_info();
void print_debug_info(uint32_t debugInfo);
void check_data(unsigned int* addr1, unsigned int* addr2, size_t len);
void read_log_timestamps();



//----------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------
//----------------Test application for the emul_demux ------------------------------------
//----------------------------------------------------------------------------------------
int main()
{
    init_platform();
    print_startup_info();


	uint32_t debugInfo;
    XTime tStart, tEnd;
    double elapsed_time_s = 0.0;
    double expected_dataset_time_s = NUMPIXELSTOBEREAD*(((160.0/1000)/1000)/1000);
    int dmaStatus;
    uint32_t emulDemux_status;

	u32 *TxBufferPtr = (u32 *)TX_BUFFER_BASE; //Pointer to DDR memory used in DMA transactions DDR->IP
	u32 *RxBufferPtr = (u32 *)RX_BUFFER_BASE; //Pointer to DDR memory used in DMA transactions IP->DDR

	xil_printf("\r\n--- initDMA --- \r\n");
	init_dma_engine();


#ifdef FILE_NAME
	xil_printf("\r\n--- Filling DDR memory with %d pixels --- \r\n",
				  (data_from_hfile_byte_size/sizeof(uint32_t))/NUM_AXI_TRANSACTIONS_PER_PIXEL);
	memcpy((void *)(TX_BUFFER_BASE), data_from_hfile, data_from_hfile_byte_size);
#else
	u32 *pixelData = (u32 *)PIXELDATA_BASE;

	#ifdef PATTERN_GEN_TPT
		xil_printf("\r\n--- Generating pattern IRAP with %d pixels in DDR memory --- \r\n", NUM_PIXELS_PER_INDEX*NUM_INDEXES);
		TPT_region regions[5] =
	//pattern exemple de l'IRAP (Ref 0069-Doc V4.2)sur 99 indexes
//		{
//			{1024,3,0,4},
//			{1280,4,256,9},
//			{3584,10,0,1},
//			{3072,2,-512,4},
//			{1024,14,0,1}
//		};


	//estimation courbe dataset IFCA pixel 28 sur 12692 indexes
//		{
//			{37000,100,0,35},
//			{37000,2,100,5},
//			{37400,3,0,10},
//			{37400,30,-40,10},
//			{37000,100,0,88}
//		};
	//estimation courbe IFCA pour test a l'IRAP sur 21683 indexes
			{
				{256,21200,0,1},
				{256,0,512,16},
				{7936,32,0,1},
				{7936,0,-96,49},
				{3328,0,0,384}
			};
	//IRAP's pseduoPulse only positive values sur 9376 indexes
//			{
//				{7168,8192,0,1},
//				{7168,0,-96,64},
//				{1024,32,0,1},
//				{1024,0,48,64},
//				{4096,0,3,1024}
//			};


		int sum_check=0;
		for(int i=0;i<5;i++)
		{
			sum_check += (regions[i].b+1)*regions[i].N;
		}
		if(sum_check != NUM_INDEXES)
		{
			xil_printf("error pattern generator sum((b+1)*N) = %i values does not match num indexes %i \r\n", sum_check, NUM_INDEXES);
			goto Done;
		}
		pattern_generator_TPT(regions,pixelData, NUM_PIXELS_PER_INDEX, 4);
	#else
		int flip_flag = 1;
		xil_printf("\r\n--- Generating pattern with %d pixels in DDR memory --- \r\n", NUM_PIXELS_PER_INDEX*NUM_INDEXES);
		xil_printf("    Inversion of even pixels: %d\r\n", flip_flag);
		pattern_generator(pixelData, NUM_PIXELS_PER_INDEX, NUM_INDEXES, flip_flag);
		//pattern_generator_inc(pixelData, NUM_PIXELS_PER_INDEX, NUM_INDEXES, NUM_AXI_TRANSACTIONS_PER_PIXEL);
	#endif
	add_CCwords(TxBufferPtr, pixelData, NUM_PIXELS_PER_INDEX, NUM_INDEXES, NUM_AXI_TRANSACTIONS_PER_PIXEL);
#endif
	xil_printf("--- Configuring IP --- \r\n");
	//Configuring how many pixels to be read until IP finished status rises
	EMUL_DEMUX_SM_mWriteReg(BASE_ADDR, NUMPIXELSTOREAD_REG_OFFSET, NUMPIXELSTOBEREAD);
	//configuring number of pixels per frame to consider
	EMUL_DEMUX_SM_mWriteReg(BASE_ADDR, NUMPIXELPERFRAME_REG_OFFSET, NUM_PIXELS_PER_INDEX);



	// Flush the buffers before DMA transfer, in case Data Cache is enabled
	// NOTE: done here since same data is transmitted at each cycle. If at each transmission data is different,
	// make sure to flush the cache between transmissions.
	xil_printf("--- Flushing DMA cache --- \r\n");
	Xil_DCacheFlushRange((UINTPTR)TxBufferPtr, TOTAL32BITWORDS*sizeof(uint32_t));
	Xil_DCacheFlushRange((UINTPTR)RxBufferPtr, TOTAL32BITWORDS*sizeof(uint32_t));
	Xil_DCacheInvalidateRange((UINTPTR)BASE_ADDR + STATUS_REG_OFFSET, sizeof(uint32_t));

	do{ //infinite loop
		int n_loops = 0;

		//XTime_GetTime(&tStart);

		do{ //NUM_LOOPS_IN_1SEC loops
			n_loops++;
			//return IP to IDLE state:
			//Note: First iteration doesnt need this, declared here so that we have a visual feedback
			// from the LED XMOD
			xil_printf("--- Returning to IDLE --- \r\n");
			EMUL_DEMUX_SM_mWriteReg(BASE_ADDR, BASE_REG_OFFSET, BUTTON_PRESS_VAL);
			EMUL_DEMUX_SM_mWriteReg(BASE_ADDR, BASE_REG_OFFSET, 0x00000000);
			xil_printf("\r\n--- Clearing destination memory --- \r\n");
			memset(RxBufferPtr, 0, TOTAL32BITWORDS*sizeof(uint32_t));


			//emulDemux_status = EMUL_DEMUX_SM_mReadReg(BASE_ADDR, STATUS_REG_OFFSET);
			//xil_printf("EmulDemux IP status before starting: 0x%08X\r\n", emulDemux_status);
			//sleep(1); //can be removed
			// Enable Emul Demux IP by simulating a button press via axi lite (0->1->0)
			xil_printf("--- Starting EmulDemux IP --- \r\n");
			EMUL_DEMUX_SM_mWriteReg(BASE_ADDR, BASE_REG_OFFSET, BUTTON_PRESS_VAL);
			EMUL_DEMUX_SM_mWriteReg(BASE_ADDR, BASE_REG_OFFSET, 0x00000000);
			/* Perfom DMA transfer */
			//xil_printf("\n--- Starting DMA transfer %d pixels --- \r\n", TOTAL32BITWORDS/NUM_AXI_TRANSACTIONS_PER_PIXEL);
			//XTime_GetTime(&tStart);
			//Also, crashes after second iteration if Rx activated
//			dmaStatus = XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR) RxBufferPtr,
//							TOTAL32BITWORDS*sizeof(uint32_t), XAXIDMA_DEVICE_TO_DMA);
//			if (dmaStatus != XST_SUCCESS)
//			{
//				xil_printf("\r\n--- Failed Rx DMA transfer. Status = %d --- \r\n", dmaStatus);
//				goto Done;
//			}
			//OBS.: the RX DMA inst should be processed right before TX DMA inst, since firmware
			//retransmits right away the stream back to the PS. Otherwise, samples lost when upstreamed back to PS
			//Also, crashes after second iteration
			dmaStatus = XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR) TxBufferPtr,
						TOTAL32BITWORDS*sizeof(uint32_t), XAXIDMA_DMA_TO_DEVICE);
			if (dmaStatus != XST_SUCCESS)
			{
				xil_printf("\r\n--- Failed Tx DMA transfer. Status = %d --- \r\n", dmaStatus);
				goto Done;
			}

			//Polling IP until its finished
			//xil_printf("\n--- Waiting IP... --- \r\n");
			do{
				debugInfo = EMUL_DEMUX_SM_mReadReg(BASE_ADDR, DEBUGINFO_REG_OFFSET);
				print_debug_info(debugInfo);
				emulDemux_status = EMUL_DEMUX_SM_mReadReg(BASE_ADDR, STATUS_REG_OFFSET);
			}while ((emulDemux_status & STATUS_DONE) == 0);
			//XTime_GetTime(&tEnd);

			/*
			 * Wait for TX done or timeout (28/01: always worked before, changed nothing related to it in PL and TxDone behavior depends on .xsa loaded, not reliable)
			 */
			//TxDone = 1; //should be set in the interrupt not here
			dmaStatus = Xil_WaitForEventSet(POLL_TIMEOUT_COUNTER, NUMBER_OF_EVENTS, &TxDone);
			if (dmaStatus != XST_SUCCESS)
			{
				xil_printf("DMA Transmit Event failed %d\r\n", dmaStatus);
				goto Done;
			}
			//Wait for RX done is crashing now
//			dmaStatus = Xil_WaitForEventSet(POLL_TIMEOUT_COUNTER, NUMBER_OF_EVENTS, &RxDone);
//			if (dmaStatus != XST_SUCCESS)
//			{
//				xil_printf("Receive failed %d\r\n", dmaStatus);
//				goto Done;
//			}
			//check_data(TxBufferPtr, RxBufferPtr,TOTAL32BITWORDS);

			/* Invalidate the DestBuffer before receiving the data, in case the
			 * Data Cache is enabled
			 */

			//Xil_DCacheInvalidateRange((UINTPTR)RxBufferPtr, TOTAL32BITWORDS*sizeof(uint32_t));
			//Breakpoint tip: verify here in DDR memory if data is looped back correctly

			xil_printf("EmulDemux IP status after finished:  0x%08X\r\n", emulDemux_status);
			xil_printf("Successfully ran IP module \r\n");
			//elapsed_time_s = (double)(tEnd - tStart) / (double)COUNTS_PER_SECOND;
			//printf("Elapsed  time: %f seconds\n", elapsed_time_s);
			//printf("Expected time: %f seconds\n", expected_dataset_time_s);
			//printf("Expected pixel count: %d\n", NUMPIXELSTOBEREAD);


			//Read debug info from IP
			debugInfo = EMUL_DEMUX_SM_mReadReg(BASE_ADDR, DEBUGINFO_REG_OFFSET);
			print_debug_info(debugInfo);

			read_log_timestamps();

			//sleep(SLEEP_TIME_S); //control here amount of time between loops

		}while(n_loops < NUM_LOOPS_IN_1SEC);

//		XTime_GetTime(&tEnd);
//		elapsed_time_s = (double)(tEnd - tStart) / (double)COUNTS_PER_SECOND;
//		printf("Elapsed time after %d loops: %f seconds\n", NUM_LOOPS_IN_1SEC, elapsed_time_s);
//		printf("Expected time: %f seconds\n", NUM_LOOPS_IN_1SEC*expected_dataset_time_s);
		xil_printf("Sent %d loops of the dataset\r\n\n", NUM_LOOPS_IN_1SEC);
		sleep(SLEEP_TIME_S);
	}while(1);

Done:
	xil_printf("--- Exiting main() --- \r\n");
	/* Disable TX and RX Ring interrupts and return success */
	DisableIntrSystem(&Intc, TX_INTR_ID, RX_INTR_ID);
    cleanup_platform();
    return 0;
}


void print_startup_info()
{
	xil_printf("\r\n\r\n--- Emul Demux Test --- \r\n");
	xil_printf("--- IP version: emul_demux_SM --- \r\n");
#ifdef FILE_NAME
	xil_printf("--- Dataset Info ---\r\n");
	xil_printf("    File: %s\r\n", FILE_NAME);
	xil_printf("    Description: %s\r\n", DATASET_INFO);
#endif
	xil_printf("    Samples: %d\r\n", NUM_INDEXES);
	xil_printf("    Pixels: %d\r\n", NUM_PIXELS_PER_INDEX);
	xil_printf("--- The system waits %d seconds until repeating the transmission\r\n", SLEEP_TIME_S);
	xil_printf("\r\n--- Entering main() --- \r\n");
}

void print_debug_info(uint32_t debugInfo)
{
//	xil_printf("Debug info current: 0x%08X=> Status: %d Cnt: %d \r\n", debugInfo,
//											(debugInfo >> 28) & 0x8, debugInfo & 0x00FFFFFF);
	xil_printf("Debug info : 0x%08X => Status: %d, Error: %d, Cnt: %d\r\n",
	            debugInfo,
	            (debugInfo >> 28) & 0xF,        // Extract the first 4 bits
	            (debugInfo >> 24) & 0xF,        // Extract the next 4 bits
	            debugInfo & 0x00FFFFFF);        // Extract the remaining 24 bits
}

//check each TX and RX address
void check_data(unsigned int* addr1, unsigned int* addr2, size_t len)
{
    bool is_valid = true;

    for (size_t i = 0; i < len; i++)
    {
        if (addr1[i] != addr2[i])
        {
            is_valid = false;
            printf("Mismatch at index %zu: addr1[%zu] = 0x%X, addr2[%zu] = 0x%X\n",
                   i, i, addr1[i], i, addr2[i]);
        }
        //printf("index %zu: addr1[%zu] = 0x%X, addr2[%zu] = 0x%X\n",
        //        i, i, addr1[i], i, addr2[i]);
    }

    if (is_valid)
    {
        printf("\nData is valid: all %ld source and destination values match!!!!!\n", len);
    } else
    {
        printf("Data mismatch detected.\n");
    }
}

//print all the frames timestamps in log buffer
void read_log_timestamps()
{
	uint32_t log_buff_size = 10;
	uint32_t i_timestamp_lsb;
	uint32_t i_timestamp_msb;
	uint32_t i_frame_id;
	uint32_t i_status;
	long unsigned timestamp_ns = 0;
	xil_printf("---------Log buff read------------\r\n");
	for(uint32_t i=0;i<log_buff_size; i++)
	{
		//AXI write pointer value to read of PL circular buffer
		EMUL_DEMUX_SM_mWriteReg(BASE_ADDR, LOGBUF_RPTR_REG_OFFSET, i);
		//AXI read values
		i_timestamp_lsb = EMUL_DEMUX_SM_mReadReg(BASE_ADDR, LOGBUF_TIMESTAMPLSB_REG_OFFSET);
		i_timestamp_msb = EMUL_DEMUX_SM_mReadReg(BASE_ADDR, LOGBUF_TIMESTAMPMSB_REG_OFFSET);
		i_frame_id =      EMUL_DEMUX_SM_mReadReg(BASE_ADDR, LOGBUF_FRAMENUM_REG_OFFSET);
		i_status =	      EMUL_DEMUX_SM_mReadReg(BASE_ADDR, LOGBUF_STATUS_REG_OFFSET);
		timestamp_ns = (((uint64_t)i_timestamp_msb << 32) | i_timestamp_lsb);
		timestamp_ns = timestamp_ns*16;
		xil_printf("[%03u] Frame ID: %04u Timestamp: %20lu Status: 0x%08X \r\n",i, i_frame_id,
				timestamp_ns, i_status);

		//print_debug_info(i_status);
	}
	//print_debug_info(i_status);
}





// backup code
////----------------------------------------------------------------------------------------
////----------------------------------------------------------------------------------------
////----------------Test application for the emul_demux ------------------------------------
////----------------------------------------------------------------------------------------
//int main()
//{
//    init_platform();
//	xil_printf("\r\n\r\n--- Emul Demux Test --- \r\n");
//	xil_printf("--- IP version: emul_demux_SM --- \r\n");
//	xil_printf("--- Entering main() --- \r\n");
//
//
//	uint32_t debugInfo;
//    XTime tStart, tEnd;
//    double elapsed_time_s = 0.0;
//    double expected_dataset_time_s = NUMPIXELSTOBEREAD*(((160.0/1000)/1000)/1000);
//
//	u32 *TxBufferPtr = (u32 *)TX_BUFFER_BASE; //Pointer to DDR memory used in DMA transactions
//	u32 *RxBufferPtr = (u32 *)RX_BUFFER_BASE;
//
//	xil_printf("\r\n--- initDMA --- \r\n");
//	init_dma_engine();
//
//
//	do{ //infinite loop
//		XTime_GetTime(&tStart);
//		do{
//			//TODO: how to guarantee memory region will not be touched by system?
//
//			//xil_printf("\r\n--- Generating data in DDR memory --- \r\n");
//			//pattern_generator_update(TxBufferPtr, NUM_PIXELS_PER_INDEX, NUM_INDEXES);
//			//xil_printf("\r\n--- Clearing destination memory --- \r\n");
//			//memset(RxBufferPtr, 0, TOTAL32BITWORDS*sizeof(uint32_t));
//			//pattern_generator_inc_update(TxBufferPtr, NUM_PIXELS_PER_INDEX, NUM_INDEXES);
//			xil_printf("\r\n--- Filling DDR memory with %d pixels --- \r\n",
//					  (data_from_hfile_byte_size/sizeof(uint32_t))/NUM_AXI_TRANSACTIONS_PER_PIXEL);
//			memcpy((void *)TX_BUFFER_BASE, data_from_hfile, data_from_hfile_byte_size);
//
//			// Flush the buffers before DMA transfer, in case Data Cache is enabled
//			Xil_DCacheFlushRange((UINTPTR)TxBufferPtr, TOTAL32BITWORDS*sizeof(uint32_t));
//			//Xil_DCacheFlushRange((UINTPTR)RxBufferPtr, TOTAL32BITWORDS*sizeof(uint32_t));
//			Xil_DCacheInvalidateRange((UINTPTR)BASE_ADDR + STATUS_REG_OFFSET, sizeof(uint32_t));
//
//
//			uint32_t emulDemux_status = EMUL_DEMUX_SM_mReadReg(BASE_ADDR, STATUS_REG_OFFSET);
//			xil_printf("EmulDemux IP status before starting: 0x%08X\r\n", emulDemux_status);
//			//Configuring how many pixels to be read until IP finished status rises
//			EMUL_DEMUX_SM_mWriteReg(BASE_ADDR, NUMPIXELSTOREAD_REG_OFFSET, NUMPIXELSTOBEREAD);
//			//sleep(1); //can be removed
//			// Enable Emul Demux IP by simulating a button press via axi lite (0->1->0)
//			// The D4 led from the XMOD2 JTAG adapter is connected to the IP status register
//			xil_printf("--- Starting EmulDemux IP --- \r\n");
//			EMUL_DEMUX_SM_mWriteReg(BASE_ADDR, BASE_REG_OFFSET, BUTTON_PRESS_VAL);
//			EMUL_DEMUX_SM_mWriteReg(BASE_ADDR, BASE_REG_OFFSET, 0x00000000);
//
//
//			/* Perfom DMA transfer */
//			xil_printf("--- Starting DMA transfer %d pixels --- \r\n", TOTAL32BITWORDS/NUM_AXI_TRANSACTIONS_PER_PIXEL);
//			int dmaStatus;
//			//XTime_GetTime(&tStart);
//	//		dmaStatus = XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR) RxBufferPtr,
//	//						TOTAL32BITWORDS*sizeof(uint32_t), XAXIDMA_DEVICE_TO_DMA);
//	//		if (dmaStatus != XST_SUCCESS)
//	//		{
//	//			xil_printf("\r\n--- Failed Rx DMA transfer. Status = %d --- \r\n", dmaStatus);
//	//			goto Done;
//	//		}
//			dmaStatus = XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR) TxBufferPtr,
//							TOTAL32BITWORDS*sizeof(uint32_t), XAXIDMA_DMA_TO_DEVICE);
//			if (dmaStatus != XST_SUCCESS)
//			{
//				xil_printf("\r\n--- Failed Tx DMA transfer. Status = %d --- \r\n", dmaStatus);
//				goto Done;
//			}
//	//		dmaStatus = XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR) RxBufferPtr,
//	//						TOTAL32BITWORDS*sizeof(uint32_t), XAXIDMA_DEVICE_TO_DMA);
//	//		if (dmaStatus != XST_SUCCESS)
//	//		{
//	//			xil_printf("\r\n--- Failed Rx DMA transfer. Status = %d --- \r\n", dmaStatus);
//	//			goto Done;
//	//		}
//
//
//			//Polling IP until its finished
//			//xil_printf("\n--- Waiting IP... --- \r\n");
//			do{
//				//debugInfo = EMUL_DEMUX_SM_mReadReg(BASE_ADDR, DEBUGINFO_REG_OFFSET);
//				//xil_printf("Debug info current: 0x%08X=> Status: %d Cnt: %d \r\n", debugInfo, (debugInfo >> 29) & 0x7, debugInfo & 0x1FFFFFFF);
//				emulDemux_status = EMUL_DEMUX_SM_mReadReg(BASE_ADDR, STATUS_REG_OFFSET);
//			}while ((emulDemux_status & STATUS_DONE) == 0);
//			//XTime_GetTime(&tEnd);
//
//			/*
//			 * Wait for TX done or timeout
//			 */
//			dmaStatus = Xil_WaitForEventSet(POLL_TIMEOUT_COUNTER, NUMBER_OF_EVENTS, &TxDone);
//			if (dmaStatus != XST_SUCCESS)
//			{
//				xil_printf("Transmit failed %d\r\n", dmaStatus);
//				goto Done;
//			}
//	//		dmaStatus = Xil_WaitForEventSet(POLL_TIMEOUT_COUNTER, NUMBER_OF_EVENTS, &RxDone);
//	//		if (dmaStatus != XST_SUCCESS)
//	//		{
//	//			xil_printf("Receive failed %d\r\n", dmaStatus);
//	//			goto Done;
//	//		}
//
//			//check_data(TxBufferPtr, RxBufferPtr,TOTAL32BITWORDS);
//			/* Invalidate the DestBuffer before receiving the data, in case the
//			 * Data Cache is enabled
//			 */
//			//Xil_DCacheInvalidateRange((UINTPTR)RxBufferPtr, TOTAL32BITWORDS*sizeof(uint32_t));
//			//verify in DDR memory if data is looped back correctly
//
//			xil_printf("EmulDemux IP status after finished:  0x%08X\r\n", emulDemux_status);
//			xil_printf("Successfully ran IP module \r\n");
//			//elapsed_time = (double)(tEnd - tStart) / (double)COUNTS_PER_SECOND;
//			//printf("Elapsed  time: %f seconds\n", elapsed_time);
//			printf("Expected time: %f seconds\n", expected_dataset_time_s);
//			printf("Expected pixel count: %d\n", NUMPIXELSTOBEREAD);
//
//
//			//Read debug info from IP
//			debugInfo = EMUL_DEMUX_SM_mReadReg(BASE_ADDR, DEBUGINFO_REG_OFFSET);
//			xil_printf("Debug info after: 0x%08X=> Status: %d Cnt: %d \r\n", debugInfo, (debugInfo >> 29) & 0x7, debugInfo & 0x1FFFFFFF);
//
//			//sleep(5); //control here amount of time between loops
//			//return IP to IDLE state:
//			EMUL_DEMUX_SM_mWriteReg(BASE_ADDR, BASE_REG_OFFSET, BUTTON_PRESS_VAL);
//			EMUL_DEMUX_SM_mWriteReg(BASE_ADDR, BASE_REG_OFFSET, 0x00000000);
//			XTime_GetTime(&tEnd);
//			elapsed_time_s = (double)(tEnd - tStart) / (double)COUNTS_PER_SECOND;
//			printf("Elapsed  time: %f seconds\n", elapsed_time_s);
//
//		}while(elapsed_time_s + expected_dataset_time_s < 1.00);
//		sleep(10);
//	}while(1);
//
//Done:
//	xil_printf("--- Exiting main() --- \r\n");
//	/* Disable TX and RX Ring interrupts and return success */
//	DisableIntrSystem(&Intc, TX_INTR_ID, RX_INTR_ID);
//    cleanup_platform();
//    return 0;
//}











////----------------------------------------------------------------------------------------
////-----------IRAP pattern generator stimuli for functionality testing---------------------
////----------------------------------------------------------------------------------------
//typedef struct
//{
//    int a;  // Value of the pattern at the beginning of the region
//    int b;  // Number of frames per step (a frame is a set of 48 pixels)
//    int c;  // Increment between two successive steps
//    int N;  // Number of steps in the region
//} TPT_region;
//
//#define PIXELS_PER_FRAME NUM_PIXELS_PER_INDEX
//void pattern_generator_TPT(TPT_region regions[5], uint16_t pattern[][PIXELS_PER_FRAME])
//{
//	int frame_cnt = 0;
//	//region loop
//	for(int i_region=0; i_region < 5; i_region++)
//	{
//		uint16_t value = regions[i_region].a; //start value
//		//step loop
//		for(int i_steps=0; i_steps < regions[i_region].N; i_steps++)
//		{
//			//frame loop
//			for(int i_frames=0; i_frames < regions[i_region].b; i_frames++)
//			{
//				//all pixels in frame have same value
//				for(int i_pixel=0; i_pixel < PIXELS_PER_FRAME; i_pixel++)
//				{
//					pattern[frame_cnt][i_pixel] = value;
//				}
//				frame_cnt++;
//			}
//			// region 3 is decremental
//			value += (i_region == 3) ? -regions[i_region].c : regions[i_region].c;
//		}
//	}
//}

////----------------------------------------------------------------------------------------
////----------------------------------------------------------------------------------------
