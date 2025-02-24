/**
 * \file axidma_simple_intr.h
 * \brief
 * \author mb274643
 * \date Oct 2024
 *
 */

#ifndef axidma_simple_intr_h_INCLUDED
#define axidma_simple_intr_INCLUDED


/***************************** Include Files *********************************/

#include "xaxidma.h"
#include "xparameters.h"
#include "xil_exception.h"
#include "xdebug.h"
#include "xil_util.h"

#include "xscugic.h"


/************************** Constant Definitions *****************************/

/*
 * Device hardware build related constants.
 */

#define DMA_DEV_ID			XPAR_AXIDMA_0_DEVICE_ID

#define DDR_BASE_ADDR		XPAR_PSU_DDR_0_S_AXI_BASEADDR

#define MEM_BASE_ADDR		(DDR_BASE_ADDR + 0x1000000)

#define RX_INTR_ID			XPAR_FABRIC_AXIDMA_0_S2MM_INTROUT_VEC_ID
#define TX_INTR_ID			XPAR_FABRIC_AXIDMA_0_MM2S_INTROUT_VEC_ID


#define TX_BUFFER_BASE		(MEM_BASE_ADDR + 0x00100000)
#define RX_BUFFER_BASE		(MEM_BASE_ADDR + 0x0117AC00) //0x00100000 + 15000*48*3 32bit words
#define RX_BUFFER_HIGH		(MEM_BASE_ADDR + 0x024FFFFF) //not used
#define PIXELDATA_BASE		(MEM_BASE_ADDR + 0x03000000)

#define INTC_DEVICE_ID      XPAR_SCUGIC_SINGLE_DEVICE_ID

#define INTC				XScuGic
#define INTC_HANDLER		XScuGic_InterruptHandler

/* Timeout loop counter for reset
 */
#define RESET_TIMEOUT_COUNTER	10000

/* The interrupt coalescing threshold and delay timer threshold
 * Valid range is 1 to 255
 *
 * We set the coalescing threshold to be the total number of packets.
 * The receive side will only get one completion interrupt for this example.
 */

/************************** Variable Definitions *****************************/
/*
 * Device instance definitions
 */


extern XAxiDma AxiDma;		/* Instance of the XAxiDma */
#ifndef SDT
extern INTC Intc;	/* Instance of the Interrupt Controller */
#endif
/*
 * Flags interrupt handlers use to notify the application context the events.
 */
extern volatile u32 TxDone;
extern volatile u32 RxDone;
extern volatile u32 Error;


/************************** Function Prototypes ******************************/
#ifndef DEBUG
extern void xil_printf(const char *format, ...);
#endif

int init_dma_engine();
int CheckData(int Length, u8 StartValue);
void TxIntrHandler(void *Callback);
void RxIntrHandler(void *Callback);


#ifndef SDT
int SetupIntrSystem(INTC *IntcInstancePtr,
			        XAxiDma *AxiDmaPtr, u16 TxIntrId, u16 RxIntrId);
void DisableIntrSystem(INTC *IntcInstancePtr,
			        u16 TxIntrId, u16 RxIntrId);
#endif


#endif /* axidma_simple_intr_H_ */
