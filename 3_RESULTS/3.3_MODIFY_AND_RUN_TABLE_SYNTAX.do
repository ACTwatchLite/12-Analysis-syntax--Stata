

/*******************************************************************************
	ACTwatch LITE 
	Step 3.2 REVIEW, EDIT, AND RUN TABLE SYNTAX
	
********************************************************************************/
/*
Defines all analysis macros used for ACTwatch Lite analysis, including study strata, outlet types, and key indicator variables. 

The user must customized each before running analysis.

*/


/*The following flags are used throughout the syntax.
  $$$ = Breaks the do-file to remind analyst to modify syntax.
  /* EXAMPLE: */ = Sample syntax from pilot studies for reference
  
Please inital all comments/ responses and make note of changes.  
*/
  

*** .DO FILES FOR STEPS 0-2 AND STEP 3.1 SHOULD BE RUN BEFORE EXECUTING THIS .DO FILE ***		


/*Now that the local definitions have been set in step 3.1, the following .do files for each core indicator can be run. 

Each .do file will produce 4 tables: 

	I. 		National level resutls
	II. 	National level results dissagregated by urban/ rural			
	III. 	Results by strata
	IV. 	Results by strata dissagregated by urban/ rural		
	
	
The final modifications required from the user are to: 

A 	Determine what indicators are included in this analysis. 
		If any indicators have been removed, these should be commented out below using /* */ 

		
B	Within each indicator that *is* included in the study, the corresponding .do file should be reviewed 

			--> If this study does not require urban/ rural dissagregated results, 
					syntax for tables II and IV should be commented out using /* */ 
			
			--> If this study does not require results for seperate strata e.g. for each state or province, 
					syntax for tables III and IV should be commented out using /* */ 
	
Once syntax for indicators and dissagregations that are not relevant to this study have been commented out, 
the .do files in the /tables_syntax folder (also below) can be run to output data tables to excel for each indicator: 

*/ 
	
	
	$$$ review the Indicator Table for this study and (1) comment out .do files corresponding to indicators NOT included in this study; then
	$$$	review the list of 4 tables for each indicator and determine based on study design and program/ stakeholder interest which dissagregations for each indicator are needed. 
		Open each .do file and comment out any sections that are NOT needed for this analysis
	
	
**********PRIORITY INDICATORS 

*MARKET COMPOSITION 
	*	1.1	Market Composition among antimalarial-stocking outlets
			do "${resultsdir}/tables_syntax/1.1_Market Composition among antimalarial-stocking outlets.do"
			
	*	1.2	Market Composition among outlets with malaria blood-testing
			do "${resultsdir}/tables_syntax/1.2_Market Composition among outlets with blood-testing.do"
			
			
*AVAILABILITY
	*	2.1	Availability of antimalarial types in all screened outlets
			do "${resultsdir}/tables_syntax/2.1_Availability of antimalarials- screened.do"

	*	2.2	Availability of antimalarial types in all antimalarial-stocking outlets
			do "${resultsdir}/tables_syntax/2.2_Availability of antimalarials- stocking.do"

	*	2.3	Availability of malaria blood testing in all screened outlets
			do "${resultsdir}/tables_syntax/2.3_Availability of tests- screened.do"

	*	2.4	Availability of malaria blood testing in all antimalarial-stocking outlets
			do "${resultsdir}/tables_syntax/2.4_Availability of tests- stocking.do"
					
		
*VOLUMES		
	*	3.1	Median sales volume of antimalarial AETDs
			do "${resultsdir}/tables_syntax/3.1_Median sales volume of antimalarial AETDs.do"
	
	*	3.2	Median sales volume of antimalarial AETDs among outlets with any sales of that antimalarial type
			do "${resultsdir}/tables_syntax/3.2_Median sales volume of AETDs of outlets with any sales.do"
	
	*	3.3	Median sales volume of malaria blood tests
			do "${resultsdir}/tables_syntax/3.3_Median sales volume of malaria blood tests.do"

	*	3.4	Median sales volume of malaria blood tests among outlets with any sales of that test type
			do "${resultsdir}/tables_syntax/3.4_Median sales volume of tests of outlets with any sales.do"
	
*MARKET SHARE
	*	4.1	Market share of antimalarials
			do "${resultsdir}/tables_syntax/4.1_Market share of antimalarials.do"

	*	4.2	Market share of malaria blood testing overall
			do "${resultsdir}/tables_syntax/4.2_Market share of malaria blood testing overall.do"
		
	*	4.3	Market share of antimalarials by brand and manufacturer
			do "${resultsdir}/tables_syntax/4.3_Market share of antimalarials by brand-manufacturer.do"
		
		
*SALE PRICE (TO RETAIL CUSTOMERS)
	*	5.1	Sales price of antimalarial tablet AETDs to customers 
			*USD 
			do "${resultsdir}/tables_syntax/5.1a_Sales price of AETDs to customer - USD.do"
			
			*local currency 
			do "${resultsdir}/tables_syntax/5.1b_Sales price of AETDs to customer - Local currency.do"

	*	5.2	Sales price of pre-packaged ACTs to customer
			*USD 
			do "${resultsdir}/tables_syntax/5.2a_Sales price of pre-packaged ACTs - USD.do"
			
			*local currency 
			do "${resultsdir}/tables_syntax/5.2b_Sales price of pre-packaged ACTs - Local currency.do"

	*	5.3	Sales price of malaria blood testing to customers
			*USD 
			do "${resultsdir}/tables_syntax/5.3a_Sales price of tests to customer - USD.do"

			*local currency 
			do "${resultsdir}/tables_syntax/5.3b_Sales price of tests to customer - Local currency.do"

*PURCHASE PRICE (FROM SUPPLIERS)
*	6.1	Purchase price of antimalarial AETDs from suppliers 
			*USD
			*!!!!!!!!!!!!!!!!!!!!!!!!!!!!!missing 
			
			*local currency 
			do "${resultsdir}/tables_syntax/6.1b_Purchase price of AETDs - Local currency.do"
		
*	6.2	Purchase price of malaria RDTs from suppliers
			*USD
			*!!!!!!!!!!!!!!!!!!!!!!!missing 
			
			*local currency 
			do "${resultsdir}/tables_syntax/6.2b_Purchase price of RDTs - Local currency.do"

*STOCK OUTS	
	*	7.1	Stock outs of antimalarials & *	7.2	Stock outs of RDTs
	*.do file produces one table for antimalarial and RDT stock outs: 
			do "${resultsdir}/tables_syntax/7.1&2_Stock outs of antimalarials and RDTs.do"
		
		
		
		
		
		
		
**********Additional provider interview indicators	

	*AI 1-4 //ADDITIONAL INDICATOR TABLES
		
			*AI.1 product quality characteristics
		do "${resultsdir}/tables_syntax/AI.1 product quality characteristics.do"
		
			*AI.2 product quality characteristics
		do "${resultsdir}/tables_syntax/AI.2 outlet characteristics.do"
		
			*AI.3 product quality characteristics
		do "${resultsdir}/tables_syntax/AI.3 provider characteristics.do"
		
			*AI.4 product quality characteristics
		do "${resultsdir}/tables_syntax/AI.4 supplier characteristics.do"
		
	
	

	

	
	
	*************************
	*************************
	******	END 		*****
	*************************
	*************************

	
	
	
	
