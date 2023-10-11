@BillPaymentTxn_IH_Validation
Feature: Validation of IH for Bill Payment Txn for all channels

  @EMAIL  @BILLPAYMENTTXN @5616 @BILLPAYMENTTXN_5616_IH_POSITIVE @RS21133
  Scenario Outline: Bill Payment Txn Email channel Validate IH for positive test cases
    Given load data from "BillPaymentTxn" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate latest offer details against IH
    Examples:
      | Test cases                                                  |
      | 5616_CUST_TP_CD=PSNL                                        |
      | 5616_Primary Country Cd = CA(KS Acc_<90 days)               |
      | 5616_CUST_AGE =18(AC Acc_<90 days)                          |
      | 5616_CUST_AGE >18(KS Acc_ODT>90 days)                       |
      | 5616_LANG_CD in Capital Letter =E(AC Acc_ODT>90 days)       |
      | 5616_LANG_CD in Capital Letter =EN                          |
      | 5616_LANG_CD in Capital Letter =F                           |
      | 5616_LANG_CD in Capital Letter =FR                          |
      | 5616_LANG_CD in Small Letter = e                            |
      | 5616_LANG_CD in Small Letter = en                           |
      | 5616_LANG_CD in Small Letter = f                            |
      | 5616_LANG_CD in Small Letter = fr                           |
      | 5616_DO_NOT_SOLICIT_F = N                                   |
      | 5616_DO_NOT_SOLICIT_F = NULL                                |
      | 5616_MRKTBLE_F = Y                                          |
      | 5616_DECEASED_F=N                                           |
      | 5616_MOB_LAST_LOGIN_DT = 90 days                            |
      | 5616_SOL_LAST_LOGIN_DT = 90 days                            |
      | 5616_MOB_LAST_LOGIN_DT < 90 days                            |
      | 5616_SOL_LAST_LOGIN_DT < 90 days                            |
      | 5616_MOB_LAST_LOGIN_DT > 90 days                            |
      | 5616_SOL_LAST_LOGIN_DT > 90 days                            |
      | 5616_MOB_SOL_LAST_LOGIN_DT = NULL                           |
      | 5616_MOB_SOL_LAST_LOGIN_DT > 90 days                        |
      | 5616_MK_BK_INFO_ACCTS_EMAIL_F = Y                           |
      | 5616_MK_BK_INFO_ACCTS_EMAIL_F = NULL                        |
      | 5616_DO_NOT_EMAIL_F=N                                       |
      | 5616_VLD_EMAIL_F=Y                                          |
      | 5616_PRIM_EMAIL_ADDRESS != NULL                             |
      | 5616_ACCT_ODT = NULL                                        |
      | 5616_CUST_INSIGHTS.INSIGHT_CD = FLG_Bill_Payment_Prediction |
      | 5616_CUST_INSIGHTS.CURR_VAL = 1                             |
      | 5616_EVENT_DATE - Current Date =7 days                      |
      | 5616_EVENT_DATE - Current Date < 7 days                     |
      | 5616_ACCT_ODT < 90_Inactive                                 |


  @EMAIL  @BILLPAYMENTTXN @5616 @BILLPAYMENTTXN_5616_IH_NEGATIVE @RS21133
  Scenario Outline: Bill Payment Txn Email channel Validate IH for negative test cases
    Given load data from "BillPaymentTxn" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then verify offer should not display
    Examples:
      | Test cases                                                     |
      | N_5616_CUST_TP_CD!=PSNL                                        |
      | N_5616_Primary Country Cd! = CA                                |
      | N_5616_Primary Country Cd = NULL                               |
      | N_5616_CUST_AGE =17                                            |
      | N_5616_CUST_AGE = NULL                                         |
      | N_5616_LANG_CD in Capital Letter = K                           |
      | N_5616_LANG_CD in Capital Letter = NE                          |
      | N_5616_LANG_CD in Capital Letter = NULL                        |
      | N_5616_DO_NOT_SOLICIT_F = Y                                    |
      | N_5616_MRKTBLE_F = N                                           |
      | N_5616_MRKTBLE_F = NULL                                        |
      | N_5616_INDV_FRST_NM = NULL                                     |
      | N_5616_DO_NOT_EMAIL_F= Y                                       |
      | N_5616_DO_NOT_EMAIL_F=NULL                                     |
      | N_5616_VLD_EMAIL_F=N                                           |
      | N_5616_VLD_EMAIL_F=NULL                                        |
      | N_5616_PRIM_EMAIL_ADDRESS = NULL                               |
      | N_5616_DECEASED_F= Y                                           |
      | N_5616_DECEASED_F= NULL                                        |
      | N_5616_MK_BK_INFO_ACCTS_EMAIL_F = N                            |
      | N_5616_PRD_CD=01,SUB_PRD_CD=01_ACCT_ODT<=90 days               |
      | N_5616_PRD_CD=01,SUB_PRD_CD=02_ACCT_ODT<=90 days               |
      | N_5616_PRD_CD=01,SUB_PRD_CD=03_ACCT_ODT<=90 days               |
      | N_5616_PRD_CD=01,SUB_PRD_CD=04_ACCT_ODT<=90 days               |
      | N_5616_PRD_CD=02,SUB_PRD_CD=01_ACCT_ODT<=90 days               |
      | N_5616_PRD_CD=02,SUB_PRD_CD=02_ACCT_ODT<=90 days               |
      | N_5616_PRD_CD=02,SUB_PRD_CD=03_ACCT_ODT<=90 days               |
      | N_5616_PRD_CD=19,SUB_PRD_CD=01_ACCT_ODT<=90 days               |
      | N_5616_PRD_CD=19,SUB_PRD_CD=02_ACCT_ODT<=90 days               |
      | N_5616_PRD_CD=19,SUB_PRD_CD=03_ACCT_ODT<=90 days               |
      | N_5616_PRD_CD=19,SUB_PRD_CD=04_ACCT_ODT<=90 days               |
      | N_5616_PRD_CD=19,SUB_PRD_CD=07_ACCT_ODT<=90 days               |
      | N_5616_PRD_CD=19,SUB_PRD_CD=08_ACCT_ODT<=90 days               |
      | N_5616_PRD_CD=13,SUB_PRD_CD=01_ACCT_ODT<=90 days               |
      | N_5616_PRD_CD=13,SUB_PRD_CD=03_ACCT_ODT<=90 days               |
      | N_5616_PRD_CD=13,SUB_PRD_CD=07_ACCT_ODT<=90 days               |
      | N_5616_PRD_CD=13,SUB_PRD_CD=08_ACCT_ODT<=90 days               |
      | N_5616_PRD_CD=07,SUB_PRD_CD=11_ACCT_ODT<=90 days               |
      | N_5616_PRD_CD=07,SUB_PRD_CD=12_ACCT_ODT<=90 days               |
      | N_5616_PRD_CD=23,SUB_PRD_CD=01_ACCT_ODT<=90 days               |
      | N_5616_PRD_CD=23,SUB_PRD_CD=03_ACCT_ODT<=90 days               |
      | N_5616_CUST_INSIGHTS.INSIGHT_CD! = FLG_Bill_Payment_Prediction |
      | N_5616_CUST_INSIGHTS.CURR_VAL! = 1                             |
      | N_5616_EVENT_DATE - Current Date > days                        |


