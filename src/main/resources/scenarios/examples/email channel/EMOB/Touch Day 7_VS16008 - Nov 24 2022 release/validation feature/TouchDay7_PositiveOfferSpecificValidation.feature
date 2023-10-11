@EMOB_Touch7_Batch_Validation
Feature: Batch file validation for EMOB Touch Day 7

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

  @EMOB @EMOBTouchDay7_BatchFile_Positive_2437_2438_2441_IH_Validation @Workstream-4 @EMAIL @VS16008
  Scenario Outline: EMOB Touch Day-7_VS16008_EMAIL Validate batch file details against database and pega for Positive test cases for 2437,2438,2441 offer as part of nov 10 release
    Given load data from "EMOBTouch7" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "emob" extract file with batch "ProvCode;ProductCode;SubProductCode;" Email Specific Text Header
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate EMOB Welcome offer details in batch file against database and pega
    Then validate the offer details against IH
    Examples:
      | Test cases                                                         |
      | Touch7_2437_DO_NOT_SOLICIT_F=NULL_EMPLOYEE_STAFF_F=N_PRV_BNK_IND=N |
      | Touch7_2437_EMPLOYEE_STAFF_F=Null                                  |
      | Touch7_2437_BLOCK_RSN_CD and RECL_CD is BLANK                      |
      | Touch7_2437_BLOCK_RSN_CD and RECL_CD is NULL                       |
      | Touch7_2437_BLOCK_RSN_CD and RECL_CD is XH                         |
      | Touch7_2437_BLOCK_RSN_CD and RECL_CD is  C                         |
      | Touch7_2437_Prv_Bnk_Ind = Y                                        |
      | Touch7_2437_Prv_Bnk_Ind = NULL                                     |
      | Touch7_2437_EMPLOYEE_STAFF_F=Y                                     |
      | Touch7_2437_BLOCK_RSN_CD = A and RECL_CD = B                       |
      | Touch7_2437_BLOCK_RSN_CD = BLANK and RECL_CD = H                   |
      | Touch7_2437_BLOCK_RSN_CD = C and RECL_CD = BLANK                   |
      | Touch7_2437_BLOCK_RSN_CD = C and RECL_CD = NULL                    |
      | Touch7_2437_ BLOCK_RSN_CD = X and RECL_CD = BLANK                  |
      | Touch7_2437_ BLOCK_RSN_CD = X and RECL_CD = NULL                   |
      | Touch7_2437_ BLOCK_RSN_CD = BLANK and RECL_CD = H                  |
      | Touch7_2437_ BLOCK_RSN_CD = NULL and RECL_CD = H                   |
      | Touch7_2437_ BLOCK_RSN_CD = NULL and RECL_CD = NULL                |
      | Touch7_2437_NOT_AML_KYC_ne_Y                                       |
      | Touch7_2437_NOT_AML_KYC_eq_NULL                                    |
      | Touch7_2437_SRC_ACCT_STAT_CD_eq_Open                               |
      | Touch7_2437_acct_opn_dt =  5 days                                  |
      | Touch7_2437_acct_opn_dt = 8 days                                   |
      | Touch7_2437_acct_opn_dt is >=5 days and <=8 days                   |
      | Touch7_2438_DO_NOT_SOLICIT_F=NULL_EMPLOYEE_STAFF_F=N_PRV_BNK_IND=N |
      | Touch7_2438_EMPLOYEE_STAFF_F=Null                                  |
      | Touch7_2438_BLOCK_RSN_CD and RECL_CD is BLANK                      |
      | Touch7_2438_BLOCK_RSN_CD and RECL_CD is NULL                       |
      | Touch7_2438_BLOCK_RSN_CD and RECL_CD is XH                         |
      | Touch7_2438_BLOCK_RSN_CD and RECL_CD is  C                         |
      | Touch7_2438_Prv_Bnk_Ind = Y                                        |
      | Touch7_2438_Prv_Bnk_Ind = NULL                                     |
      | Touch7_2438_EMPLOYEE_STAFF_F=Y                                     |
      | Touch7_2438_BLOCK_RSN_CD = A and RECL_CD = B                       |
      | Touch7_2438_BLOCK_RSN_CD = BLANK and RECL_CD = H                   |
      | Touch7_2438_BLOCK_RSN_CD = C and RECL_CD = BLANK                   |
      | Touch7_2438_BLOCK_RSN_CD = C and RECL_CD = NULL                    |
      | Touch7_2438_ BLOCK_RSN_CD = X and RECL_CD = BLANK                  |
      | Touch7_2438_ BLOCK_RSN_CD = X and RECL_CD = NULL                   |
      | Touch7_2438_ BLOCK_RSN_CD = BLANK and RECL_CD = H                  |
      | Touch7_2438_ BLOCK_RSN_CD = NULL and RECL_CD = H                   |
      | Touch7_2438_ BLOCK_RSN_CD = NULL and RECL_CD = NULL                |
      | Touch7_2438_NOT_AML_KYC_ne_Y                                       |
      | Touch7_2438_NOT_AML_KYC_eq_NULL                                    |
      | Touch7_2438_SRC_ACCT_STAT_CD_eq_Open                               |
      | Touch7_2438_acct_opn_dt =  5 days                                  |
      | Touch7_2438_acct_opn_dt = 8 days                                   |
      | Touch7_2438_acct_opn_dt is >=5 days and <=8 days                   |
      | Touch7_2441_DO_NOT_SOLICIT_F=NULL_EMPLOYEE_STAFF_F=N_PRV_BNK_IND=N |
      | Touch7_2441_EMPLOYEE_STAFF_F=Null                                  |
      | Touch7_2441_BLOCK_RSN_CD and RECL_CD is BLANK                      |
      | Touch7_2441_BLOCK_RSN_CD and RECL_CD is NULL                       |
      | Touch7_2441_BLOCK_RSN_CD and RECL_CD is XH                         |
      | Touch7_2441_BLOCK_RSN_CD and RECL_CD is  C                         |
      | Touch7_2441_Prv_Bnk_Ind = Y                                        |
      | Touch7_2441_Prv_Bnk_Ind = NULL                                     |
      | Touch7_2441_EMPLOYEE_STAFF_F=Y                                     |
      | Touch7_2441_BLOCK_RSN_CD = A and RECL_CD = B                       |
      | Touch7_2441_BLOCK_RSN_CD = BLANK and RECL_CD = H                   |
      | Touch7_2441_BLOCK_RSN_CD = C and RECL_CD = BLANK                   |
      | Touch7_2441_BLOCK_RSN_CD = C and RECL_CD = NULL                    |
      | Touch7_2441_ BLOCK_RSN_CD = X and RECL_CD = BLANK                  |
      | Touch7_2441_ BLOCK_RSN_CD = X and RECL_CD = NULL                   |
      | Touch7_2441_ BLOCK_RSN_CD = BLANK and RECL_CD = H                  |
      | Touch7_2441_ BLOCK_RSN_CD = NULL and RECL_CD = H                   |
      | Touch7_2441_ BLOCK_RSN_CD = NULL and RECL_CD = NULL                |
      | Touch7_2441_NOT_AML_KYC_ne_Y                                       |
      | Touch7_2441_NOT_AML_KYC_eq_NULL                                    |
      | Touch7_2441_SRC_ACCT_STAT_CD_eq_Open                               |
      | Touch7_2441_acct_opn_dt =  5 days                                  |
      | Touch7_2441_acct_opn_dt = 8 days                                   |
      | Touch7_2441_acct_opn_dt is >=5 days and <=8 days                   |

  @EMOB @EMOBTouchDay7_BatchFile_Positive_2445_2446_2447_IH_Validation @Workstream-4 @EMAIL @VS16008
  Scenario Outline: EMOB Touch Day-7_VS16008_EMAIL Validate batch file details against database and pega for Positive test cases for 2445,2446,2447 offer as part of nov 10 release
    Given load data from "EMOBTouch7" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "emob" extract file with batch "ProvCode;ProductCode;SubProductCode;" Email Specific Text Header
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate EMOB Welcome offer details in batch file against database and pega
    Then validate the offer details against IH
    Examples:
      | Test cases                                                         |
      | Touch7_2445_DO_NOT_SOLICIT_F=NULL_EMPLOYEE_STAFF_F=N_PRV_BNK_IND=N |
      | Touch7_2445_EMPLOYEE_STAFF_F=Null                                  |
      | Touch7_2445_BLOCK_RSN_CD and RECL_CD is BLANK                      |
      | Touch7_2445_BLOCK_RSN_CD and RECL_CD is NULL                       |
      | Touch7_2445_BLOCK_RSN_CD and RECL_CD is XH                         |
      | Touch7_2445_BLOCK_RSN_CD and RECL_CD is  C                         |
      | Touch7_2445_Prv_Bnk_Ind = Y                                        |
      | Touch7_2445_Prv_Bnk_Ind = NULL                                     |
      | Touch7_2445_EMPLOYEE_STAFF_F=Y                                     |
      | Touch7_2445_BLOCK_RSN_CD = A and RECL_CD = B                       |
      | Touch7_2445_BLOCK_RSN_CD = BLANK and RECL_CD = H                   |
      | Touch7_2445_BLOCK_RSN_CD = C and RECL_CD = BLANK                   |
      | Touch7_2445_BLOCK_RSN_CD = C and RECL_CD = NULL                    |
      | Touch7_2445_ BLOCK_RSN_CD = X and RECL_CD = BLANK                  |
      | Touch7_2445_ BLOCK_RSN_CD = X and RECL_CD = NULL                   |
      | Touch7_2445_ BLOCK_RSN_CD = BLANK and RECL_CD = H                  |
      | Touch7_2445_ BLOCK_RSN_CD = NULL and RECL_CD = H                   |
      | Touch7_2445_ BLOCK_RSN_CD = NULL and RECL_CD = NULL                |
      | Touch7_2445_NOT_AML_KYC_ne_Y                                       |
      | Touch7_2445_NOT_AML_KYC_eq_NULL                                    |
      | Touch7_2445_SRC_ACCT_STAT_CD_eq_Open                               |
      | Touch7_2445_acct_opn_dt =  5 days                                  |
      | Touch7_2445_acct_opn_dt = 8 days                                   |
      | Touch7_2445_acct_opn_dt is >=5 days and <=8 days                   |
      | Touch7_2446_DO_NOT_SOLICIT_F=NULL_EMPLOYEE_STAFF_F=N_PRV_BNK_IND=N |
      | Touch7_2446_EMPLOYEE_STAFF_F=Null                                  |
      | Touch7_2446_BLOCK_RSN_CD and RECL_CD is BLANK                      |
      | Touch7_2446_BLOCK_RSN_CD and RECL_CD is NULL                       |
      | Touch7_2446_BLOCK_RSN_CD and RECL_CD is XH                         |
      | Touch7_2446_BLOCK_RSN_CD and RECL_CD is  C                         |
      | Touch7_2446_Prv_Bnk_Ind = Y                                        |
      | Touch7_2446_Prv_Bnk_Ind = NULL                                     |
      | Touch7_2446_EMPLOYEE_STAFF_F=Y                                     |
      | Touch7_2446_BLOCK_RSN_CD = A and RECL_CD = B                       |
      | Touch7_2446_BLOCK_RSN_CD = BLANK and RECL_CD = H                   |
      | Touch7_2446_BLOCK_RSN_CD = C and RECL_CD = BLANK                   |
      | Touch7_2446_BLOCK_RSN_CD = C and RECL_CD = NULL                    |
      | Touch7_2446_ BLOCK_RSN_CD = X and RECL_CD = BLANK                  |
      | Touch7_2446_ BLOCK_RSN_CD = X and RECL_CD = NULL                   |
      | Touch7_2446_ BLOCK_RSN_CD = BLANK and RECL_CD = H                  |
      | Touch7_2446_ BLOCK_RSN_CD = NULL and RECL_CD = H                   |
      | Touch7_2446_ BLOCK_RSN_CD = NULL and RECL_CD = NULL                |
      | Touch7_2446_NOT_AML_KYC_ne_Y                                       |
      | Touch7_2446_NOT_AML_KYC_eq_NULL                                    |
      | Touch7_2446_SRC_ACCT_STAT_CD_eq_Open                               |
      | Touch7_2446_acct_opn_dt =  5 days                                  |
      | Touch7_2446_acct_opn_dt = 8 days                                   |
      | Touch7_2446_acct_opn_dt is >=5 days and <=8 days                   |
      | Touch7_2447_DO_NOT_SOLICIT_F=NULL_EMPLOYEE_STAFF_F=N_PRV_BNK_IND=N |
      | Touch7_2447_EMPLOYEE_STAFF_F=Null                                  |
      | Touch7_2447_BLOCK_RSN_CD and RECL_CD is BLANK                      |
      | Touch7_2447_BLOCK_RSN_CD and RECL_CD is NULL                       |
      | Touch7_2447_BLOCK_RSN_CD and RECL_CD is XH                         |
      | Touch7_2447_BLOCK_RSN_CD and RECL_CD is  C                         |
      | Touch7_2447_Prv_Bnk_Ind = Y                                        |
      | Touch7_2447_Prv_Bnk_Ind = NULL                                     |
      | Touch7_2447_EMPLOYEE_STAFF_F=Y                                     |
      | Touch7_2447_BLOCK_RSN_CD = A and RECL_CD = B                       |
      | Touch7_2447_BLOCK_RSN_CD = BLANK and RECL_CD = H                   |
      | Touch7_2447_BLOCK_RSN_CD = C and RECL_CD = BLANK                   |
      | Touch7_2447_BLOCK_RSN_CD = C and RECL_CD = NULL                    |
      | Touch7_2447_ BLOCK_RSN_CD = X and RECL_CD = BLANK                  |
      | Touch7_2447_ BLOCK_RSN_CD = X and RECL_CD = NULL                   |
      | Touch7_2447_ BLOCK_RSN_CD = BLANK and RECL_CD = H                  |
      | Touch7_2447_ BLOCK_RSN_CD = NULL and RECL_CD = H                   |
      | Touch7_2447_ BLOCK_RSN_CD = NULL and RECL_CD = NULL                |
      | Touch7_2447_NOT_AML_KYC_ne_Y                                       |
      | Touch7_2447_NOT_AML_KYC_eq_NULL                                    |
      | Touch7_2447_SRC_ACCT_STAT_CD_eq_Open                               |
      | Touch7_2447_acct_opn_dt =  5 days                                  |
      | Touch7_2447_acct_opn_dt = 8 days                                   |
      | Touch7_2447_acct_opn_dt is >=5 days and <=8 days                   |

  @EMOB @EMOBTouchDay7_BatchFile_Positive_4749_4954_4955_IH_Validation @Workstream-4 @EMAIL @VS16008
  Scenario Outline: EMOB Touch Day-7_VS16008_EMAIL Validate batch file details against database and pega for Positive test cases for 4749,4954,4955 offer as part of nov 10 release
    Given load data from "EMOBTouch7" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "emob" extract file with batch "ProvCode;ProductCode;SubProductCode;" Email Specific Text Header
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate EMOB Welcome offer details in batch file against database and pega
    Then validate the offer details against IH
    Examples:
      | Test cases                                                         |
      | Touch7_4749_DO_NOT_SOLICIT_F=NULL_EMPLOYEE_STAFF_F=N_PRV_BNK_IND=N |
      | Touch7_4749_EMPLOYEE_STAFF_F=Null                                  |
      | Touch7_4749_BLOCK_RSN_CD and RECL_CD is BLANK                      |
      | Touch7_4749_BLOCK_RSN_CD and RECL_CD is NULL                       |
      | Touch7_4749_BLOCK_RSN_CD and RECL_CD is XH                         |
      | Touch7_4749_BLOCK_RSN_CD and RECL_CD is  C                         |
      | Touch7_4749_Prv_Bnk_Ind = Y                                        |
      | Touch7_4749_Prv_Bnk_Ind = NULL                                     |
      | Touch7_4749_EMPLOYEE_STAFF_F=Y                                     |
      | Touch7_4749_BLOCK_RSN_CD = A and RECL_CD = B                       |
      | Touch7_4749_BLOCK_RSN_CD = BLANK and RECL_CD = H                   |
      | Touch7_4749_BLOCK_RSN_CD = C and RECL_CD = BLANK                   |
      | Touch7_4749_BLOCK_RSN_CD = C and RECL_CD = NULL                    |
      | Touch7_4749_ BLOCK_RSN_CD = X and RECL_CD = BLANK                  |
      | Touch7_4749_ BLOCK_RSN_CD = X and RECL_CD = NULL                   |
      | Touch7_4749_ BLOCK_RSN_CD = BLANK and RECL_CD = H                  |
      | Touch7_4749_ BLOCK_RSN_CD = NULL and RECL_CD = H                   |
      | Touch7_4749_ BLOCK_RSN_CD = NULL and RECL_CD = NULL                |
      | Touch7_4749_NOT_AML_KYC_ne_Y                                       |
      | Touch7_4749_NOT_AML_KYC_eq_NULL                                    |
      | Touch7_4749_SRC_ACCT_STAT_CD_eq_Open                               |
      | Touch7_4749_acct_opn_dt =  5 days                                  |
      | Touch7_4749_acct_opn_dt = 8 days                                   |
      | Touch7_4749_acct_opn_dt is >=5 days and <=8 days                   |
      | Touch7_4954_DO_NOT_SOLICIT_F=NULL_EMPLOYEE_STAFF_F=N_PRV_BNK_IND=N |
      | Touch7_4954_EMPLOYEE_STAFF_F=Null                                  |
      | Touch7_4954_BLOCK_RSN_CD and RECL_CD is BLANK                      |
      | Touch7_4954_BLOCK_RSN_CD and RECL_CD is NULL                       |
      | Touch7_4954_BLOCK_RSN_CD and RECL_CD is XH                         |
      | Touch7_4954_BLOCK_RSN_CD and RECL_CD is  C                         |
      | Touch7_4954_Prv_Bnk_Ind = Y                                        |
      | Touch7_4954_Prv_Bnk_Ind = NULL                                     |
      | Touch7_4954_EMPLOYEE_STAFF_F=Y                                     |
      | Touch7_4954_BLOCK_RSN_CD = A and RECL_CD = B                       |
      | Touch7_4954_BLOCK_RSN_CD = BLANK and RECL_CD = H                   |
      | Touch7_4954_BLOCK_RSN_CD = C and RECL_CD = BLANK                   |
      | Touch7_4954_BLOCK_RSN_CD = C and RECL_CD = NULL                    |
      | Touch7_4954_ BLOCK_RSN_CD = X and RECL_CD = BLANK                  |
      | Touch7_4954_ BLOCK_RSN_CD = X and RECL_CD = NULL                   |
      | Touch7_4954_ BLOCK_RSN_CD = BLANK and RECL_CD = H                  |
      | Touch7_4954_ BLOCK_RSN_CD = NULL and RECL_CD = H                   |
      | Touch7_4954_ BLOCK_RSN_CD = NULL and RECL_CD = NULL                |
      | Touch7_4954_NOT_AML_KYC_ne_Y                                       |
      | Touch7_4954_NOT_AML_KYC_eq_NULL                                    |
      | Touch7_4954_SRC_ACCT_STAT_CD_eq_Open                               |
      | Touch7_4954_acct_opn_dt =  5 days                                  |
      | Touch7_4954_acct_opn_dt = 8 days                                   |
      | Touch7_4954_acct_opn_dt is >=5 days and <=8 days                   |
      | Touch7_4955_DO_NOT_SOLICIT_F=NULL_EMPLOYEE_STAFF_F=N_PRV_BNK_IND=N |
      | Touch7_4955_EMPLOYEE_STAFF_F=Null                                  |
      | Touch7_4955_BLOCK_RSN_CD and RECL_CD is BLANK                      |
      | Touch7_4955_BLOCK_RSN_CD and RECL_CD is NULL                       |
      | Touch7_4955_BLOCK_RSN_CD and RECL_CD is XH                         |
      | Touch7_4955_BLOCK_RSN_CD and RECL_CD is  C                         |
      | Touch7_4955_Prv_Bnk_Ind = Y                                        |
      | Touch7_4955_Prv_Bnk_Ind = NULL                                     |
      | Touch7_4955_EMPLOYEE_STAFF_F=Y                                     |
      | Touch7_4955_BLOCK_RSN_CD = A and RECL_CD = B                       |
      | Touch7_4955_BLOCK_RSN_CD = BLANK and RECL_CD = H                   |
      | Touch7_4955_BLOCK_RSN_CD = C and RECL_CD = BLANK                   |
      | Touch7_4955_BLOCK_RSN_CD = C and RECL_CD = NULL                    |
      | Touch7_4955_ BLOCK_RSN_CD = X and RECL_CD = BLANK                  |
      | Touch7_4955_ BLOCK_RSN_CD = X and RECL_CD = NULL                   |
      | Touch7_4955_ BLOCK_RSN_CD = BLANK and RECL_CD = H                  |
      | Touch7_4955_ BLOCK_RSN_CD = NULL and RECL_CD = H                   |
      | Touch7_4955_ BLOCK_RSN_CD = NULL and RECL_CD = NULL                |
      | Touch7_4955_NOT_AML_KYC_ne_Y                                       |
      | Touch7_4955_NOT_AML_KYC_eq_NULL                                    |
      | Touch7_4955_SRC_ACCT_STAT_CD_eq_Open                               |
      | Touch7_4955_acct_opn_dt =  5 days                                  |
      | Touch7_4955_acct_opn_dt = 8 days                                   |
      | Touch7_4955_acct_opn_dt is >=5 days and <=8 days                   |

  @EMOB @EMOBTouchDay7_BatchFile_Positive_4957_5895_Validation @Workstream-4 @EMAIL @VS16008
  Scenario Outline: EMOB Touch Day-7_VS16008_EMAIL Validate batch file details against database and pega for Positive test cases for 4957,5894 offer as part of nov 10 release
    Given load data from "EMOBTouch7" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "emob" extract file with batch "ProvCode;ProductCode;SubProductCode;" Email Specific Text Header
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate EMOB Welcome offer details in batch file against database and pega
    Then validate the offer details against IH
    Examples:
      | Test cases                                                         |
      | Touch7_4957_DO_NOT_SOLICIT_F=NULL_EMPLOYEE_STAFF_F=N_PRV_BNK_IND=N |
      | Touch7_4957_EMPLOYEE_STAFF_F=Null                                  |
      | Touch7_4957_BLOCK_RSN_CD and RECL_CD is BLANK                      |
      | Touch7_4957_BLOCK_RSN_CD and RECL_CD is NULL                       |
      | Touch7_4957_BLOCK_RSN_CD and RECL_CD is XH                         |
      | Touch7_4957_BLOCK_RSN_CD and RECL_CD is  C                         |
      | Touch7_4957_Prv_Bnk_Ind = Y                                        |
      | Touch7_4957_Prv_Bnk_Ind = NULL                                     |
      | Touch7_4957_EMPLOYEE_STAFF_F=Y                                     |
      | Touch7_4957_BLOCK_RSN_CD = A and RECL_CD = B                       |
      | Touch7_4957_BLOCK_RSN_CD = BLANK and RECL_CD = H                   |
      | Touch7_4957_BLOCK_RSN_CD = C and RECL_CD = BLANK                   |
      | Touch7_4957_BLOCK_RSN_CD = C and RECL_CD = NULL                    |
      | Touch7_4957_ BLOCK_RSN_CD = X and RECL_CD = BLANK                  |
      | Touch7_4957_ BLOCK_RSN_CD = X and RECL_CD = NULL                   |
      | Touch7_4957_ BLOCK_RSN_CD = BLANK and RECL_CD = H                  |
      | Touch7_4957_ BLOCK_RSN_CD = NULL and RECL_CD = H                   |
      | Touch7_4957_ BLOCK_RSN_CD = NULL and RECL_CD = NULL                |
      | Touch7_4957_NOT_AML_KYC_ne_Y                                       |
      | Touch7_4957_NOT_AML_KYC_eq_NULL                                    |
      | Touch7_4957_SRC_ACCT_STAT_CD_eq_Open                               |
      | Touch7_4957_acct_opn_dt =  5 days                                  |
      | Touch7_4957_acct_opn_dt = 8 days                                   |
      | Touch7_4957_acct_opn_dt is >=5 days and <=8 days                   |
      | Touch7_5894_DO_NOT_SOLICIT_F=NULL_EMPLOYEE_STAFF_F=N_PRV_BNK_IND=N |
      | Touch7_5894_EMPLOYEE_STAFF_F=Null                                  |
      | Touch7_5894_BLOCK_RSN_CD and RECL_CD is BLANK                      |
      | Touch7_5894_BLOCK_RSN_CD and RECL_CD is NULL                       |
      | Touch7_5894_BLOCK_RSN_CD and RECL_CD is XH                         |
      | Touch7_5894_BLOCK_RSN_CD and RECL_CD is  C                         |
      | Touch7_5894_Prv_Bnk_Ind = Y                                        |
      | Touch7_5894_Prv_Bnk_Ind = NULL                                     |
      | Touch7_5894_EMPLOYEE_STAFF_F=Y                                     |
      | Touch7_5894_BLOCK_RSN_CD = A and RECL_CD = B                       |
      | Touch7_5894_BLOCK_RSN_CD = BLANK and RECL_CD = H                   |
      | Touch7_5894_BLOCK_RSN_CD = C and RECL_CD = BLANK                   |
      | Touch7_5894_BLOCK_RSN_CD = C and RECL_CD = NULL                    |
      | Touch7_5894_ BLOCK_RSN_CD = X and RECL_CD = BLANK                  |
      | Touch7_5894_ BLOCK_RSN_CD = X and RECL_CD = NULL                   |
      | Touch7_5894_ BLOCK_RSN_CD = BLANK and RECL_CD = H                  |
      | Touch7_5894_ BLOCK_RSN_CD = NULL and RECL_CD = H                   |
      | Touch7_5894_ BLOCK_RSN_CD = NULL and RECL_CD = NULL                |
      | Touch7_5894_NOT_AML_KYC_ne_Y                                       |
      | Touch7_5894_NOT_AML_KYC_eq_NULL                                    |
      | Touch7_5894_SRC_ACCT_STAT_CD_eq_Open                               |
      | Touch7_5894_acct_opn_dt =  5 days                                  |
      | Touch7_5894_acct_opn_dt = 8 days                                   |
      | Touch7_5894_acct_opn_dt is >=5 days and <=8 days                   |










