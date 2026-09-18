#include "./../Include/Variable.h"

#ifdef _Drv_ADC_H_
	void AccuracyModeADCOFF(void);
	void ADCAccuracyMode(void);
#else	
	void ADC_Configuration(void);
	void ADCAccuracyMode(void);
	void AccuracyModeADCOFF(void);
#endif