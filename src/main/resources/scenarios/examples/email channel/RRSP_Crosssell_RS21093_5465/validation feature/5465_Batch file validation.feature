Feature: Batch file validation for RRSP_Cross Sell RS21093
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


  @RRSPCrossSellEmail @RRSPCrossSellEmail_DatFile_Positive_Validation_5465 @5465 @EMAIL @RS21093  @AUTOTESTTOTAL#47
  Scenario Outline: RRSP CrossSellEmail_RS21093_5465_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "RRSPCrossSell" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read RRSP CrossSell "RRSP" extract file customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate CrossSell offer details in batch file against database and pega
    Examples:
      | Test cases                                                                                                                                                                                                                                             |
      | 5465_CUST_TP_CD=PSNL,5465_Primary Country Cd = CA,5465_CUST_AGE >18,5465_DO_NOT_SOLICIT_F = N,5465_MRKTBLE_F = Y,5465_NOT_AML_KYC = N,5465_Customer Not Decease                                                                                        |
      | 5465_CUST_AGE=18                                                                                                                                                                                                                                       |
      | 5465_CUST_AGE = 70                                                                                                                                                                                                                                     |
      | 5465_LANG_CD in E                                                                                                                                                                                                                                      |
      | 5465_LANG_CD in EN                                                                                                                                                                                                                                     |
      | 5465_LANG_CD in F                                                                                                                                                                                                                                      |
      | 5465_LANG_CD in FR                                                                                                                                                                                                                                     |
      | 5465_LANG_CD in small case_e                                                                                                                                                                                                                           |
      | 5465_LANG_CD in small case_en                                                                                                                                                                                                                          |
      | 5465_LANG_CD in small case_f                                                                                                                                                                                                                           |
      | 5465_LANG_CD in small case_fr                                                                                                                                                                                                                          |
      | 5465_DO_NOT_SOLICIT_F = NULL                                                                                                                                                                                                                           |
      | 5465_DO_NOT_EMAIL_F=N                                                                                                                                                                                                                                  |
      | 5465_VLD_EML_F=Y                                                                                                                                                                                                                                       |
      | 5465_PRIM_EMAIL_ADDRESS!=NULL                                                                                                                                                                                                                          |
      | 5465_INDV_FRST_NM!=NULL/BLANK                                                                                                                                                                                                                          |
      | 5465_NOT_AML_KYC = NULL                                                                                                                                                                                                                                |
      | 5465_CUST_OPND_DT > 90 days                                                                                                                                                                                                                            |
      | 5465_ACCT_ODT > 90 days                                                                                                                                                                                                                                |
      | 5465_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1                                                                                                                                                                    |
      | 5465_CUST_INSIGHTS.INSIGHT_CD = FLG_RRSP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1                                                                                                                                                                    |
      | 5465_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RRSP   and CUST_INSIGHTS.CURR_VAL > 1                                                                                                                                                                    |
      | 5465_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RRSP   and CUST_INSIGHTS.CURR_VAL = 1                                                                                                                                                                    |
      | 5465_PRD CODE=01  SUB PRD CD=01                                                                                                                                                                                                                        |
      | 5465_PRD CODE=VGD SUB PRD CD=NF                                                                                                                                                                                                                        |
      | 5465_PLN_ACCT_CD_MASTER != RRSP and ACCT_SUBSYS_ID = UF and  SRC_ACCT_STAT_CD = Active                                                                                                                                                                 |
      | 5465_PLN_ACCT_CD_MASTER = RRSP  and ACCT_SUBSYS_ID != UF and SRC_ACCT_STAT_CD = Active                                                                                                                                                                 |
      | 5465_PLN_ACCT_CD_MASTER = RRSP and ACCT_SUBSYS_ID = UF and SRC_ACCT_STAT_CD != Active                                                                                                                                                                  |
      | 5465_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = FLG_RRSP_OUT_PAYMENT  and CUST_INSIGHTS.CURR_VAL = 1                                                                                 |
      | 5465_CUST_INSIGHTS.INSIGHT_CD = FLG_RRSP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RRSP and CUST_INSIGHTS.CURR_VAL => 1                                                                                   |
      | 5465_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RRSP and CUST_INSIGHTS.CURR_VAL => 1                                                                                   |
      | 5465_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = FLG_RRSP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL != 1                                                                                 |
      | 5465_CUST_INSIGHTS.INSIGHT_CD = FLG_RRSP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1) OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RRSP and CUST_INSIGHTS.CURR_VAL < 1                                                                                   |
      | 5465_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL != 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RRSP and CUST_INSIGHTS.CURR_VAL => 1                                                                                  |
      | 5465_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = FLG_RRSP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RRSP and CUST_INSIGHTS.CURR_VAL => 1 |
      | 5465_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = FLG_RRSP_OUT_PAYMENT  and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RRSP and CUST_INSIGHTS.CURR_VAL < 1 |
      | 5465_PRD CD = 02 SUB PRD CD = 05                                                       |
      | 5465_PRD CD = 19 SUB PRD CD = 05                                                       |
      | 5465_PRD CD = 13 SUB PRD CD = 05                                                       |
      | 5465_PRD CD = 07 SUB PRD CD = 01                                                       |
      | 5465_PRD CD = 23 SUB PRD CD = 02                                                       |
      | 5465_PRD CD = VGD SUB PRD CD= AB                                                       |
      | 5465_PRD CD = VCL SUB PRD CD= BC                                                       |
      | 5465_PRD CD = VLR SUB PRD CD= CD                                                       |
      | 5465_SRC_ACCT_STAT_CD! =  A                                                            |
      | 5465_SRC_ACCT_STAT_CD! = Open                                                          |
      | 5465_SRC_ACCT_STAT_CD = NULL                                                           |


  @RRSPCrossSellEmail @RRSPCrossSellEMail_DatFile_Negative_Validation_5465 @Workstream-4 @5465 @EMAIL @RS21093  @AUTOTESTTOTAL#36
  Scenario Outline: RRSP Cross Sell Email_RS21093_5465_EMAIL Validate batch file details against database and pega for Negative test cases
    Given load data from "RRSPCrossSell" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read RRSP CrossSell "TFSA" extract file customer offer details
    Then validate CrossSell offer details should not display in batch file
    Examples:
      | Test cases                                                                               |
      | N-5465_CUST_TP_CD != PSNL                                                                |
      | N-5465_Primary Country Cd != CA                                                          |
      | N-5465_Primary Country Cd = NULL                                                         |
      | N-5465_CUST_AGE < 18                                                                     |
      | N-5465_CUST_AGE > 70                                                                     |
      | N-5465_CUST_AGE = NULL                                                                   |
      | N-5465_LANG_CD NOT in (EN, E, FR, F)                                                     |
      | N-5465_LANG_CD = NULL                                                                    |
      | N-5465_DO_NOT_SOLICIT_F = Y                                                              |
      | N-5465_MRKTBLE_F = N                                                                     |
      | N-5465_MRKTBLE_F = NULL                                                                  |
      | N-5465_NOT_AML_KYC = Y                                                                   |
      | N-5465_CUST_OPNT_DT < 90 days                                                            |
      | N-5465_CUST_OPNT_DT = 90 days                                                            |
      | N-5465_CUST_OPNT_DT = NULL                                                               |
      | N-5465_Customer Decease - Y                                                              |
      | N-5465_Customer Decease - NULL                                                           |
      | N-5465_ACCT_ODT < 90 Days                                                                |
      | N-5465_ACCT_ODT = 90 Days                                                                |
      | N-5465_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL != 1   |
      | N-5465_CUST_INSIGHTS.INSIGHT_CD != FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1   |
      | N-5465_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = NULL |
      | N-5465_CUST_INSIGHTS.INSIGHT_CD = FLG_RRSP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL != 1   |
      | N-5465_CUST_INSIGHTS.INSIGHT_CD != FLG_RRSP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1   |
      | N-5465_CUST_INSIGHTS.INSIGHT_CD = FLG_RRSP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = NULL |
      | N-5465_CUST_INSIGHTS.INSIGHT_CD != CNT_PAGEVISIT_RRSP and CUST_INSIGHTS.CURR_VAL => 1    |
      | N-5465_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RRSP and CUST_INSIGHTS.CURR_VAL < 1      |
      | N-5465_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RRSP and CUST_INSIGHTS.CURR_VAL = NULL   |
      | N-5465_CUST_INSIGHTS.INSIGHT_CD = NULL and CUST_INSIGHTS.CURR_VAL = NULL                 |
      | N-5465_DO_NOT_EMAIL_F=Y                                                                  |
      | N-5465_DO_NOT_EMAIL_F=NULL                                                               |
      | N-5465_Valid Email Flag = N                                                              |
      | N-5465_Valid Email Flag = NULL                                                           |
      | N-5465_EMAIL Address = NULL                                                              |
      | N-5465_First Name = NULL                                                                 |
      | N-5465_PLN_ACCT_CD_MASTER = RRSP and ACCT_SUBSYS_ID = UF and SRC_ACCT_STAT_CD = Active   |


