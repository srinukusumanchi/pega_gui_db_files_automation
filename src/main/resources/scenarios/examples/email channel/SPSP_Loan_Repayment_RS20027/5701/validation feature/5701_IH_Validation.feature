Feature: Validation for 5464 TFSACrossSell

  @SPSPLoanRepayment @SPSPLoanRepayment_Email_IH_Positive_Validation_5701 @5701 @EMAIL @RS20027  @AUTOTESTTOTAL#21
  Scenario Outline: SPSPLoanRepaymentEmail_RS20027_5701_EMAIL Validate IH details against database and pega for Positive test cases
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
      | 5701_CUST_TP_CD=PSNL                                           |
      | 5701_PRIM_CNTRY_CD = CA                                        |
      | 5701_LANG_CD in en                                             |
      | 5701_LANG_CD in fr                                             |
      | 5701_EMPLOYEE_STAFF_F = N                                      |
      | 5701_EMPLOYEE_STAFF_F = null                                   |
      | 5701_MRKTBLE_F = Y                                             |
      | 5701_Valid Email Flag = Y                                      |
      | 5701_PRIM_EMAIL_ADDR != NULL                                   |
      | 5701_INDV_FRST_NM!=NULL                                        |
      | 5701_CUST_AGE = NULL                                           |
      | 5701_DO_NOT_EMAIL_F = Y                                        |
      | 5701_DO_NOT_EMAIL_F = NULL                                      |
      | 5701_ACCT_SUBSYS_ID=KS                                         |
      | 5701_SRC_ACCT_STAT_CD=Open                                     |
      | 5701_SRC_SYS_PRD_CD = SSL                                      |
      | 5701_SRC_SYS_SUB_PRD_CD = SP                                   |
      | 5701_Current Date - STUDY_END_DT  = 120 Days                   |
      | 5701_Current Date - STUDY_END_DT  = 125 Days                   |
      | 5701_Current Date - STUDY_END_DT  in 120 and 125 days          |
      | 5701_INSIGHT_CD = FLG_SPSP_REPAYMENT_RS20027 and CURR_VAL! = 1 |


  @SPSPLoanRepayment @SPSPLoanRepayment_Email_IH_Negative_Validation_5701 @5701 @EMAIL @RS20027  @AUTOTESTTOTAL#27
  Scenario Outline: SPSPLoanRepaymentEmail_RS20027_5701_EMAIL Validate IH details for Negative test cases
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
      | N_5701_CUST_TP_CD!=PSNL                                         |
      | N_5701_DECEASED_F = Y                                           |
      | N_5701_DECEASED_F = NULL                                        |
      | N_5701_PRIM_CNTRY_CD != CA                                      |
      | N_5701_PRIM_CNTRY_CD = NULL                                     |
      | N_5701_LANG_CD not in (en,fr)                                   |
      | N_5701_LANG_CD = NULL                                           |
      | N_5701_EMPLOYEE_STAFF_F = Y                                     |
      | N_5701_MRKTBLE_F != Y                                           |
      | N_5701_MRKTBLE_F = NULL                                         |
      | N_5701_Valid Email Flag != Y                                    |
      | N_5701_Valid Email Flag = NULL                                  |
      | N_5701_PRIM_EMAIL_ADDR = NULL                                   |
      | N_5701_INDV_FRST_NM = NULL                                      |
      | N_5701_ACCT_SUBSYS_ID != KS                                     |
      | N_5701_SRC_ACCT_STAT_CD != Open                                 |
      | N_5701_SRC_SYS_PRD_CD != SSL                                    |
      | N_5701_SRC_SYS_SUB_PRD_CD != SP                                 |
      | N_5701_ACCT_SUBSYS_ID = NULL                                    |
      | N_5701_SRC_ACCT_STAT_CD = NULL                                  |
      | N_5701_SRC_SYS_PRD_CD = NULL                                    |
      | N_5701_SRC_SYS_SUB_PRD_CD = NULL                                |
      | N_5701_Current Date - STUDY_END_DT  = 119 Days                  |
      | N_5701_Current Date - STUDY_END_DT  = 126 Days                  |
      | N_5701_Current Date - STUDY_END_DT  < 120 Days                  |
      | N_5701_Current Date - STUDY_END_DT  > 125 Days                  |
      | N_5701_INSIGHT_CD = FLG_SPSP_REPAYMENT_RS20027 and CURR_VAL = 1 |

