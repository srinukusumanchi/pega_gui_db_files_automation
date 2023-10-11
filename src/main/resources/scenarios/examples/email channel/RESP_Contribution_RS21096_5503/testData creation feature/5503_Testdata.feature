@RESPContribution_posNeg_5503_EMAIL_TestDataLoad
Feature: Test data creation for EMAIL RESP Contribution

  @RESPContribution_Email @RESPContribution_Positive_TestData @5503 @RESPContributionEMAIL @RS21096 @1222_5503
  Scenario Outline: RESP Contribution_RS21096_5503_EMAIL Create test data for 1222
    Given load data from "RESPContributionFunds" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write customer open date "<CUST_OPND_DT>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "2" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "2" accounts

    Examples:
      | Test cases                       | Acct_Odt | CUST_OPND_DT |
      | 5503_PRD CD = 02 SUB PRD CD = 05 | 94       | 95           |
      | 5503_PRD CD = 19 SUB PRD CD = 05 | 94       | 95           |
      | 5503_PRD CD = 13 SUB PRD CD = 05 | 94       | 95           |
      | 5503_PRD CD = 07 SUB PRD CD = 01 | 94       | 95           |
      | 5503_PRD CD = 23 SUB PRD CD = 02 | 94       | 95           |
      | 5503_PRD CD = VGD SUB PRD CD= AB | 94       | 95           |
      | 5503_PRD CD = VCL SUB PRD CD= BC | 94       | 95           |
      | 5503_PRD CD = VLR SUB PRD CD= CD | 94       | 95           |
      | 5503_PRD CODE=01  SUB PRD CD=01  | 94       | 95           |
      | 5503_PRD CODE=VGD SUB PRD CD=NF  | 94       | 95           |
      | 5503_SRC_ACCT_STAT_CD! =  A      | 94       | 95           |
      | 5503_SRC_ACCT_STAT_CD! = Open    | 94       | 95           |

  @RESPContribution_Email @RESPContribution_Positive_TestData_1112 @5503 @RESPContributionEMAIL @RS21096 @1112_5503
  Scenario Outline: RESP Contribution_RS21096_5503_EMAIL Create test data for 1112
    Given load data from "RESPContributionFunds" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write customer open date "<CUST_OPND_DT>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "2" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "2" accounts

    Examples:
      | Test cases                                                                                                                                                      | Acct_Odt | CUST_OPND_DT |
      | 5503_CUST_TP_CD=PSNL,5503_Primary Country Cd = CA,5503_CUST_AGE >18,5503_DO_NOT_SOLICIT_F = N,5503_MRKTBLE_F = Y,5503_NOT_AML_KYC = N,5503_Customer Not Decease | 94       | 95           |
      | 5503_CUST_AGE=18                                                                                                                                                | 94       | 95           |
      | 5503_LANG_CD in E                                                                                                                                               | 94       | 95           |
      | 5503_LANG_CD in EN                                                                                                                                              | 94       | 95           |
      | 5503_LANG_CD in F                                                                                                                                               | 94       | 95           |
      | 5503_LANG_CD in FR                                                                                                                                              | 94       | 95           |
      | 5503_LANG_CD in small case_e                                                                                                                                    | 94       | 95           |
      | 5503_LANG_CD in small case_en                                                                                                                                   | 94       | 95           |
      | 5503_LANG_CD in small case_f                                                                                                                                    | 94       | 95           |
      | 5503_LANG_CD in small case_fr                                                                                                                                   | 94       | 95           |
      | 5503_DO_NOT_SOLICIT_F = NULL                                                                                                                                    | 94       | 95           |
      | 5503_NOT_AML_KYC = NULL                                                                                                                                         | 94       | 95           |
      | 5503_CUST_OPND_DT > 90 days                                                                                                                                     | 94       | 95           |
      | 5503_ACCT_ODT > 90 days                                                                                                                                         | 94       | 95           |
      | 5503_CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1                                                                             | 94       | 95           |
      | 5503_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RESP   and CUST_INSIGHTS.CURR_VAL > 1                                                                             | 94       | 95           |
      | 5503_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RESP   and CUST_INSIGHTS.CURR_VAL = 1                                                                             | 94       | 95           |
      | 5503_PLN_ACCT_CD_MASTER = RESP and ACCT_SUBSYS_ID = UF and SRC_ACCT_STAT_CD = Active                                                                            | 94       | 95           |
      | N-5503_PLN_ACCT_CD_MASTER != RESP and ACCT_SUBSYS_ID = UF and  SRC_ACCT_STAT_CD = Active                                                                        | 94       | 95           |
      | N-5503_PLN_ACCT_CD_MASTER = RESP  and ACCT_SUBSYS_ID != UF and SRC_ACCT_STAT_CD = Active                                                                        | 94       | 95           |
      | N-5503_PLN_ACCT_CD_MASTER = RESP and ACCT_SUBSYS_ID = UF and SRC_ACCT_STAT_CD != Active                                                                         | 94       | 95           |
      | N-5503_CUST_TP_CD != PSNL                                                                                                                                       | 94       | 95           |
      | N-5503_Primary Country Cd != CA                                                                                                                                 | 94       | 95           |
      | N-5503_Primary Country Cd = NULL                                                                                                                                | 94       | 95           |
      | N-5503_CUST_AGE < 18                                                                                                                                            | 94       | 95           |
      | N-5503_CUST_AGE = NULL                                                                                                                                          | 94       | 95           |
      | N-5503_LANG_CD NOT in (EN, E, FR, F)                                                                                                                            | 94       | 95           |
      | N-5503_LANG_CD = NULL                                                                                                                                           | 94       | 95           |
      | N-5503_DO_NOT_SOLICIT_F = Y                                                                                                                                     | 94       | 95           |
      | N-5503_MRKTBLE_F = N                                                                                                                                            | 94       | 95           |
      | N-5503_MRKTBLE_F = NULL                                                                                                                                         | 94       | 95           |
      | N-5503_NOT_AML_KYC = Y                                                                                                                                          | 94       | 95           |
      | N-5503_CUST_OPNT_DT < 90 days                                                                                                                                   | 94       | 90           |
      | N-5503_CUST_OPNT_DT = 90 days                                                                                                                                   | 94       | 91           |
      | N-5503_CUST_OPNT_DT = NULL                                                                                                                                      | 94       | NULL         |
      | N-5503_Customer Decease - Y                                                                                                                                     | 94       | 95           |
      | N-5503_Customer Decease - NULL                                                                                                                                  | 94       | 95           |
      | N-5503_ACCT_ODT < 90 Days                                                                                                                                       | 90       | 95           |
      | N-5503_ACCT_ODT = 90 Days                                                                                                                                       | 91       | 95           |
      | N-5503_SRC_ACCT_STAT_CD = NULL                                                                                                                                  | 94       | 95           |
      | N-5503_CUST_INSIGHTS.INSIGHT_CD != CNT_PAGEVISIT_RESP and CUST_INSIGHTS.CURR_VAL => 1                                                                           | 94       | 95           |
      | N-5503_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RESP and CUST_INSIGHTS.CURR_VAL < 1                                                                             | 94       | 95           |
      | N-5503_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RESP and CUST_INSIGHTS.CURR_VAL = NULL                                                                          | 94       | 95           |
      | N-5503_CUST_INSIGHTS.INSIGHT_CD != FLG_RESP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1                                                                          | 94       | 95           |
      | N-5503_CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL!= 1                                                                           | 94       | 95           |
      | N-5503_CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = NULL                                                                        | 94       | 95           |
      | N-5503_CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_CONTRIBUTION and CUST_INSIGHTS.CURR_VAL != 0                                                                         | 94       | 95           |
      | N-5503_CUST_INSIGHTS.INSIGHT_CD != FLG_RESP_CONTRIBUTION and CUST_INSIGHTS.CURR_VAL = 0                                                                         | 94       | 95           |
      | N-5503_PRIMARY_ACCT_HOLDER_FLAG = N                                                                                                                             | 94       | 95           |
      | N-5503_PRIMARY_ACCT_HOLDER_FLAG = NULL                                                                                                                          | 94       | 95           |
      | 5503_Validate Rest period for the offer                                                                                                                         | 94       | 95           |
      | 5503_Validate Persistence period for the offer                                                                                                                  | 94       | 95           |
      | N-5503_DO_NOT_EMAIL_F=Y                                                                                                                                         | 94       | 95           |
      | N-5503_DO_NOT_EMAIL_F=NULL                                                                                                                                      | 94       | 95           |
      | N-5503_Valid Email Flag = N                                                                                                                                     | 94       | 95           |
      | N-5503_Valid Email Flag = NULL                                                                                                                                  | 94       | 95           |
      | N-5503_EMAIL Address = NULL                                                                                                                                     | 94       | 95           |
      | N-5503_First Name = NULL                                                                                                                                        | 94       | 95           |
      | 5503_DO_NOT_EMAIL_F=N                                                                                                                                           | 94       | 95           |
      | 5503_VLD_EML_F=Y                                                                                                                                                | 94       | 95           |
      | 5503_PRIM_EMAIL_ADDRESS!=NULL                                                                                                                                   | 94       | 95           |
      | 5503_INDV_FRST_NM!=NULL/BLANK                                                                                                                                   | 94       | 95           |

  @RESPContribution_Email @RESPContribution_Positive_TestData @5503 @RESPContributionEMAIL @RS21096 @1113_5503
  Scenario Outline: RESP Contribution_RS21096_5503_EMAIL Create test data for 1113
    Given load data from "RESPContributionFunds" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write customer open date "<CUST_OPND_DT>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "3" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "3" accounts

    Examples:
      | Test cases                                                                                                                                                                                                                                                     | CUST_OPND_DT | Acct_Odt |
      | 5503_(CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_CONTRIBUTION and CUST_INSIGHTS.CURR_VAL = 0) and (CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RESP and CUST_INSIGHTS.CURR_VAL => 1)   | 94           | 95       |
      | 5503_(CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_CONTRIBUTION and CUST_INSIGHTS.CURR_VAL = 0) and (CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RESP and CUST_INSIGHTS.CURR_VAL < 1)    | 94           | 95       |
      | 5503_(CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_CONTRIBUTION and CUST_INSIGHTS.CURR_VAL = 0) and (CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD != CNT_PAGEVISIT_RESP and CUST_INSIGHTS.CURR_VAL >=  1) | 94           | 95       |
      | 5503_(CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_CONTRIBUTION and CUST_INSIGHTS.CURR_VAL = 0) and (CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL != 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RESP and CUST_INSIGHTS.CURR_VAL => 1)  | 94           | 95       |
      | 5503_(CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_CONTRIBUTION and CUST_INSIGHTS.CURR_VAL = 0) and (CUST_INSIGHTS.INSIGHT_CD != FLG_RESP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RESP and CUST_INSIGHTS.CURR_VAL => 1)  | 94           | 95       |
