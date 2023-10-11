Feature: Validation for 5464 TFSACrossSell

  @SPSPLoanRepayment @SPSPLoanRepayment_Email_IH_Positive_Validation_5702 @5702 @EMAIL @RS20027  @AUTOTESTTOTAL#21
  Scenario Outline: SPSPLoanRepaymentEmail_RS20027_5702_EMAIL Validate IH details against database and pega for Positive test cases
    Given load data from "SPSPLoanRepayment_EML" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate SPSP offer details against IH
    Examples:
      | Test cases                                                     |
      | 5702_DECEASED_F = N                                            |
      | 5702_PRIM_CNTRY_CD = CA                                        |
      | 5702_LANG_CD in en                                             |
      | 5702_LANG_CD in fr                                             |
      | 5702_EMPLOYEE_STAFF_F = N                                      |
      | 5702_EMPLOYEE_STAFF_F = null                                   |
      | 5702_MRKTBLE_F = Y                                             |
      | 5702_Valid Email Flag = Y                                      |
      | 5702_PRIM_EMAIL_ADDR != NULL                                   |
      | 5702_INDV_FRST_NM!=NULL                                        |
      | 5702_CUST_AGE = NULL                                           |
      | 5702_DO_NOT_EMAIL_F = Y                                        |
      | 5702_DO_NOT_EMAIL_F = NULL                                     |
      | 5702_ACCT_SUBSYS_ID=KS                                         |
      | 5702_SRC_ACCT_STAT_CD=Open                                     |
      | 5702_SRC_SYS_PRD_CD = SSL                                      |
      | 5702_SRC_SYS_SUB_PRD_CD = SP                                   |
      | 5702_Current Date - STUDY_END_DT  = 140 Days                   |
      | 5702_Current Date - STUDY_END_DT  = 149 Days                   |
      | 5702_Current Date - STUDY_END_DT  in 140 and 149 days          |
      | 5702_INSIGHT_CD = FLG_SPSP_REPAYMENT_RS20027 and CURR_VAL! = 1 |


  @SPSPLoanRepayment @SPSPLoanRepayment_Email_IH_Negative_Validation_5702 @5702 @EMAIL @RS20027  @AUTOTESTTOTAL#27
  Scenario Outline: SPSPLoanRepaymentEmail_RS20027_5702_EMAIL Validate IH details for Negative test cases
    Given load data from "SPSPLoanRepayment_EML" excel sheet
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
      | Test cases                                                      |
      | N_5702_CUST_TP_CD!=PSNL                                         |
      | N_5702_DECEASED_F = Y                                           |
      | N_5702_DECEASED_F = NULL                                        |
      | N_5702_PRIM_CNTRY_CD != CA                                      |
      | N_5702_PRIM_CNTRY_CD = NULL                                     |
      | N_5702_LANG_CD not in (en,fr)                                   |
      | N_5702_LANG_CD = NULL                                           |
      | N_5702_EMPLOYEE_STAFF_F = Y                                     |
      | N_5702_MRKTBLE_F != Y                                           |
      | N_5702_MRKTBLE_F = NULL                                         |
      | N_5702_Valid Email Flag != Y                                    |
      | N_5702_Valid Email Flag = NULL                                  |
      | N_5702_PRIM_EMAIL_ADDR = NULL                                   |
      | N_5702_INDV_FRST_NM = NULL                                      |
      | N_5702_ACCT_SUBSYS_ID != KS                                     |
      | N_5702_SRC_ACCT_STAT_CD != Open                                 |
      | N_5702_SRC_SYS_PRD_CD != SSL                                    |
      | N_5702_SRC_SYS_SUB_PRD_CD != SP                                 |
      | N_5702_ACCT_SUBSYS_ID = NULL                                    |
      | N_5702_SRC_ACCT_STAT_CD = NULL                                  |
      | N_5702_SRC_SYS_PRD_CD = NULL                                    |
      | N_5702_SRC_SYS_SUB_PRD_CD = NULL                                |
      | N_5702_Current Date - STUDY_END_DT  = 139 Days                  |
      | N_5702_Current Date - STUDY_END_DT  = 150 Days                  |
      | N_5702_Current Date - STUDY_END_DT  < 140 Days                  |
      | N_5702_Current Date - STUDY_END_DT  > 149 Days                  |
      | N_5702_INSIGHT_CD = FLG_SPSP_REPAYMENT_RS20027 and CURR_VAL = 1 |