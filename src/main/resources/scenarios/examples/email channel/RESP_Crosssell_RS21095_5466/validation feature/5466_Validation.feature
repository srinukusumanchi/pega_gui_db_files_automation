Feature: Validation for 5466 RESPCrossSell

  @RESPCrossSellEmail @RESPCrossSell_Positive_Validation @Workstream-4 @5466 @EMAIL @RS21095   @AUTOTESTTOTAL#47
  Scenario Outline: RESP CrossSell_RS21095_5466_EMAIL Validate offer details against IH for Positive test cases
    Given load data from "RESPCrossSell" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"

#    And the user navigates to pega url
#    When the user enters user name, password and click on login in pega Login screen
#    And click on interaction History by customer link
#    And click on actions and run in interactions history By customer screen
#    When click on period link and clear today value
#    And enter customer id in ih by customer screen and get IH table data

    Then validate CrossSell offer details against IH
    Examples:
      | Test cases                                                                                                                                                                                                                   |
      | 5466_CUST_TP_CD=PSNL,5466_Primary Country Cd = CA,5466_CUST_AGE >18,5466_DO_NOT_SOLICIT_F = N,5466_MRKTBLE_F = Y,5466_NOT_AML_KYC = N,5466_Customer Not Decease                                                              |
      | 5466_CUST_AGE=18                                                                                                                                                                                                             |
      | 5466_LANG_CD in E                                                                                                                                                                                                            |
      | 5466_LANG_CD in EN                                                                                                                                                                                                           |
      | 5466_LANG_CD in F                                                                                                                                                                                                            |
      | 5466_LANG_CD in FR                                                                                                                                                                                                           |
      | 5466_LANG_CD in small case_e                                                                                                                                                                                                 |
      | 5466_LANG_CD in small case_en                                                                                                                                                                                                |
      | 5466_LANG_CD in small case_f                                                                                                                                                                                                 |
      | 5466_LANG_CD in small case_fr                                                                                                                                                                                                |
      | 5466_DO_NOT_SOLICIT_F = NULL                                                                                                                                                                                                 |
      | 5466_DO_NOT_EMAIL_F=N                                                                                                                                                                                                        |
      | 5466_VLD_EML_F=Y                                                                                                                                                                                                             |
      | 5466_PRIM_EMAIL_ADDRESS!=NULL                                                                                                                                                                                                |
      | 5466_INDV_FRST_NM!=NULL/BLANK                                                                                                                                                                                                |
      | 5466_NOT_AML_KYC = NULL                                                                                                                                                                                                      |
      | 5466_CUST_OPND_DT > 90 days                                                                                                                                                                                                  |
      | 5466_ACCT_ODT > 90 days                                                                                                                                                                                                      |
      | 5466_CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1                                                                                                                                          |
      | 5466_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RESP   and CUST_INSIGHTS.CURR_VAL > 1                                                                                                                                          |
      | 5466_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RESP   and CUST_INSIGHTS.CURR_VAL = 1                                                                                                                                          |
      | 5466_CUST_DIM.CHILD_TAX_BENEFIT_START_DATE within 30 days OR CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1                                                                                  |
      | 5466_CUST_DIM.CHILD_TAX_BENEFIT_START_DATE within 30 days OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RESP and CUST_INSIGHTS.CURR_VAL => 1                                                                                   |
      | 5466_CHILD_TAX_BENEFIT_START_DATE within 30 days OR CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL! = 1                                                                                          |
      | 5466_CUST_DIM.CHILD_TAX_BENEFIT_START_DATE > 30 days OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA and CUST_INSIGHTS.CURR_VAL => 1                                                                                        |
      | 5466_PRD CODE=01  SUB PRD CD=01                                                                                                                                                                                              |
      | 5466_PRD CODE=VGD SUB PRD CD=NF                                                                                                                                                                                              |
      | 5466_PLN_ACCT_CD_MASTER != RESP and ACCT_SUBSYS_ID = UF and  SRC_ACCT_STAT_CD = Active                                                                                                                                       |
      | 5466_PLN_ACCT_CD_MASTER = RESP  and ACCT_SUBSYS_ID != UF and SRC_ACCT_STAT_CD = Active                                                                                                                                       |
      | 5466_PLN_ACCT_CD_MASTER = RESP and ACCT_SUBSYS_ID = UF and SRC_ACCT_STAT_CD != Active                                                                                                                                        |
      | 5466_CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RESP and CUST_INSIGHTS.CURR_VAL => 1                                                         |
      | 5466_CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RESP and CUST_INSIGHTS.CURR_VAL < 1                                                          |
      | 5466_CUST_DIM.CHILD_TAX_BENEFIT_START_DATE within 30 days OR CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RESP and CUST_INSIGHTS.CURR_VAL => 1 |
      | 5466_CUST_DIM.CHILD_TAX_BENEFIT_START_DATE within 30 days OR CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RESP and CUST_INSIGHTS.CURR_VAL < 1  |
      | 5466_CUST_DIM.CHILD_TAX_BENEFIT_START_DATE within 30 days                                                                                                                                                                    |
      | 5466_CUST_DIM.CHILD_TAX_BENEFIT_START_DATE = 30 days                                                                                                                                                                         |
      | 5466_PRD CD = 02 SUB PRD CD = 05                                                                                        |
      | 5466_PRD CD = 19 SUB PRD CD = 05                                                                                        |
      | 5466_PRD CD = 13 SUB PRD CD = 05                                                                                        |
      | 5466_PRD CD = 07 SUB PRD CD = 01                                                                                        |
      | 5466_PRD CD = 23 SUB PRD CD = 02                                                                                        |
      | 5466_PRD CD = VGD SUB PRD CD= AB                                                                                        |
      | 5466_PRD CD = VCL SUB PRD CD= BC                                                                                        |
      | 5466_PRD CD = VLR SUB PRD CD= CD                                                                                        |
      | 5466_SRC_ACCT_STAT_CD! =  A                                                                                             |
      | 5466_SRC_ACCT_STAT_CD! = Open                                                                                           |
      | 5466_SRC_ACCT_STAT_CD = NULL                                                                                            |

  @RESPCrossSellEmail @RESPCrossSellEmail_Negative_Validation @Workstream-4 @5466 @EMAIL @RS21095  @AUTOTESTTOTAL#33
  Scenario Outline: RESP CrossSell Email_RS21095_5466_EMAIL Validate offer details against IH for Negative test cases
    Given load data from "RESPCrossSell" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"

#    And the user navigates to pega url
#    When the user enters user name, password and click on login in pega Login screen
#    And click on interaction History by customer link
#    And click on actions and run in interactions history By customer screen
#    When click on period link and clear today value
#    And enter customer id in ih by customer screen and get IH table data

    Then verify offer should not display
    Examples:
      | Test cases                                                                                                                |
      | N-5466_CUST_TP_CD != PSNL                                                                                                 |
      | N-5466_Primary Country Cd != CA                                                                                           |
      | N-5466_Primary Country Cd = NULL                                                                                          |
      | N-5466_CUST_AGE < 18                                                                                                      |
      | N-5466_CUST_AGE = NULL                                                                                                    |
      | N-5466_LANG_CD NOT in (EN, E, FR, F)                                                                                      |
      | N-5466_LANG_CD = NULL                                                                                                     |
      | N-5466_DO_NOT_SOLICIT_F = Y                                                                                               |
      | N-5466_MRKTBLE_F = N                                                                                                      |
      | N-5466_MRKTBLE_F = NULL                                                                                                   |
      | N-5466_NOT_AML_KYC = Y                                                                                                    |
      | N-5466_CUST_OPNT_DT < 90 days                                                                                             |
      | N-5466_CUST_OPNT_DT = 90 days                                                                                             |
      | N-5466_CUST_OPNT_DT = NULL                                                                                                |
      | N-5466_Customer Decease - Y                                                                                               |
      | N-5466_Customer Decease - NULL                                                                                            |
      | N-5466_ACCT_ODT < 90 Days                                                                                                 |
      | N-5466_ACCT_ODT = 90 Days                                                                                                 |
      | N-5466_CUST_INSIGHTS.INSIGHT_CD != CNT_PAGEVISIT_RESP and CUST_INSIGHTS.CURR_VAL => 1                                     |
      | N-5466_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RESP and CUST_INSIGHTS.CURR_VAL < 1                                       |
      | N-5466_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RESP and CUST_INSIGHTS.CURR_VAL = NULL                                    |
      | N-5466_CUST_INSIGHTS.INSIGHT_CD != FLG_RESP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1                                    |
      | N-5466_CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL!= 1                                     |
      | N-5466_CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = NULL                                  |
      | N-5466_CUST_INSIGHTS.INSIGHT_CD = NULL and CUST_INSIGHTS.CURR_VAL = NULL and CUST_DIM.CHILD_TAX_BENEFIT_START_DATE = NULL |
      | N-5466_DO_NOT_EMAIL_F=Y                                                                                                   |
      | N-5466_DO_NOT_EMAIL_F=NULL                                                                                                |
      | N-5466_Valid Email Flag = N                                                                                               |
      | N-5466_Valid Email Flag = NULL                                                                                            |
      | N-5466_EMAIL Address = NULL                                                                                               |
      | N-5466_First Name = NULL                                                                                                  |
      | N-5466_PLN_ACCT_CD_MASTER = RESP and ACCT_SUBSYS_ID = UF and SRC_ACCT_STAT_CD = Active                                    |
      | N-5466_CUST_DIM.CHILD_TAX_BENEFIT_START_DATE > 30 days                                                                    |

