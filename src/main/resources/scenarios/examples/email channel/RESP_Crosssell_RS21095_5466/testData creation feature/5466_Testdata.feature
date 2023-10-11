@RESPCrossSell_5466_EMAIL
Feature: Test data creation for EMAIL RESP Cross Sell


  @RESPCrossSell_Email @RESPCrossSell_Positive_TestData_1 @5466 @RESPCrossSellEMAIL @RS21091 @1111_5466
  Scenario Outline: RESP Cross Sell_RS21091_5466_EMAIL Create test data for 1111
    Given load data from "RESPCrossSell" excel sheet
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
    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table

    Examples:
      | Test cases                                                                                                                                                      | CUST_OPND_DT | Acct_Odt |
      | 5466_CUST_TP_CD=PSNL,5466_Primary Country Cd = CA,5466_CUST_AGE >18,5466_DO_NOT_SOLICIT_F = N,5466_MRKTBLE_F = Y,5466_NOT_AML_KYC = N,5466_Customer Not Decease | 100          | 100      |
      | 5466_CUST_AGE=18                                                                                                                                                | 100          | 100      |
      | 5466_LANG_CD in E                                                                                                                                               | 100          | 100      |
      | 5466_LANG_CD in EN                                                                                                                                              | 100          | 100      |
      | 5466_LANG_CD in F                                                                                                                                               | 100          | 100      |
      | 5466_LANG_CD in FR                                                                                                                                              | 100          | 100      |
      | 5466_LANG_CD in small case_e                                                                                                                                    | 100          | 100      |
      | 5466_LANG_CD in small case_en                                                                                                                                   | 100          | 100      |
      | 5466_LANG_CD in small case_f                                                                                                                                    | 100          | 100      |
      | 5466_LANG_CD in small case_fr                                                                                                                                   | 100          | 100      |
      | 5466_DO_NOT_SOLICIT_F = NULL                                                                                                                                    | 100          | 100      |
      | 5466_DO_NOT_EMAIL_F=N                                                                                                                                           | 100          | 100      |
      | 5466_VLD_EML_F=Y                                                                                                                                                | 100          | 100      |
      | 5466_PRIM_EMAIL_ADDRESS!=NULL                                                                                                                                   | 100          | 100      |
      | 5466_INDV_FRST_NM!=NULL/BLANK                                                                                                                                   | 100          | 100      |
      | 5466_NOT_AML_KYC = NULL                                                                                                                                         | 100          | 100      |
      | 5466_CUST_OPND_DT > 90 days                                                                                                                                     | 92           | 100      |
      | 5466_ACCT_ODT > 90 days                                                                                                                                         | 100          | 92       |
      | 5466_CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1                                                                             | 100          | 100      |
      | 5466_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RESP   and CUST_INSIGHTS.CURR_VAL > 1                                                                             | 100          | 100      |
      | 5466_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RESP   and CUST_INSIGHTS.CURR_VAL = 1                                                                             | 100          | 100      |
      | 5466_CUST_DIM.CHILD_TAX_BENEFIT_START_DATE within 30 days OR CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1                     | 100          | 100      |
      | 5466_CUST_DIM.CHILD_TAX_BENEFIT_START_DATE within 30 days OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RESP and CUST_INSIGHTS.CURR_VAL => 1                      | 100          | 100      |
      | 5466_CHILD_TAX_BENEFIT_START_DATE within 30 days OR CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL! = 1                             | 100          | 100      |
      | 5466_CUST_DIM.CHILD_TAX_BENEFIT_START_DATE > 30 days OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_TFSA and CUST_INSIGHTS.CURR_VAL => 1                           | 100          | 100      |
      | 5466_PRD CODE=01  SUB PRD CD=01                                                                                                                                 | 100          | 100      |
      | 5466_PRD CODE=VGD SUB PRD CD=NF                                                                                                                                 | 100          | 100      |
      | N-5466_CUST_TP_CD != PSNL                                                                                                                                       | 100          | 100      |
      | N-5466_Primary Country Cd != CA                                                                                                                                 | 100          | 100      |
      | N-5466_Primary Country Cd = NULL                                                                                                                                | 100          | 100      |
      | N-5466_CUST_AGE < 18                                                                                                                                            | 100          | 100      |
      | N-5466_CUST_AGE = NULL                                                                                                                                          | 100          | 100      |
      | N-5466_LANG_CD NOT in (EN, E, FR, F)                                                                                                                            | 100          | 100      |
      | N-5466_LANG_CD = NULL                                                                                                                                           | 100          | 100      |
      | N-5466_DO_NOT_SOLICIT_F = Y                                                                                                                                     | 100          | 100      |
      | N-5466_MRKTBLE_F = N                                                                                                                                            | 100          | 100      |
      | N-5466_MRKTBLE_F = NULL                                                                                                                                         | 100          | 100      |
      | N-5466_NOT_AML_KYC = Y                                                                                                                                          | 100          | 100      |
      | N-5466_CUST_OPNT_DT < 90 days                                                                                                                                   | 90           | 100      |
      | N-5466_CUST_OPNT_DT = 90 days                                                                                                                                   | 91           | 100      |
      | N-5466_CUST_OPNT_DT = NULL                                                                                                                                      | NULL         | 100      |
      | N-5466_Customer Decease - Y                                                                                                                                     | 100          | 100      |
      | N-5466_Customer Decease - NULL                                                                                                                                  | 100          | 100      |
      | N-5466_ACCT_ODT < 90 Days                                                                                                                                       | 100          | 90       |
      | N-5466_ACCT_ODT = 90 Days                                                                                                                                       | 100          | 91       |
      | 5466_PRD CD = 02 SUB PRD CD = 05                                                                                                                              | 100          | 100      |
      | 5466_PRD CD = 19 SUB PRD CD = 05                                                                                                                              | 100          | 100      |
      | 5466_PRD CD = 13 SUB PRD CD = 05                                                                                                                              | 100          | 100      |
      | 5466_PRD CD = 07 SUB PRD CD = 01                                                                                                                              | 100          | 100      |
      | 5466_PRD CD = 23 SUB PRD CD = 02                                                                                                                              | 100          | 100      |
      | 5466_PRD CD = VGD SUB PRD CD= AB                                                                                                                              | 100          | 100      |
      | 5466_PRD CD = VCL SUB PRD CD= BC                                                                                                                              | 100          | 100      |
      | 5466_PRD CD = VLR SUB PRD CD= CD                                                                                                                              | 100          | 100      |
      | 5466_SRC_ACCT_STAT_CD! =  A                                                                                                                                   | 100          | 100      |
      | 5466_SRC_ACCT_STAT_CD! = Open                                                                                                                                 | 100          | 100      |
      | 5466_SRC_ACCT_STAT_CD = NULL                                                                                                                                  | 100          | 100      |
      | N-5466_CUST_INSIGHTS.INSIGHT_CD != CNT_PAGEVISIT_RESP and CUST_INSIGHTS.CURR_VAL => 1                                                                           | 100          | 100      |
      | N-5466_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RESP and CUST_INSIGHTS.CURR_VAL < 1                                                                             | 100          | 100      |
      | N-5466_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RESP and CUST_INSIGHTS.CURR_VAL = NULL                                                                          | 100          | 100      |
      | N-5466_CUST_INSIGHTS.INSIGHT_CD != FLG_RESP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1                                                                          | 100          | 100      |
      | N-5466_CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL!= 1                                                                           | 100          | 100      |
      | N-5466_CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = NULL                                                                        | 100          | 100      |
      | N-5466_CUST_INSIGHTS.INSIGHT_CD = NULL and CUST_INSIGHTS.CURR_VAL = NULL and CUST_DIM.CHILD_TAX_BENEFIT_START_DATE = NULL                                       | 100          | 100      |
      | N-5466_DO_NOT_EMAIL_F=Y                                                                                                                                         | 100          | 100      |
      | N-5466_DO_NOT_EMAIL_F=NULL                                                                                                                                      | 100          | 100      |
      | N-5466_Valid Email Flag = N                                                                                                                                     | 100          | 100      |
      | N-5466_Valid Email Flag = NULL                                                                                                                                  | 100          | 100      |
      | N-5466_EMAIL Address = NULL                                                                                                                                     | 100          | 100      |
      | N-5466_First Name = NULL                                                                                                                                        | 100          | 100      |
      | 5466_Validate Rest period for the offer                                                                                                                         | 100          | 100      |
      | 5466_Validate Persistence period for the offer                                                                                                                  | 100          | 100      |


  @RESPCrossSell_Email @RESPCrossSell_Positive_TestData_2 @5466 @RESPCrossSellEMAIL @RS21091 @1221_5466
  Scenario Outline: RESP Cross Sell_RS21091_5466_EMAIL Create test data for 1221
    Given load data from "RESPCrossSell" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write customer open date "<CUST_OPND_DT>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table

    Examples:
      | Test cases                                                                             | CUST_OPND_DT | Acct_Odt |
      | 5466_PLN_ACCT_CD_MASTER != RESP and ACCT_SUBSYS_ID = UF and  SRC_ACCT_STAT_CD = Active | 100          | 100      |
      | 5466_PLN_ACCT_CD_MASTER = RESP  and ACCT_SUBSYS_ID != UF and SRC_ACCT_STAT_CD = Active | 100          | 100      |
      | 5466_PLN_ACCT_CD_MASTER = RESP and ACCT_SUBSYS_ID = UF and SRC_ACCT_STAT_CD != Active  | 100          | 100      |
      | N-5466_PLN_ACCT_CD_MASTER = RESP and ACCT_SUBSYS_ID = UF and SRC_ACCT_STAT_CD = Active | 100          | 100      |


  @RESPCrossSell_Email @RESPCrossSell_Positive_TestData_3 @5466 @RESPCrossSellEMAIL @RS21091 @1112_5466
  Scenario Outline: RESP Cross Sell_RS21091_5466_EMAIL Create test data for 1112
    Given load data from "RESPCrossSell" excel sheet
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
      | Test cases                                                                                                                                                                                                                   | CUST_OPND_DT | Acct_Odt |
      | 5466_CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RESP and CUST_INSIGHTS.CURR_VAL => 1                                                         | 100          | 100      |
      | 5466_CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RESP and CUST_INSIGHTS.CURR_VAL < 1                                                          | 100          | 100      |
      | 5466_CUST_DIM.CHILD_TAX_BENEFIT_START_DATE within 30 days OR CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RESP and CUST_INSIGHTS.CURR_VAL => 1 | 100          | 100      |
      | 5466_CUST_DIM.CHILD_TAX_BENEFIT_START_DATE within 30 days OR CUST_INSIGHTS.INSIGHT_CD = FLG_RESP_OUT_PAYMENT and CUST_INSIGHTS.CURR_VAL = 1 OR CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_RESP and CUST_INSIGHTS.CURR_VAL < 1  | 100          | 100      |


  @RESPCrossSell_Email @RESPCrossSell_Positive_TestData_4 @5466 @RESPCrossSellEMAIL @RS21091 @111_5466
  Scenario Outline: RESP Cross Sell_RS21091_5466_EMAIL Create test data for 111
    Given load data from "RESPCrossSell" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write customer open date "<CUST_OPND_DT>" into "CUST_DIM" sheet for "<Test cases>"
    And write CHILD_TAX_BENEFIT_START_DATE "<CHILD_TAX_BENEFIT_START_DATE>" into "CUST_DIM" sheet for "<Test cases>"
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

    Examples:
      | Test cases                                                | CUST_OPND_DT | Acct_Odt | CHILD_TAX_BENEFIT_START_DATE |
      | 5466_CUST_DIM.CHILD_TAX_BENEFIT_START_DATE within 30 days | 100          | 100      | 25                           |
      | 5466_CUST_DIM.CHILD_TAX_BENEFIT_START_DATE = 30 days      | 100          | 100      | 31                           |
      | N-5466_CUST_DIM.CHILD_TAX_BENEFIT_START_DATE > 30 days    | 100          | 100      | 32                           |


