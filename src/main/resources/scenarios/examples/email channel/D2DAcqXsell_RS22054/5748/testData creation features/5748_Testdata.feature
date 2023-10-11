@5748_TestDataCreation
Feature: Test data creation for D2D Acq Cross Sell


  @D2DACQCrossSell @D2DAcqCrossSell_Positive_TestData  @5748 @EMAIL @RS22054
  Scenario Outline: D2D Acq Cross Sell 5748_EMAIL Create test data for positive test cases for single account
    Given load data from "D2DAcqCrossSell" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write  Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>"
    And  write Event Date "<Event_Date>" value into sheet "CUST_INSIGHTS" for "<Test cases>"
    When write account number into "CUST_INSIGHTS" sheet for "<Test cases>"
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table
    Examples:
      | Test cases                                                                                     | Event_Date |
      | 5748_DECEASED_F = N                                                                            | 1          |
      | 5748_CUST_TP_CD = PSNL                                                                         | 2          |
      | 5748_PRIM_CNTRY_CD = CA                                                                        | 3          |
      | 5748_CUST_AGE = 18                                                                             | 4          |
      | 5748_CUST_AGE = 65                                                                             | 5          |
      | 5748_CUST_AGE>=18 AND <=65                                                                     | 6          |
      | 5748_LANG_CD = en                                                                              | 7          |
      | 5748_LANG_CD = fr                                                                              | 8          |
      | 5748_EMPLOYEE_STAFF_F = N                                                                      | 1          |
      | 5748_EMPLOYEE_STAFF_F = NULL                                                                   | 1          |
      | 5748_MRKTBLE_F = Y                                                                             | 1          |
      | 5748_NOT_AML_KYC !=  Y                                                                         | 1          |
      | 5748_NOT_AML_KYC = NULL                                                                        | 1          |
      | 5748_ITRADE_MCLEOD_F != Y                                                                      | 1          |
      | 5748_ITRADE_MCLEOD_F = NULL                                                                    | 1          |
      | 5748_DO_NOT_SOLICIT_F != Y                                                                     | 1          |
      | 5748_DO_NOT_SOLICIT_F = NULL                                                                   | 1          |
      | 5748_HAS_CLOSED_CHQ_F ! = Y                                                                    | 1          |
      | 5748_HAS_CLOSED_CHQ_F = NULL                                                                   | 1          |
      | 5748_VLD_EMAIL_F = Y                                                                           | 1          |
      | 5748_PRIM_EMAIL_ADDR not null  or blank                                                        | 1          |
      | 5748_INDV_FRST_NM not null or blank                                                            | 1          |
      | 5748_DO_NOT_EMAIL_F  = N                                                                       | 1          |
      | 5748_MK_BK_OFFERS_EMAIL != N                                                                   | 1          |
      | 5748_MK_BK_OFFERS_EMAIL = NULL                                                                 | 1          |
      | 5748_INSIGHT_CD = FLG_D2D_ABANDON_APP and CURR_VAL = 1 and CURRENT DATE - EVENT_DATE < 8 days  | 7          |
      | 5748_INSIGHT_CD = FLG_D2D_ABANDON_APP and CURR_VAL = 2 and CURRENT DATE - EVENT_DATE = 8 days  | 8          |
      | 5748_INSIGHT_CD = FLG_D2D_ABANDON_APP and CURR_VAL = 3 and CURRENT DATE - EVENT_DATE = 8 days  | 8          |
      | 5748_INSIGHT_CD = FLG_D2D_ABANDON_APP and CURR_VAL = 4 and CURRENT DATE - EVENT_DATE < 8 days  | 1          |
      | 5748_ACCT_SUBSYS_ID! = BB and SRC_ACCT_STAT_CD = A and PROD_HIER_LEVEL_4 = Chequing Accounts   | 1          |
      | 5748_ACCT_SUBSYS_ID = NULL and SRC_ACCT_STAT_CD = A and PROD_HIER_LEVEL_4 = Chequing Accounts  | 1          |
      | 5748_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD != A and PROD_HIER_LEVEL_4 = Chequing Accounts   | 1          |
      | 5748_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD = NULL and PROD_HIER_LEVEL_4 = Chequing Accounts | 1          |
      | 5748_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD = A and PROD_HIER_LEVEL_4 != Chequing Accounts   | 1          |
      | 5748_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD = A and PROD_HIER_LEVEL_4 = NULL                 | 1          |


  @D2DACQCrossSell @D2DAcqCrossSell_Negative_TestData  @5748 @EMAIL @RS22054
  Scenario Outline: D2D Acq Cross Sell 5748_EMAIL Create test data for negative test cases for single account
    Given load data from "D2DAcqCrossSell" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write  Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>"
    And  write Event Date "<Event_Date>" value into sheet "CUST_INSIGHTS" for "<Test cases>"
    When write account number into "CUST_INSIGHTS" sheet for "<Test cases>"
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table
    Examples:
      | Test cases                                                                                                   | Event_Date |
      | N_5748_DECEASED_F != N                                                                                       | 1          |
      | N_5748_DECEASED_F = NULL                                                                                     | 1          |
      | N_5748_CUST_TP_CD != PSNL                                                                                    | 1          |
      | N_5748_CUST_TP_CD = NULL                                                                                     | 1          |
      | N_5748_PRIM_CNTRY_CD != CA                                                                                   | 1          |
      | N_5748_PRIM_CNTRY_CD = NULL                                                                                  | 1          |
      | N_5748_CUST_AGE < 18                                                                                         | 1          |
      | N_5748_CUST_AGE > 65                                                                                         | 1          |
      | N_5748_CUST_AGE = NULL                                                                                       | 1          |
      | N_5748_LANG_CD not in (en,fr)                                                                                | 1          |
      | N_5748_LANG_CD = NULL                                                                                        | 1          |
      | N_5748_EMPLOYEE_STAFF_F != N                                                                                 | 1          |
      | N_5748_MRKTBLE_F != Y                                                                                        | 1          |
      | N_5748_MRKTBLE_F = NULL                                                                                      | 1          |
      | N_5748_NOT_AML_KYC =  Y                                                                                      | 1          |
      | N_5748_ITRADE_MCLEOD_F = Y                                                                                   | 1          |
      | N_5748_DO_NOT_SOLICIT_F = Y                                                                                  | 1          |
      | N_5748_HAS_CLOSED_CHQ_F  = Y                                                                                 | 1          |
      | N_5748_VLD_EMAIL_F != Y                                                                                      | 1          |
      | N_5748_VLD_EMAIL_F = NULL                                                                                    | 1          |
      | N_5748_PRIM_EMAIL_ADDR = NULL                                                                                | 1          |
      | N_5748_PRIM_EMAIL_ADDR = BLANK                                                                               | 1          |
      | N_5748_INDV_FRST_NM = NULL                                                                                   | 1          |
      | N_5748_INDV_FRST_NM = BLANK                                                                                  | 1          |
      | N_5748_DO_NOT_EMAIL_F != N                                                                                   | 1          |
      | N_5748_DO_NOT_EMAIL_F = NULL                                                                                 | 1          |
      | N_5748_MK_BK_OFFERS_EMAIL = N                                                                                | 1          |
      | N_5748_INSIGHT_CD = FLG_D2D_ABANDON_APP and CURR_VAL not in (1,2,3,4) and CURRENT DATE - EVENT_DATE < 8 days | 1          |
      | N_5748_INSIGHT_CD = FLG_D2D_ABANDON_APP and CURR_VAL = NULL and CURRENT DATE - EVENT_DATE < 8 days           | 1          |
      | N_5748_INSIGHT_CD = FLG_D2D_ABANDON_APP and CURR_VAL in (1,2,3,4) and CURRENT DATE - EVENT_DATE > 8 days     | 9          |
      | N_5748_INSIGHT_CD = FLG_D2D_ABANDON_APP and CURR_VAL in (1,2,3,4) and CURRENT DATE - EVENT_DATE = NULL       | NULL       |
      | N_5748_PHYSICIANS_F = Y_IH Summary_pychannel = COS_current date - lead start date =< 365 days                | 1          |
      | N_5748_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD = A and PROD_HIER_LEVEL_4 = Chequing Accounts                | 1          |