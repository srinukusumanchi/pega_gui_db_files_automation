@SPSPLoanRepayment_5701_SB
Feature: Test data creation for SalesBuilder SPSP Loan Repayment


  @SPSPLoanRepayment_5701 @SalesBuilder @SPSPLoanRepayment_SB_5701_POSITIVE_TESTDATA @RS20027 @5701
  Scenario Outline: SPSPLoanRepayment_RS20027_5701_SalesBuilder Create test data for positive test cases
    Given load data from "SPSPLoanRepayment_SB" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write study end date "<std_end_dt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                                                                 | std_end_dt |
      | 5701_CUST_TP_CD=PSNL                                                                       | 121        |
      | 5701_Customer Not Decease                                                                  | 122        |
      | 5701_PRIM_CNTRY_CD = CA                                                                    | 123        |
      | 5701_LANG_CD in en                                                                         | 124        |
      | 5701_LANG_CD in fr                                                                         | 125        |
      | 5701_EMPLOYEE_STAFF_F = N                                                                  | 126        |
      | 5701_EMPLOYEE_STAFF_F = null                                                               | 127        |
      | 5701_MRKTBLE_F = Y                                                                         | 128        |
      | 5701_CUST_AGE = NULL                                                                       | 129        |
      | 5701_DO_NOT_EMAL_F = NULL                                                                  | 121        |
      | 5701_DO_NOT_CALL_F=N                                                                       | 121        |
      | 5701_VLD_PH_F=Y                                                                            | 121        |
      | 5701_ACCT_SUBSYS_ID=KS                                                                     | 121        |
      | 5701_SRC_ACCT_STAT_CD=Open                                                                 | 121        |
      | 5701_SRC_SYS_PRD_CD = SSL                                                                  | 121        |
      | 5701_SRC_SYS_SUB_PRD_CD = SP                                                               | 121        |
      | 5701_Current Date - STUDY_END_DT  = 120 Days                                               | 120        |
      | 5701_Current Date - STUDY_END_DT  = 130 Days                                               | 130        |
      | 5701_Current Date - STUDY_END_DT  in 120 and 130 days                                      | 125        |
      | 5701_GIVEN_NAME = NULL                                                                     | 121        |
      | 5701_ ASSIGNED_FA_TRANSIT is not null                                                      | 121        |
      | 5701_ ASSIGNED_FA_TRANSIT is null_RESP_TRNST_NUM!=NULL                                     | 121        |
      | 5701_ ASSIGNED_FA_TRANSIT is null_RESP_TRNST_NUM is NULL_CLOSEST_TRANSIT_NUM is NOT NULL   | 121        |
      | 5701_ ASSIGNED_FA_TRANSIT is null_RESP_TRNST_NUM is NOT VALID_CLOSEST_TRANSIT_NUM is VALID | 121        |
      | 5701_INDV_TTL_NM = NULL                                                                    | 121        |
      | 5701_First Name = NULL                                                                     | 121        |
      | 5701_INDV_LAST_NM = NULL                                                                   | 121        |


  @SPSPLoanRepayment_5701 @SalesBuilder @SPSPLoanRepayment_SB_5701_Negative_TESTDATA @RS20027 @5701
  Scenario Outline: SPSPLoanRepayment_RS20027_5701_SalesBuilder Create test data for negative test cases
    Given load data from "SPSPLoanRepayment_SB" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write study end date "<std_end_dt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                                                            | std_end_dt |
      | N_5701_CUST_TP_CD!=PSNL                                                               | 121        |
      | N_5701_DECEASED_F = Y                                                                 | 121        |
      | N_5701_DECEASED_F = NULL                                                              | 121        |
      | N_5701_PRIM_CNTRY_CD != CA                                                            | 121        |
      | N_5701_PRIM_CNTRY_CD = NULL                                                           | 121        |
      | N_5701_LANG_CD not in (en,fr)                                                         | 121        |
      | N_5701_LANG_CD = NULL                                                                 | 121        |
      | N_5701_EMPLOYEE_STAFF_F = Y                                                           | 121        |
      | N_5701_MRKTBLE_F != Y                                                                 | 121        |
      | N_5701_MRKTBLE_F = NULL                                                               | 121        |
      | N_5701_DO_NOT_CALL_F != N                                                             | 121        |
      | N_5701_DO_NOT_CALL_F = NULL                                                           | 121        |
      | N_5701_VLD_PH_F != Y                                                                  | 121        |
      | N_5701_VLD_PH_F = NULL                                                                | 121        |
      | N_5701_ACCT_SUBSYS_ID != KS                                                           | 121        |
      | N_5701_SRC_ACCT_STAT_CD != Open                                                       | 121        |
      | N_5701_SRC_SYS_PRD_CD != SSL                                                          | 121        |
      | N_5701_SRC_SYS_SUB_PRD_CD != SP                                                       | 121        |
      | N_5701_ACCT_SUBSYS_ID = NULL                                                          | 121        |
      | N_5701_SRC_ACCT_STAT_CD  = NULL                                                       | 121        |
      | N_5701_SRC_SYS_PRD_CD = NULL                                                          | 121        |
      | N_5701_SRC_SYS_SUB_PRD_CD = NULL                                                      | 121        |
      | N_5701_Current Date - STUDY_END_DT  = 119 Days                                        | 119        |
      | N_5701_Current Date - STUDY_END_DT  = 131 Days                                        | 131        |
      | N_5701_Current Date - STUDY_END_DT  < 120 Days                                        | 100        |
      | N_5701_Current Date - STUDY_END_DT  > 130 Days                                        | 150        |
      | N-5701_CLOSEST_TRANSIT_NUM =NULL && RESP_TRNST_NUM =NULL && ASSIGNED_FA_TRANSIT =NULL | 121        |
      | N-5701_TITLE && FIRST && LAST && GIVEN NAME = NULL                                    | 121        |


  @SPSPLoanRepayment_5701 @SalesBuilder @SPSPLoanRepayment_SB_5701_Negative_Custinsights_TESTDATA @RS20027 @5701
  Scenario Outline: SPSPLoanRepayment_RS20027_5701_SalesBuilder Create test data for negative test cases
    Given load data from "SPSPLoanRepayment_SB" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write study end date "<std_end_dt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write  Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write account number into "CUST_INSIGHTS" sheet for "<Test cases>"
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table
    Examples:
      | Test cases                                                      | std_end_dt |
      | N_5701_INSIGHT_CD = FLG_SPSP_REPAYMENT_RS20027 and CURR_VAL = 1 | 121        |
      | 5701_INSIGHT_CD = FLG_SPSP_REPAYMENT_RS20027 and CURR_VAL! = 1  | 121        |


