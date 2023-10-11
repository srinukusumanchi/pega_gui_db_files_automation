Feature: Batch file validation for RESP Contribution RS21096
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


  @RESPContributionEmail @RESPContributionEmail_DatFile_Positive_Validation_5503 @5503 @EMAIL @RS21096  @AUTOTESTTOTAL#
  Scenario Outline: RESP ContributionEmail_RS21096_5503_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "RESPContributionFunds" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read RESP Contribution Fund "RESPFund" extract file customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate CrossSell offer details in batch file against database and pega
    Examples:
      | Test cases                                                                                                                                                                                                                                                     |
      | 5503_CUST_TP_CD=PSNL,5503_Primary Country Cd = CA,5503_CUST_AGE >18,5503_DO_NOT_SOLICIT_F = N,5503_MRKTBLE_F = Y,5503_NOT_AML_KYC = N,5503_Customer Not Decease                                                                                                |
      | 5503_CUST_AGE=18                                                                                                                                                                                                                                               |
      | 5503_LANG_CD in E                                                                                                                                                                                                                                              |
      | 5503_LANG_CD in EN                                                                                                                                                                                                                                             |
      | 5503_LANG_CD in F                                                                                                                                                                                                                                              |
      | 5503_LANG_CD in FR                                                                                                                                                                                                                                             |
      | 5503_LANG_CD in small case_e                                                                                                                                                                                                                                   |
      | 5503_LANG_CD in small case_en                                                                                                                                                                                                                                  |
      | 5503_LANG_CD in small case_f                                                                                                                                                                                                                                   |
      | 5503_LANG_CD in small case_fr                                                                                                                                                                                                                                  |
      | 5503_DO_NOT_SOLICIT_F = NULL                                                                                                                                                                                                                                   |
      | 5503_NOT_AML_KYC = NULL                                                                                                                                                                                                                                        |
      | 5503_CUST_OPND_DT > 90 days                                                                                                                                                                                                                                    |
      | 5503_ACCT_ODT > 90 days                                                                                                                                                                                                                                        |
      | 5503_CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1                                                                                                                                                                            |
      | 5503_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RESP   and CUST_INSIGHTS.CURR_VAL > 1                                                                                                                                                                            |
      | 5503_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RESP   and CUST_INSIGHTS.CURR_VAL = 1                                                                                                                                                                            |
      | 5503_PLN_ACCT_CD_MASTER = RESP and ACCT_SUBSYS_ID = UF and SRC_ACCT_STAT_CD = Active                                                                                                                                                                           |
      | 5503_(CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_CONTRIBUTION and CUST_INSIGHTS.CURR_VAL = 0) and (CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RESP and CUST_INSIGHTS.CURR_VAL => 1)   |
      | 5503_(CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_CONTRIBUTION and CUST_INSIGHTS.CURR_VAL = 0) and (CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RESP and CUST_INSIGHTS.CURR_VAL < 1)    |
      | 5503_(CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_CONTRIBUTION and CUST_INSIGHTS.CURR_VAL = 0) and (CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD != CNT_PAGEVISIT_RESP and CUST_INSIGHTS.CURR_VAL >=  1) |
      | 5503_(CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_CONTRIBUTION and CUST_INSIGHTS.CURR_VAL = 0) and (CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL != 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RESP and CUST_INSIGHTS.CURR_VAL => 1)  |
      | 5503_(CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_CONTRIBUTION and CUST_INSIGHTS.CURR_VAL = 0) and (CUST_INSIGHTS.INSIGHT_CD != FLG_RESP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RESP and CUST_INSIGHTS.CURR_VAL => 1)  |
      | 5503_PRD CD = 02 SUB PRD CD = 05                                                                                                                                                                                                                               |
      | 5503_PRD CD = 19 SUB PRD CD = 05                                                                                                                                                                                                                               |
      | 5503_PRD CD = 13 SUB PRD CD = 05                                                                                                                                                                                                                               |
      | 5503_PRD CD = 07 SUB PRD CD = 01                                                                                                                                                                                                                               |
      | 5503_PRD CD = 23 SUB PRD CD = 02                                                                                                                                                                                                                               |
      | 5503_PRD CD = VGD SUB PRD CD= AB                                                                                                                                                                                                                               |
      | 5503_PRD CD = VCL SUB PRD CD= BC                                                                                                                                                                                                                               |
      | 5503_PRD CD = VLR SUB PRD CD= CD                                                                                                                                                                                                                               |
      | 5503_PRD CODE=01  SUB PRD CD=01                                                                                                                                                                                                                                |
      | 5503_PRD CODE=VGD SUB PRD CD=NF                                                                                                                                                                                                                                |
      | 5503_SRC_ACCT_STAT_CD! =  A                                                                                                                                                                                                                                    |
      | 5503_SRC_ACCT_STAT_CD! = Open                                                                                                                                                                                                                                  |
      | 5503_DO_NOT_EMAIL_F=N                                                                                                                                                                                                                                          |
      | 5503_VLD_EML_F=Y                                                                                                                                                                                                                                               |
      | 5503_PRIM_EMAIL_ADDRESS!=NULL                                                                                                                                                                                                                                  |
      | 5503_INDV_FRST_NM!=NULL/BLANK                                                                                                                                                                                                                                  |

  @RESPContributionEmail @RESPContributionEMail_DatFile_Negative_Validation_5503 @5503 @EMAIL @RS21096  @AUTOTESTTOTAL#
  Scenario Outline: RESP Contribution Email_RS21096_5503_EMAIL Validate batch file details against database and pega for Negative test cases
    Given load data from "RESPContributionFunds" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read RESP Contribution Fund "RESPFund" extract file customer offer details
    Then validate CrossSell offer details should not display in batch file
    Examples:
      | Test cases                                                                               |
      | N-5503_PLN_ACCT_CD_MASTER != RESP and ACCT_SUBSYS_ID = UF and  SRC_ACCT_STAT_CD = Active |
      | N-5503_PLN_ACCT_CD_MASTER = RESP  and ACCT_SUBSYS_ID != UF and SRC_ACCT_STAT_CD = Active |
      | N-5503_PLN_ACCT_CD_MASTER = RESP and ACCT_SUBSYS_ID = UF and SRC_ACCT_STAT_CD != Active  |
      | N-5503_CUST_TP_CD != PSNL                                                                |
      | N-5503_Primary Country Cd != CA                                                          |
      | N-5503_Primary Country Cd = NULL                                                         |
      | N-5503_CUST_AGE < 18                                                                     |
      | N-5503_CUST_AGE = NULL                                                                   |
      | N-5503_LANG_CD NOT in (EN, E, FR, F)                                                     |
      | N-5503_LANG_CD = NULL                                                                    |
      | N-5503_DO_NOT_SOLICIT_F = Y                                                              |
      | N-5503_MRKTBLE_F = N                                                                     |
      | N-5503_MRKTBLE_F = NULL                                                                  |
      | N-5503_NOT_AML_KYC = Y                                                                   |
      | N-5503_CUST_OPNT_DT < 90 days                                                            |
      | N-5503_CUST_OPNT_DT = 90 days                                                            |
      | N-5503_CUST_OPNT_DT = NULL                                                               |
      | N-5503_Customer Decease - Y                                                              |
      | N-5503_Customer Decease - NULL                                                           |
      | N-5503_ACCT_ODT < 90 Days                                                                |
      | N-5503_ACCT_ODT = 90 Days                                                                |
      | N-5503_SRC_ACCT_STAT_CD = NULL                                                           |
      | N-5503_CUST_INSIGHTS.INSIGHT_CD != CNT_PAGEVISIT_RESP and CUST_INSIGHTS.CURR_VAL => 1    |
      | N-5503_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RESP and CUST_INSIGHTS.CURR_VAL < 1      |
      | N-5503_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RESP and CUST_INSIGHTS.CURR_VAL = NULL   |
      | N-5503_CUST_INSIGHTS.INSIGHT_CD != FLG_RESP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1   |
      | N-5503_CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL!= 1    |
      | N-5503_CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = NULL |
      | N-5503_CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_CONTRIBUTION and CUST_INSIGHTS.CURR_VAL != 0  |
      | N-5503_CUST_INSIGHTS.INSIGHT_CD != FLG_RESP_CONTRIBUTION and CUST_INSIGHTS.CURR_VAL = 0  |
      | N-5503_PRIMARY_ACCT_HOLDER_FLAG = N                                                      |
      | N-5503_PRIMARY_ACCT_HOLDER_FLAG = NULL                                                   |
      | N-5503_DO_NOT_EMAIL_F=Y                                                                  |
      | N-5503_DO_NOT_EMAIL_F=NULL                                                               |
      | N-5503_Valid Email Flag = N                                                              |
      | N-5503_Valid Email Flag = NULL                                                           |
      | N-5503_EMAIL Address = NULL                                                              |
      | N-5503_First Name = NULL                                                                 |
