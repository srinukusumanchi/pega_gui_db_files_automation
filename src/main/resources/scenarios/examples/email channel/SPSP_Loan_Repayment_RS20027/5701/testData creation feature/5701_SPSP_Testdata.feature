@SPSPLoanRepayment_5701_EMAIL
Feature: Test data creation for EMail SPSP Loan Repayment


  @SPSPLoanRepayment_5701 @EMAIL @SPSPLoanRepayment_5701_POSITIVE_TESTDATA @RS20027 @5701
  Scenario Outline: SPSPLoanRepayment_RS20027_5701_EMAIL Create test data for positive test cases
    Given load data from "SPSPLoanRepayment_EML" excel sheet
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
      | Test cases                                            | std_end_dt |
      | 5701_CUST_TP_CD=PSNL                                  | 121        |
      | 5701_PRIM_CNTRY_CD = CA                               | 121        |
      | 5701_LANG_CD in en                                    | 121        |
      | 5701_LANG_CD in fr                                    | 121        |
      | 5701_EMPLOYEE_STAFF_F = N                             | 121        |
      | 5701_EMPLOYEE_STAFF_F = null                          | 121        |
      | 5701_MRKTBLE_F = Y                                    | 121        |
      | 5701_Valid Email Flag = Y                             | 121        |
      | 5701_PRIM_EMAIL_ADDR != NULL                          | 121        |
      | 5701_INDV_FRST_NM!=NULL                               | 121        |
      | 5701_CUST_AGE = NULL                                  | 121        |
      | 5701_DO_NOT_EMAIL_F = Y                               | 121        |
      | 5701_DO_NOT_EMAIL_F = NULL                            | 121        |
      | 5701_ACCT_SUBSYS_ID=KS                                | 121        |
      | 5701_SRC_ACCT_STAT_CD=Open                            | 121        |
      | 5701_SRC_SYS_PRD_CD = SSL                             | 124        |
      | 5701_SRC_SYS_SUB_PRD_CD = SP                          | 123        |
      | 5701_Current Date - STUDY_END_DT  = 120 Days          | 120        |
      | 5701_Current Date - STUDY_END_DT  = 125 Days          | 125        |
      | 5701_Current Date - STUDY_END_DT  in 120 and 125 days | 122        |


  @SPSPLoanRepayment_5701 @EMAIL @SPSPLoanRepayment_5701_Negative_TESTDATA @RS20027 @5701
  Scenario Outline: SPSPLoanRepayment_RS20027_5701_EMAIL Create test data for negative test cases
    Given load data from "SPSPLoanRepayment_EML" excel sheet
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
      | Test cases                                     | std_end_dt |
      | N_5701_CUST_TP_CD!=PSNL                        | 121        |
      | N_5701_DECEASED_F = Y                          | 121        |
      | N_5701_DECEASED_F = NULL                       | 121        |
      | N_5701_PRIM_CNTRY_CD != CA                     | 121        |
      | N_5701_PRIM_CNTRY_CD = NULL                    | 121        |
      | N_5701_LANG_CD not in (en,fr)                  | 121        |
      | N_5701_LANG_CD = NULL                          | 121        |
      | N_5701_EMPLOYEE_STAFF_F = Y                    | 121        |
      | N_5701_MRKTBLE_F != Y                          | 121        |
      | N_5701_MRKTBLE_F = NULL                        | 121        |
      | N_5701_Valid Email Flag != Y                   | 121        |
      | N_5701_Valid Email Flag = NULL                 | 121        |
      | N_5701_PRIM_EMAIL_ADDR = NULL                  | 121        |
      | N_5701_INDV_FRST_NM = NULL                     | 121        |
      | N_5701_ACCT_SUBSYS_ID != KS                    | 121        |
      | N_5701_SRC_ACCT_STAT_CD != Open                | 121        |
      | N_5701_SRC_SYS_PRD_CD != SSL                   | 121        |
      | N_5701_SRC_SYS_SUB_PRD_CD != SP                | 121        |
      | N_5701_ACCT_SUBSYS_ID = NULL                   | 121        |
      | N_5701_SRC_ACCT_STAT_CD = NULL                 | 121        |
      | N_5701_SRC_SYS_PRD_CD = NULL                   | 121        |
      | N_5701_SRC_SYS_SUB_PRD_CD = NULL               | 121        |
      | N_5701_Current Date - STUDY_END_DT  = 119 Days | 119        |
      | N_5701_Current Date - STUDY_END_DT  = 126 Days | 126        |
      | N_5701_Current Date - STUDY_END_DT  < 120 Days | 111        |
      | N_5701_Current Date - STUDY_END_DT  > 125 Days | 135        |


  @SPSPLoanRepayment_5701 @EMAIL @SPSPLoanRepayment_5701_Negative_Custinsights_TESTDATA @RS20027 @5701
  Scenario Outline: SPSPLoanRepayment_RS20027_5701_EMAIL Create test data for negative test cases
    Given load data from "SPSPLoanRepayment_EML" excel sheet
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


