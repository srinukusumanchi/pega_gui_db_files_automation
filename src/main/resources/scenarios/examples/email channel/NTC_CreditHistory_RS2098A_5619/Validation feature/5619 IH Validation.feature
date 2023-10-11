@NTCCredithistory_IH_Validation
Feature: Validation of IH for NTC Credit History for all channels

  @EMAIL @NTCCreditHistory @5619 @NTCCreditHistory_5619_IH_POSITIVE @RS2098A @AUTOTESTTOTAL#30
  Scenario Outline: NTC Credit Histry Email channel Validate offer details against IH for Positive test cases
    Given load data from "NTCCreditHistory" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
#    And read NTC Credit History "NTCCreditHist" extract file with Preference customer offer details
#    And the user navigates to pega url
#    When the user enters user name, password and click on login in pega Login screen
#    And click on interaction History by customer link
#    And click on actions and run in interactions history By customer screen
#    And click on period link and clear today value
#    And enter customer id in ih by customer screen and get IH table data
    Then validate latest offer details against IH
    Examples:
      | Test cases                                              |
#      | 5619_EMAIL_Customer Not Deceased                        |
#      | 5619_EMAIL_CUST_AGE=18                                  |
#      | 5619_EMAIL_LANG_CD=E                                    |
#      | 5619_EMAIL_LANG_CD=EN                                   |
#      | 5619_EMAIL_LANG_CD=e_LowerCase                          |
#      | 5619_EMAIL_LANG_CD=en_LowerCase                         |
#      | 5619_EMAIL_DO_NOT_SOLICIT_F=NULL                        |
      | 5619_EMAIL_MCB_IND = Y                                  |
      | 5619_EMAIL_ARR_DT LT 5 years                            |
#      | 5619_EMAIL_13_01                                        |
#      | 5619_EMAIL_13_03                                        |
#      | 5619_EMAIL_13_07                                        |
#      | 5619_EMAIL_13_08                                        |
#      | 5619_EMAIL_07_11                                        |
#      | 5619_EMAIL_07_12                                        |
#      | 5619_EMAIL_Acct_Odt_GE_30_TO_LE_45                      |
#      | 5619_EMAIL_ACCT_SUBSYS_ID = BB AND SRC_ACCT_STAT_CD = A |
#      | 5619_EMAIL_PRIMARY_ACCT_HOLDER_FLAG = Y                 |
#      | 5619_EMAIL_DO_NOT_EMAIL_F=N                             |
#      | 5619_EMAIL_VLD_EMAIL=Y                                  |
#      | 5619_EMAIL_PRIM_EMAIL_ADDR!=NULL                        |
#      | 5619_EMAIL_INDV_FRST_NM!=NULL                           |
#      | 5619_EMAIL_INDV_LAST_NM!=NULL                           |
#      | 5619_EMAIL_MK_BK_INFO_ACCTS_EMAIL_F =Y                  |
#      | 5619_EMAIL_MK_BK_INFO_ACCTS_EMAIL_F =NULL               |
      | 5619_EMAIL_Segment1_ACCT_SUBSYS_ID = KS                 |
#      | 5619_EMAIL_Segment1_SRC_ACCT_STAT_CD = Open             |
#      | 5619_EMAIL_Segment1_PROD_HIER_LEVEL_3 = Credit Cards    |
#      | 5619_EMAIL_Segment1_PRIMARY_ACCT_HOLDER_FLAG = N        |
#      | 5619_EMAIL_Segment1_PRIMARY_ACCT_HOLDER_FLAG = NULL     |


  @EMAIL @NTCCreditHistory @5619 @NTCCreditHistory_5619_IH_NEGATIVE @RS2098A @AUTOTESTTOTAL#52
  Scenario Outline: NTC Credit History Email channel Validate offer details against IH for Negative test cases
    Given load data from "NTCCreditHistory" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
#    And read NTC Credit History "NTCCreditHist" extract file with Preference customer offer details
#    And the user navigates to pega url
#    When the user enters user name, password and click on login in pega Login screen
#    And click on interaction History by customer link
#    And click on actions and run in interactions history By customer screen
#    And click on period link and clear today value
#    And enter customer id in ih by customer screen and get IH table data
    Then verify offer should not display
    Examples:
      | Test cases                                              |
#      | N-5619_EMAIL_Deceased=Y                                 |
#      | N-5619_EMAIL_Deceased=NULL                              |
#      | N-5619_EMAIL_CUST_TP_CD!=PSNL                           |
#      | N-5619_EMAIL_CUST_TP_CD=NULL                            |
#      | N-5619_EMAIL_PRIM_CNTRY_CD!=CA                          |
#      | N-5619_EMAIL_PRIM_CNTRY_CD=NULL                         |
#      | N-5619_EMAIL_CUST_AGE=NULL                              |
#      | N-5619_EMAIL_CUST_AGE<18                                |
#      | N-5619_EMAIL_LANG_CD=G                                  |
#      | N-5619_EMAIL_LANG_CD=NULL                               |
#      | N-5619_EMAIL_DO_NOT_SOLICIT_F=Y                         |
#      | N-5619_EMAIL_MRKTBLE_F=N                                |
#      | N-5619_EMAIL_MRKTBLE_F=NULL                             |
#      | N-5619_EMAIL_MCB_IND = N                                |
#      | N-5619_EMAIL_MCB_IND = NULL                             |
#      | N-5619_EMAIL_ARR_DT_eq_5years|
      | N-5619_EMAIL_ARR_DT GT 5 years |
#      | N-5619_EMAIL_ACCT_SUBSYS_ID!=BB                         |
#      | N-5619_EMAIL_SRC_ACCT_STAT_CD!=A                        |
#      | N-5619_EMAIL_ACCT_ODT < 30 days                         |
#      | N-5619_EMAIL_ACCT_ODT > 45 days                         |
#      | N-5619_EMAIL_SRC_PRD_CD=01 and SRC_SUB_PRD_CD=01        |
#      | N-5619_EMAIL_SRC_PRD_CD=01 and SRC_SUB_PRD_CD=02        |
#      | N-5619_EMAIL_SRC_PRD_CD=01 and SRC_SUB_PRD_CD=03        |
#      | N-5619_EMAIL_SRC_PRD_CD=01 and SRC_SUB_PRD_CD=04        |
#      | N-5619_EMAIL_SRC_PRD_CD=02 and SRC_SUB_PRD_CD=01        |
#      | N-5619_EMAIL_SRC_PRD_CD=02 and SRC_SUB_PRD_CD=02        |
#      | N-5619_EMAIL_SRC_PRD_CD=02 and SRC_SUB_PRD_CD=03        |
#      | N-5619_EMAIL_SRC_PRD_CD=19 and SRC_SUB_PRD_CD=01        |
#      | N-5619_EMAIL_SRC_PRD_CD=19 and SRC_SUB_PRD_CD=02        |
#      | N-5619_EMAIL_SRC_PRD_CD=19 and SRC_SUB_PRD_CD=03        |
#      | N-5619_EMAIL_SRC_PRD_CD=19 and SRC_SUB_PRD_CD=04        |
#      | N-5619_EMAIL_SRC_PRD_CD=19 and SRC_SUB_PRD_CD=07        |
#      | N-5619_EMAIL_SRC_PRD_CD=19 and SRC_SUB_PRD_CD=08        |
#      | N-5619_EMAIL_SRC_PRD_CD=23 and SRC_SUB_PRD_CD=01        |
#      | N-5619_EMAIL_SRC_PRD_CD=23 and SRC_SUB_PRD_CD=03        |
#      | N-5619_EMAIL_SRC_PRD_CD=13 and SRC_SUB_PRD_CD=02        |
#      | N-5619_EMAIL_SRC_PRD_CD=07 and SRC_SUB_PRD_CD=01        |
#      | N-5619_EMAIL_PRIMARY_ACCT_HOLDER_FLAG = N               |
#      | N-5619_EMAIL_PRIMARY_ACCT_HOLDER_FLAG = NULL            |
#      | N-5619_EMAIL_DO_NOT_EMAIL_F=Y                           |
#      | N-5619_EMAIL_DO_NOT_EMAIL_F=NULL                        |
#      | N-5619_EMAIL_VLD_EMAIL=N                                |
#      | N-5619_EMAIL_VLD_EMAIL=NULL                             |
#      | N-5619_EMAIL_PRIM_EMAIL_ADDR=NULL                       |
#      | N-5619_EMAIL_INDV_FRST_NM=NULL                          |
#      | N-5619_EMAIL_INDV_LAST_NM=NULL                          |
#      | N-5619_EMAIL_MK_BK_INFO_ACCTS_EMAIL_F =N                |
#      | N-5619_EMAIL_Segment1_ACCT_SUBSYS_ID != KS              |
#      | N-5619_EMAIL_Segment1_SRC_ACCT_STAT_CD != Open          |
#      | N-5619_EMAIL_Segment1_PROD_HIER_LEVEL_3 != Credit Cards |
#      | N-5619_EMAIL_2_BBAccounts_1301_0101                     |
#      | N-5619_EMAIL_2_BBAccounts_0711_0201                     |
#      | N-5619_EMAIL_ARR_DT_eq_NULL                             |
