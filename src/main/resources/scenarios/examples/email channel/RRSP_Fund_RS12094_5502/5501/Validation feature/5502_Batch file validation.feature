@RRSP_BATCHVALIDATION
Feature: Batch file validation for RRSP_Fund RS21094
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


  @RRSPFundEmail @RRSPFundEmail_DatFile_Positive_Validation_5502 @5502 @EMAIL @RS21094  @AUTOTESTTOTAL#46
  Scenario Outline: RRSP CrossSellEmail_RS21094_5502_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "RRSPFund" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read RRSP Fund "RRSP" extract file customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate CrossSell offer details in batch file against database and pega
    Examples:
      | Test cases                                                                                                                                                                                                                                             |
      | 5502_CUST_TP_CD=PSNL,5502_Primary Country Cd = CA,5502_CUST_AGE >18,5502_DO_NOT_SOLICIT_F = N,5502_MRKTBLE_F = Y,5502_NOT_AML_KYC = N,5502_Customer Not Decease                                                                                        |
      | 5502_CUST_AGE=18                                                                                                                                                                                                                                       |
      | 5502_CUST_AGE = 70                                                                                                                                                                                                                                     |
      | 5502_LANG_CD in E                                                                                                                                                                                                                                      |
      | 5502_LANG_CD in EN                                                                                                                                                                                                                                     |
      | 5502_LANG_CD in F                                                                                                                                                                                                                                      |
      | 5502_LANG_CD in FR                                                                                                                                                                                                                                     |
      | 5502_LANG_CD in small case_e                                                                                                                                                                                                                           |
      | 5502_LANG_CD in small case_en                                                                                                                                                                                                                          |
      | 5502_LANG_CD in small case_f                                                                                                                                                                                                                           |
      | 5502_LANG_CD in small case_fr                                                                                                                                                                                                                          |
      | 5502_DO_NOT_SOLICIT_F = NULL                                                                                                                                                                                                                           |
      | 5502_DO_NOT_EMAIL_F=N                                                                                                                                                                                                                                  |
      | 5502_VLD_EML_F=Y                                                                                                                                                                                                                                       |
      | 5502_PRIM_EMAIL_ADDRESS!=NULL                                                                                                                                                                                                                          |
      | 5502_INDV_FRST_NM!=NULL/BLANK                                                                                                                                                                                                                          |
      | 5502_NOT_AML_KYC = NULL                                                                                                                                                                                                                                |
      | 5502_CUST_OPND_DT > 90 days                                                                                                                                                                                                                            |
      | 5502_ACCT_ODT > 90 days                                                                                                                                                                                                                                |
      | 5502_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1                                                                                                                                                                    |
      | 5502_CUST_INSIGHTS.INSIGHT_CD = FLG_RRSP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1                                                                                                                                                                    |
      | 5502_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RRSP   and CUST_INSIGHTS.CURR_VAL > 1                                                                                                                                                                    |
      | 5502_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RRSP   and CUST_INSIGHTS.CURR_VAL = 1                                                                                                                                                                    |
      | 5502_PLN_ACCT_CD_MASTER = RRSP and ACCT_SUBSYS_ID = UF and SRC_ACCT_STAT_CD = Active                                                                                                                                                                   |
      | 5502_PRD CODE=01  SUB PRD CD=01                                                                                                                                                                                                                        |
      | 5502_PRD CODE=VGD SUB PRD CD=NF                                                                                                                                                                                                                        |
      | 5502_PRD CD = 02 SUB PRD CD = 05                                                                                                                                                                                                                       |
      | 5502_PRD CD = 19 SUB PRD CD = 05                                                                                                                                                                                                                       |
      | 5502_PRD CD = 13 SUB PRD CD = 05                                                                                                                                                                                                                       |
      | 5502_PRD CD = 07 SUB PRD CD = 01                                                                                                                                                                                                                       |
      | 5502_PRD CD = 23 SUB PRD CD = 02                                                                                                                                                                                                                       |
      | 5502_PRD CD = VGD SUB PRD CD= AB                                                                                                                                                                                                                       |
      | 5502_PRD CD = VCL SUB PRD CD= BC                                                                                                                                                                                                                       |
      | 5502_PRD CD = VLR SUB PRD CD= CD                                                                                                                                                                                                                       |
      | 5502_SRC_ACCT_STAT_CD! =  A                                                                                                                                                                                                                            |
      | 5502_SRC_ACCT_STAT_CD! = Open                                                                                                                                                                                                                          |
      | 5502_SRC_ACCT_STAT_CD = NULL                                                                                                                                                                                                                           |
      | 5502_PRIMARY_ACCT_HOLDER_FLAG = Y                                                                                                                                                                                                                      |
      | 5502_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = FLG_RRSP_OUT_PAYMENT  and CUST_INSIGHTS.CURR_VAL = 1                                                                                 |
      | 5502_CUST_INSIGHTS.INSIGHT_CD = FLG_RRSP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RRSP and CUST_INSIGHTS.CURR_VAL => 1                                                                                   |
      | 5502_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RRSP and CUST_INSIGHTS.CURR_VAL => 1                                                                                   |
      | 5502_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = FLG_RRSP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL != 1                                                                                 |
      | 5502_CUST_INSIGHTS.INSIGHT_CD = FLG_RRSP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1) OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RRSP and CUST_INSIGHTS.CURR_VAL < 1                                                                                   |
      | 5502_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL != 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RRSP and CUST_INSIGHTS.CURR_VAL => 1                                                                                  |
      | 5502_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = FLG_RRSP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RRSP and CUST_INSIGHTS.CURR_VAL => 1 |
      | 5502_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = FLG_RRSP_OUT_PAYMENT  and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RRSP and CUST_INSIGHTS.CURR_VAL < 1 |
#Added for Jan 5th 2023 release
      | 5502_MD_FINANCIAL_F_ne_Y                                                                                                                                                                                                                               |
      | 5502_ITRADE_MCLEOD_F_ne_Y                                                                                                                                                                                                                              |
      | 5502_DEDICATED_INVSTMNT_ADVISOR_F_ne_Y                                                                                                                                                                                                                 |
      | 5502_MD_FINANCIAL_F_eq_NULL                                                                                                                                                                                                                            |
      | 5502_ITRADE_MCLEOD_F_eq_NULL                                                                                                                                                                                                                           |
      | 5502_DEDICATED_INVSTMNT_ADVISOR_F_eq_NULL                                                                                                                                                                                                              |
      | 5502_INSIGHT_CD_eq_FLG_WINTERINV_RS22124_CONTROL_CURR_VAL_ne_1                                                                                                                                                                                         |
      | 5502_INSIGHT_CD_eq_FLG_WINTERINV_RS22124_CONTROL_CURR_VAL_eq_NULL                                                                                                                                                                                      |


  @RRSPFundEmail @RRSPFundEMail_DatFile_Negative_Validation_5502 @Workstream-4 @5502 @EMAIL @RS21094  @AUTOTESTTOTAL#43
  Scenario Outline: RRSP Fund Email_RS21094_5502_EMAIL Validate batch file details against database and pega for Negative test cases
    Given load data from "RRSPFund" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read RRSP Fund "RRSP" extract file customer offer details
    Then validate CrossSell offer details should not display in batch file
    Examples:
      | Test cases                                                                               |
      | N-5502_CUST_TP_CD != PSNL                                                                |
      | N-5502_Primary Country Cd != CA                                                          |
      | N-5502_Primary Country Cd = NULL                                                         |
      | N-5502_CUST_AGE < 18                                                                     |
      | N-5502_CUST_AGE > 70                                                                     |
      | N-5502_CUST_AGE = NULL                                                                   |
      | N-5502_LANG_CD NOT in (EN, E, FR, F)                                                     |
      | N-5502_LANG_CD = NULL                                                                    |
      | N-5502_DO_NOT_SOLICIT_F = Y                                                              |
      | N-5502_MRKTBLE_F = N                                                                     |
      | N-5502_MRKTBLE_F = NULL                                                                  |
      | N-5502_NOT_AML_KYC = Y                                                                   |
      | N-5502_CUST_OPNT_DT < 90 days                                                            |
      | N-5502_CUST_OPNT_DT = 90 days                                                            |
      | N-5502_CUST_OPNT_DT = NULL                                                               |
      | N-5502_Customer Decease - Y                                                              |
      | N-5502_Customer Decease - NULL                                                           |
      | N-5502_ACCT_ODT < 90 Days                                                                |
      | N-5502_ACCT_ODT = 90 Days                                                                |
      | N-5502_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL != 1   |
      | N-5502_CUST_INSIGHTS.INSIGHT_CD != FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1   |
      | N-5502_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = NULL |
      | N-5502_CUST_INSIGHTS.INSIGHT_CD = FLG_RRSP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL != 1   |
      | N-5502_CUST_INSIGHTS.INSIGHT_CD != FLG_RRSP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1   |
      | N-5502_CUST_INSIGHTS.INSIGHT_CD = FLG_RRSP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = NULL |
      | N-5502_CUST_INSIGHTS.INSIGHT_CD != CNT_PAGEVISIT_RRSP and CUST_INSIGHTS.CURR_VAL => 1    |
      | N-5502_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RRSP and CUST_INSIGHTS.CURR_VAL < 1      |
      | N-5502_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RRSP and CUST_INSIGHTS.CURR_VAL = NULL   |
      | N-5502_CUST_INSIGHTS.INSIGHT_CD = NULL and CUST_INSIGHTS.CURR_VAL = NULL                 |
      | N-5502_DO_NOT_EMAIL_F=Y                                                                  |
      | N-5502_DO_NOT_EMAIL_F=NULL                                                               |
      | N-5502_Valid Email Flag = N                                                              |
      | N-5502_Valid Email Flag = NULL                                                           |
      | N-5502_EMAIL Address = NULL                                                              |
      | N-5502_First Name = NULL                                                                 |
      | N-5502_INSIGHT_CD!=FLG_RRSP_CONTRIBUTION and CURR_VAL=0                                  |
      | N-5502_INSIGHT_CD=FLG_RRSP_CONTRIBUTION and CURR_VAL!=0                                  |
      | N-5502_INSIGHT_CD!=FLG_RRSP_CONTRIBUTION and CURR_VAL!=0                                 |
      | N-5502_PLN_ACCT_CD_MASTER != RRSP and ACCT_SUBSYS_ID = UF and  SRC_ACCT_STAT_CD = Active |
      | N-5502_PLN_ACCT_CD_MASTER = RRSP  and ACCT_SUBSYS_ID != UF and SRC_ACCT_STAT_CD = Active |
      | N-5502_PLN_ACCT_CD_MASTER = RRSP and ACCT_SUBSYS_ID = UF and SRC_ACCT_STAT_CD != Active  |
      | N-5502_PRIMARY_ACCT_HOLDER_FLAG = N                                                      |
      | N-5502_PRIMARY_ACCT_HOLDER_FLAG = NULL                                                   |
#Added for Jan 5th 2023 release
      | N-5502_MD_FINANCIAL_F_eq_Y                                                               |
      | N-5502_ITRADE_MCLEOD_F_eq_Y                                                              |
      | N-5502_DEDICATED_INVSTMNT_ADVISOR_F_eq_Y                                                 |
      | N-5502_INSIGHT_CD_eq_FLG_WINTERINV_RS22124_CONTROL_CURR_VAL_eq_1                         |



