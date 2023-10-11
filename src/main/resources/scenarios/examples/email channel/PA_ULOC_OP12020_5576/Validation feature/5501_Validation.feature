@IHVALIDATION_5501
Feature: Validation for 5501 TFSAFund

  @TFSAFundEmail @TFSAFund_Positive_Validation @Workstream-4 @5501 @EMAIL @RS21092  @AUTOTESTTOTAL#43
  Scenario Outline: TFSA Fund_RS21092_5501_EMAIL Validate offer details against IH for Positive test cases
    Given load data from "TFSAFund" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate CrossSell offer details against IH
    Examples:
      | Test cases                                                                                                                                                                                                                                             |
      | 5501_CUST_TP_CD=PSNL,5501_Primary Country Cd = CA,5501_CUST_AGE >18,5501_DO_NOT_SOLICIT_F = N,5501_MRKTBLE_F = Y,5501_NOT_AML_KYC = N,CUST_OPNT_DT > 90 days,5501_Customer Not Decease,5501_ACCT_ODT>90                                                |
      | 5501_CUST_AGE=18                                                                                                                                                                                                                                       |
      | 5501_LANG_CD in E                                                                                                                                                                                                                                      |
      | 5501_LANG_CD in EN                                                                                                                                                                                                                                     |
      | 5501_LANG_CD in F                                                                                                                                                                                                                                      |
      | 5501_LANG_CD in FR                                                                                                                                                                                                                                     |
      | 5501_LANG_CD in small case_e                                                                                                                                                                                                                           |
      | 5501_LANG_CD in small case_en                                                                                                                                                                                                                          |
      | 5501_LANG_CD in small case_f                                                                                                                                                                                                                           |
      | 5501_LANG_CD in small case_fr                                                                                                                                                                                                                          |
      | 5501_DO_NOT_SOLICIT_F = NULL                                                                                                                                                                                                                           |
      | 5501_NOT_AML_KYC = NULL                                                                                                                                                                                                                                |
      | 5501_DO_NOT_EMAIL_F=N                                                                                                                                                                                                                                  |
      | 5501_VLD_EML_F=Y                                                                                                                                                                                                                                       |
      | 5501_PRIM_EMAIL_ADDRESS!=NULL                                                                                                                                                                                                                          |
      | 5501_INDV_FRST_NM!=NULL/BLANK                                                                                                                                                                                                                          |
      | 5501_PRIMARY_ACCT_HOLDER_FLAG = Y                                                                                                                                                                                                                      |
      | 5501_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1                                                                                                                                                                    |
      | 5501_CUST_INSIGHTS.INSIGHT_CD = FLG_TFSA_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1                                                                                                                                                                    |
      | 5501_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA   and CUST_INSIGHTS.CURR_VAL > 1                                                                                                                                                                    |
      | 5501_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA   and CUST_INSIGHTS.CURR_VAL = 1                                                                                                                                                                    |
      | 5501_PLN_ACCT_CD_MASTER = TFSA and ACCT_SUBSYS_ID = UF and SRC_ACCT_STAT_CD = Active                                                                                                                                                                   |
      | 5501_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = FLG_TFSA_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1                                                                                  |
      | 5501_CUST_INSIGHTS.INSIGHT_CD = FLG_TFSA_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA and CUST_INSIGHTS.CURR_VAL => 1                                                                                   |
      | 5501_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA and CUST_INSIGHTS.CURR_VAL => 1                                                                                   |
      | 5501_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = FLG_TFSA_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL! = 1                                                                                 |
      | 5501_CUST_INSIGHTS.INSIGHT_CD = FLG_TFSA_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA and CUST_INSIGHTS.CURR_VAL < 1                                                                                    |
      | 5501_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL ! = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA and CUST_INSIGHTS.CURR_VAL => 1                                                                                 |
      | 5501_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = FLG_TFSA_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA and CUST_INSIGHTS.CURR_VAL => 1 |
      | 5501_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = FLG_TFSA_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA and CUST_INSIGHTS.CURR_VAL < 1  |
      | 5501_PRD CODE=01  SUB PRD CD=01                                                                                                                                                                                                                        |
      | 5501_PRD CODE=VGD SUB PRD CD=NF                                                                                                                                                                                                                        |
      | 5501_PRD CD = 02 SUB PRD CD = 05                                                                                                                                                                                                                       |
      | 5501_PRD CD = 19 SUB PRD CD = 05                                                                                                                                                                                                                       |
      | 5501_PRD CD = 13 SUB PRD CD = 05                                                                                                                                                                                                                       |
      | 5501_PRD CD = 07 SUB PRD CD = 01                                                                                                                                                                                                                       |
      | 5501_PRD CD = 23 SUB PRD CD = 02                                                                                                                                                                                                                       |
      | 5501_PRD CD = VGD SUB PRD CD= AB                                                                                                                                                                                                                       |
      | 5501_PRD CD = VCL SUB PRD CD= BC                                                                                                                                                                                                                       |
      | 5501_PRD CD = VLR SUB PRD CD= CD                                                                                                                                                                                                                       |
      | 5501_SRC_ACCT_STAT_CD! =  A                                                                                                                                                                                                                            |
      | 5501_SRC_ACCT_STAT_CD!  Open                                                                                                                                                                                                                           |
      | 5501_SRC_ACCT_STAT_CD = NULL                                                                                                                                                                                                                           |


  @TFSAFundEmail @TFSAFundEmail_Negative_Validation @Workstream-4 @5501 @EMAIL @RS21092  @AUTOTESTTOTAL#42
  Scenario Outline: TFSA Fund Email_RS21092_5501_EMAIL Validate offer details against IH for Negative test cases
    Given load data from "TFSAFund" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then verify offer should not display
    Examples:
      | Test cases                                                                               |
      | N-5501_INSIGHT_CD!=FLG_TFSA_CONTRIBUTION and CURR_VAL!=0                                 |
      | N-5501_CUST_TP_CD != PSNL                                                                |
      | N-5501_Primary Country Cd != CA                                                          |
      | N-5501_Primary Country Cd = NULL                                                         |
      | N-5501_CUST_AGE < 18                                                                     |
      | N-5501_CUST_AGE = NULL                                                                   |
      | N-5501_LANG_CD NOT in (EN, E, FR, F)                                                     |
      | N-5501_LANG_CD = NULL                                                                    |
      | N-5501_DO_NOT_SOLICIT_F = Y                                                              |
      | N-5501_MRKTBLE_F = N                                                                     |
      | N-5501_MRKTBLE_F = NULL                                                                  |
      | N-5501_NOT_AML_KYC = Y                                                                   |
      | N-5501_CUST_OPNT_DT < 90 days                                                            |
      | N-5501_CUST_OPNT_DT = 90 days                                                            |
      | N-5501_CUST_OPNT_DT = NULL                                                               |
      | N-5501_Customer Decease - Y                                                              |
      | N-5501_Customer Decease - NULL                                                           |
      | N-5501_ACCT_ODT < 90 Days                                                                |
      | N-5501_ACCT_ODT = 90 Days                                                                |
      | N-5501_DO_NOT_EMAIL_F=Y                                                                  |
      | N-5501_DO_NOT_EMAIL_F=NULL                                                               |
      | N-5501_Valid Email Flag = N                                                              |
      | N-5501_Valid Email Flag = NULL                                                           |
      | N-5501_EMAIL Address = NULL                                                              |
      | N-5501_First Name = NULL                                                                 |
      | N-5501_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL != 1   |
      | N-5501_CUST_INSIGHTS.INSIGHT_CD != FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = 1   |
      | N-5501_CUST_INSIGHTS.INSIGHT_CD = FLG_PAYROLL_INCREASE and CUST_INSIGHTS.CURR_VAL = NULL |
      | N-5501_CUST_INSIGHTS.INSIGHT_CD = FLG_TFSA_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL != 1   |
      | N-5501_CUST_INSIGHTS.INSIGHT_CD != FLG_TFSA_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1   |
      | N-5501_CUST_INSIGHTS.INSIGHT_CD = FLG_TFSA_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = NULL |
      | N-5501_CUST_INSIGHTS.INSIGHT_CD != CNT_PAGEVISIT_TFSA and CUST_INSIGHTS.CURR_VAL => 1    |
      | N-5501_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA and CUST_INSIGHTS.CURR_VAL < 1      |
      | N-5501_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA and CUST_INSIGHTS.CURR_VAL = NULL   |
      | N-5501_CUST_INSIGHTS.INSIGHT_CD = NULL and CUST_INSIGHTS.CURR_VAL = NULL                 |
      | N-5501_INSIGHT_CD!=FLG_TFSA_CONTRIBUTION and CURR_VAL=0                                  |
      | N-5501_INSIGHT_CD=FLG_TFSA_CONTRIBUTION and CURR_VAL!=0                                  |
      | N-5501_PLN_ACCT_CD_MASTER != TFSA and ACCT_SUBSYS_ID = UF and  SRC_ACCT_STAT_CD = Active |
      | N-5501_PLN_ACCT_CD_MASTER = TFSA  and ACCT_SUBSYS_ID != UF and SRC_ACCT_STAT_CD = Active |
      | N-5501_PLN_ACCT_CD_MASTER = TFSA and ACCT_SUBSYS_ID = UF and SRC_ACCT_STAT_CD != Active  |
      | N-5501_PRIMARY_ACCT_HOLDER_FLAG = N                                                      |
      | N-5501_PRIMARY_ACCT_HOLDER_FLAG = NULL                                                   |

