Feature: Batch file validation for GIC-4587

#  Properties	          Description	               Mandatory(Y/N)	PegaSource	DatabaseTable	    Database Field	                           Comments
#  .CUST_ID	             Customer ID	                Y	             Database	CUST_DIM	        CIS_CUST_ID
#  .PRIM_EMAIL_ADDR	     Email Address	                Y	             Database	CUST_DIM	        PRIM_EMAIL_ADDR
#  .INDV_TTL_NM	         Individual Title	            N	             Database	CUST_DIM	        INDV_TTL_NM
#  .INDV_FRST_NM	     Individual First Name	        Y	             Database	CUST_DIM	        INDV_FRST_NM
#  .INDV_LAST_NM	     Individual Last Name	        N	             Database	CUST_DIM	        INDV_LAST_NM
#  .LanguageCode	     Language Code	                Y	             Database	CUST_DIM	        LANG_CD	Format:                         Uppercase first letter (i.e. 'E')
#  .OfferExpiry	         Offer expiry date	            N	             Database 	ACCT_DIM	        CLI_OFR_EXP_DT  	                    Earliest expiry from all eligible customer/account. Example: 20200506 (need to remove dashes
#                               +
#                           Strategy
#  Offer Code	         OfferID (pyName)	            Y	             Action	    pyName	            Last 4 digits (remove 'CIE')
#  Campaign Code	     Campaign code	                Y	             Action	    Campaign Code
#  .CreativeID	         CreativeID	                    Y	             Action  	Creative ID		                                            Default will be from Action. Strategy can overwrite if there is segmentation logic.
#                           or
#                         Strategy
#  .pxInteractionID	     Pega's Interaction ID	        Y	             Strategy	Foundation
#  Response tracking code Pega's Response tracking code	Y	             Strategy	Foundation	        InteractionID+'_'pyName
#  Mail ID	             Mail ID	                    N	             Strategy	Unique Number		                                        Need to be the same as DM file
#                                                                                      starting from
#                                                                                      2 Alpha characters
#                                                                                      + 6 Numeric values
#  .EmailSpecificText	    Email Specific Text (Name / Value pair)
#  Example: “AcctNum:” + .ACCT_NUM + “|LastName:”+”.INDV_LAST_NM+”|AcctBal:”+.ACCT_BAL_AMT

  @GICRenewalEmail @GICRenewalEmail_BatchFile_Positive_Validation_4587 @4587 @Email @ET14061
  Scenario Outline: GIC_ET14061_4587_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "GIC_EML" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And get ddr records data from ddr table
    And get mail Id from ddr records
    And get gic wave expiry date from ddr records
    And get gic file delivery date from ddr records
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    And read gic email "BatchEmailGIC" extract file customer offer details
    Then validate gic offer details in batch file against database and pega
    Examples:
      | Test cases                                                                                                                                                       |
      | 4587_CUST_AGE=18                                                                                                                                                 |
      | 4587_LANG_CD=E                                                                                                                                                   |
      | 4587_LANG_CD=EN                                                                                                                                                  |
      | 4587_LANG_CD=F                                                                                                                                                   |
      | 4587_LANG_CD=FR                                                                                                                                                  |
      | 4587_LANG_CD = e                                                                                                                                                 |
      | 4587_LANG_CD = en                                                                                                                                                |
      | 4587_LANG_CD = f                                                                                                                                                 |
      | 4587_LANG_CD = fr                                                                                                                                                |
      | 4587_DO_NOT_EMAIL_F=Y                                                                                                                                            |
      | 4587_DO_NOT_EMAIL_F=NULL                                                                                                                                         |
      | 4587_CASL_CONSENT_F=N                                                                                                                                            |
      | 4587_CASL_CONSENT_F=Y                                                                                                                                            |
      | 4587_SRC_SYS_PRD_CD=NRS                                                                                                                                          |
      | 4587_SRC_SYS_PRD_CD=TFSSB                                                                                                                                        |
      | 4587_SRC_SYS_PRD_CD=RRSSB                                                                                                                                        |
      | 4587_SRC_SYS_PRD_CD=NRSPR                                                                                                                                        |
      | 4587_SRC_SYS_PRD_CD=TFS                                                                                                                                          |
      | 4587_SRC_SYS_PRD_CD=RRS                                                                                                                                          |
      | 4587_CRNT_BAL_AMT=$500                                                                                                                                           |
      | 4587_multiple GICs then prioritised based on earliest mat_dt                                                                                                     |
      | 4587_multiple GICs then prioritised based on highest maturtiy amount                                                                                             |
      | 4587_multiple GICs then prioritised based on  lowest certficate number                                                                                           |
      | 4587_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>$100K                                                                                                   |
      | 4587_GDD_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is equal to calendar day 1 of the particular month && CASL_CONSENT_F = Y            |
      | 4587_GDD_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is in between calendar day 1 and 7 of the particular month && CASL_CONSENT_F = Y    |
      | 4587_GDD_ SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is equal to calendar day 7 of the particular month && CASL_CONSENT_F = Y           |
      | 4587_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is equal to calendar day 8 of the particular month && CASL_CONSENT_F = Y            |
      | 4587_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  &&  MAT_DT is in between calendar day 8 and 14 of the particular month && CASL_CONSENT_F = Y  |
      | 4587_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is equal to calendar day 14 of the particular month && CASL_CONSENT_F = Y           |
      | 4587_GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is equal to calendar day 15 of the particular month && CASL_CONSENT_F = Y           |
      | 4587_GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  &&  MAT_DT is in between calendar day 15 and 22 of the particular month && CASL_CONSENT_F = Y |
      | 4587_ GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is equal to calendar day 22 of the particular month && CASL_CONSENT_F = Y          |
      | 4587_GGG_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  &&MAT_DT is equal to calendar day 23 of the particular month && CASL_CONSENT_F = Y            |
      | 4587_GGG_ SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is greater than calendar day 23 of the particular month && CASL_CONSENT_F = Y      |
      | 4587_GDD_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is equal to calendar day 1 of the particular month && CASL_CONSENT_F = N            |
      | 4587_GDD_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is in between calendar day 1 and 7 of the particular month && CASL_CONSENT_F = N    |
      | 4587_GDD_ SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is equal to calendar day 7 of the particular month && CASL_CONSENT_F = N           |
      | 4587_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is equal to calendar day 8 of the particular month && CASL_CONSENT_F = N            |
      | 4587_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  &&  MAT_DT is in between calendar day 8 and 14 of the particular month && CASL_CONSENT_F = N  |
      | 4587_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is equal to calendar day 14 of the particular month && CASL_CONSENT_F = N           |
      | 4587_GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is equal to calendar day 15 of the particular month && CASL_CONSENT_F = N           |
      | 4587_GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  &&  MAT_DT is in between calendar day 15 and 22 of the particular month && CASL_CONSENT_F = N |
      | 4587_ GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is equal to calendar day 22 of the particular month && CASL_CONSENT_F = N          |
      | 4587_GGG_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  &&MAT_DT is equal to calendar day 23 of the particular month && CASL_CONSENT_F = N            |
      | 4587_GGG_ SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is greater than calendar day 23 of the particular month && CASL_CONSENT_F = N      |
      | 4587_PLN_ACCT_CD_MASTER=NRS                                                                                                                                      |
      | 4587_PLN_ACCT_CD_MASTER=TFSA                                                                                                                                     |
      | 4587_PLN_ACCT_CD_MASTER=LRSP                                                                                                                                     |
      | 4587_PLN_ACCT_CD_MASTER=RLSP                                                                                                                                     |
      | 4587_PLN_ACCT_CD_MASTER=RRSP                                                                                                                                     |
      | 4587_PLN_ACCT_DLR=BNS                                                                                                                                            |
      | 4587_PLN_ACCT_DLR=SSI                                                                                                                                            |


  @GICRenewalEmail @GICRenewalEmail_BatchFile_Negative_Validation_4587 @4587 @Email @ET14061
  Scenario Outline: GIC_ET14061_4587_EMAIL Validate batch file details against database and pega for Negative test cases
    Given load data from "GIC_EML" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And get ddr records data from ddr table
    And get gic file delivery date from ddr records
    And read gic email "BatchEmailGIC" extract file customer offer details
    Then validate GIC email offer details should not display in batch file
    Examples:
      | Test cases                                                       |
      | 4587_N_PRIM_CNTRY_CD!  = CA                                      |
      | 4587_N_PRIM_CNTRY_CD = NULL                                      |
      | 4587_N_CUST_TP_CD != PSNL                                        |
      | 4587_N_CUST_TP_CD =  NULL                                        |
      | 4587_N_CUST_AGEless than 18                                      |
      | 4587_N_CUST_AGE Equal to NULL                                    |
      | 4587_N_Deceased_F=Y                                              |
      | 4587_N_Deceased_F = NULL                                         |
      | 4587_N_LANG_CD = K                                               |
      | 4587_N_LANG_CD = NE                                              |
      | 4587_N_LANG_CD = NULL                                            |
      | 4587_N_MRKTBLE_F = N                                             |
      | 4587_N_MRKTBLE_F = NULL                                          |
      | 4587_N_PRIM_EMAIL_ADDR IS  NULL                                  |
      | 4587_N_PRIM_EMAIL_ADDR IS  BLANK                                 |
      | 4587_N_INDV_FRST_NM is BLANK                                     |
      | 4587_N_INDV_FRST_NM is NULL                                      |
      | 4587_N_INDV_LAST_NM=NULL                                         |
      | 4587_N_INDV_LAST_NM=BLANK                                        |
      | 4587_N_VLD_EMAIL_F=N                                             |
      | 4587_N_VLD_EMAIL_F=NULL                                          |
      | 4587_N_SRC_SYS_PRD_CD=01                                         |
      | 4587_N_SRC_SYS_PRD_CD is NULL                                    |
      | 4587_N_PRD_CD_MASTER=NULL                                        |
      | 4587_N_PRD_CD_MASTER is blank                                    |
      | 4587_N_PRD_CD_MASTER=ROC                                         |
      | 4587_N_PRD_ACCT_STAT_CD!=A                                       |
      | 4587_N_PRD_ACCT_STAT_CD=NULL                                     |
      | 4587_N_PLN_ACCT_CD_MASTER=RDSP                                   |
      | 4587_N_MAT_DT< CURRENT MONTH+2 MONTHS                            |
      | 4587_N_MAT_DT=NULL                                               |
      | 4587_N_SRC_ACCT_STAT_CD=Not Active                               |
      | 4587_N_SRC_ACCT_STAT_CD=NULL                                     |
      | 4587_N_MAT_VAL_AMT=$0                                            |
      | 4587_N_ACCT_SUBSYS_ID!=UF                                        |
      | 4587_N_ACCT_SUBSYS_ID=NULL                                       |
      | 4587_N_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<$100K |
      | 4587_N_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=$100K |
      | 4587_N_PRIMARY_ACCT_HOLDER_FLAG=N                                |
      | 4587_N_PRIMARY_ACCT_HOLDER_FLAG=NULL                             |
      | 4587_N_CASL_CONSENT_F=NULL                                       |
      | 4587_N_PRD_CD_MASTER=CT                                          |
      | 4587_N_PRD_CD_MASTER=CU                                          |
      | 4587_N_PRD_CD_MASTER=CV                                          |
      | 4587_N_PRD_CD_MASTER=CTI                                         |
      | 4587_N_PRD_CD_MASTER=CUI                                         |
      | 4587_N_PRD_CD_MASTER=CVI                                         |
      | 4587_N_PLN_ACCT_CD_MASTER = RESP                                 |
      | 4587_N_PLN_ACCT_CD_MASTER = RRIF                                 |
      | 4587_N_PRD_CD_MASTER=TU                                          |
      | 4587_N_PRD_CD_MASTER=TUI                                         |
      | 4587_N_PLN_OWNERSHIP_CD=2                                        |
      | 4587_N_PLN_OWNERSHIP_CD=3                                        |
      | 4587_N_IN_TRUST_FOR_IND_CD=1                                     |
      | 4587_N_PRD_CD_MASTER=ACC                                         |
      | 4587_N_PRD_CD_MASTER=FLE                                         |
      | 4587_N_PRD_CD_MASTER=UTL                                         |
      | 4587_N_CRNT_BAL_AMT<500                                          |
      | 4587_N_PLN_ACCT_CD_MASTER!=(NRS,TFSA,LRSP,RLSP,RRSP)             |
      | 4587_N_PLN_ACCT_CD_MASTER=NULL                                   |
      | 4587_N_PLN_ACCT_DLR! = (BNS,SSI)                                 |
      | 4587_N_PLN_ACCT_DLR! = NULL                                      |
