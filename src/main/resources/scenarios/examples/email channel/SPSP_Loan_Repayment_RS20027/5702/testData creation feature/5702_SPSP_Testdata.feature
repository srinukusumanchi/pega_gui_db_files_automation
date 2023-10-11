@SPSPLoanRepayment_5702
Feature: Test data creation for EMail SPSP Loan Repayment


  @SPSPLoanRepayment_5702 @EMAIL @SPSPLoanRepayment_5702_POSITIVE_TESTDATA @RS20027 @5702
  Scenario Outline: SPSPLoanRepayment_RS20027_5702_EMAIL Create test data for positive test cases
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
      | 5702_DECEASED_F = N                                   | 142        |
      | 5702_PRIM_CNTRY_CD = CA                               | 143        |
      | 5702_LANG_CD in en                                    | 144        |
      | 5702_LANG_CD in fr                                    | 145        |
      | 5702_EMPLOYEE_STAFF_F = N                             | 146        |
      | 5702_EMPLOYEE_STAFF_F = null                          | 147        |
      | 5702_MRKTBLE_F = Y                                    | 148        |
      | 5702_Valid Email Flag = Y                             | 141        |
      | 5702_PRIM_EMAIL_ADDR != NULL                          | 141        |
      | 5702_INDV_FRST_NM!=NULL                               | 141        |
      | 5702_CUST_AGE = NULL                                  | 141        |
      | 5702_DO_NOT_EMAIL_F = Y                               | 141        |
      | 5702_DO_NOT_EMAIL_F = NULL                            | 141        |
      | 5702_ACCT_SUBSYS_ID=KS                                | 141        |
      | 5702_SRC_ACCT_STAT_CD=Open                            | 141        |
      | 5702_SRC_SYS_PRD_CD = SSL                             | 141        |
      | 5702_SRC_SYS_SUB_PRD_CD = SP                          | 141        |
      | 5702_Current Date - STUDY_END_DT  = 140 Days          | 140        |
      | 5702_Current Date - STUDY_END_DT  = 149 Days          | 149        |
      | 5702_Current Date - STUDY_END_DT  in 140 and 149 days | 145        |


  @SPSPLoanRepayment_5702 @EMAIL @SPSPLoanRepayment_5702_Negative_TESTDATA @RS20027 @5702
  Scenario Outline: SPSPLoanRepayment_RS20027_5702_EMAIL Create test data for negative test cases
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
      | N_5702_CUST_TP_CD!=PSNL                        | 141        |
      | N_5702_DECEASED_F = Y                          | 141        |
      | N_5702_DECEASED_F = NULL                       | 141        |
      | N_5702_PRIM_CNTRY_CD != CA                     | 141        |
      | N_5702_PRIM_CNTRY_CD = NULL                    | 141        |
      | N_5702_LANG_CD not in (en,fr)                  | 141        |
      | N_5702_LANG_CD = NULL                          | 141        |
      | N_5702_EMPLOYEE_STAFF_F = Y                    | 141        |
      | N_5702_MRKTBLE_F != Y                          | 141        |
      | N_5702_MRKTBLE_F = NULL                        | 141        |
      | N_5702_Valid Email Flag != Y                   | 141        |
      | N_5702_Valid Email Flag = NULL                 | 141        |
      | N_5702_PRIM_EMAIL_ADDR = NULL                  | 141        |
      | N_5702_INDV_FRST_NM = NULL                     | 141        |
      | N_5702_ACCT_SUBSYS_ID != KS                    | 141        |
      | N_5702_SRC_ACCT_STAT_CD != Open                | 141        |
      | N_5702_SRC_SYS_PRD_CD != SSL                   | 141        |
      | N_5702_SRC_SYS_SUB_PRD_CD != SP                | 141        |
      | N_5702_ACCT_SUBSYS_ID = NULL                   | 149        |
      | N_5702_SRC_ACCT_STAT_CD = NULL                 | 149        |
      | N_5702_SRC_SYS_PRD_CD = NULL                   | 149        |
      | N_5702_SRC_SYS_SUB_PRD_CD = NULL               | 149        |
      | N_5702_Current Date - STUDY_END_DT  = 139 Days | 139        |
      | N_5702_Current Date - STUDY_END_DT  = 150 Days | 150        |
      | N_5702_Current Date - STUDY_END_DT  < 140 Days | 130        |
      | N_5702_Current Date - STUDY_END_DT  > 149 Days | 160        |


  @SPSPLoanRepayment_5702 @EMAIL @SPSPLoanRepayment_5702_Negative_Custinsights_TESTDATA @RS20027 @5702
  Scenario Outline: SPSPLoanRepayment_RS20027_5702_EMAIL Create test data for negative test cases
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
      | N_5702_INSIGHT_CD = FLG_SPSP_REPAYMENT_RS20027 and CURR_VAL = 1 | 141        |
      | 5702_INSIGHT_CD = FLG_SPSP_REPAYMENT_RS20027 and CURR_VAL! = 1  | 141        |
