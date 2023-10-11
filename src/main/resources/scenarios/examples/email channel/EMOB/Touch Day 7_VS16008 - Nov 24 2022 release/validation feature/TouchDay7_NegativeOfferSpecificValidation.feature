@EMOB_Touch7_IH_Validation
Feature: Validation for EMOB Touch 7

  
#  Name:	EMOB Notification
#  Code:	VS16008
#  Data Specs:	https://confluence.agile.bns/display/CIMCAMP/Customer+Interaction+Ecosystem+-+Workstream+4
#  Welcome to  ScotiaGold No Fee	2432
#  Welcome to SCENE VISA Card Regular	2437
#  Welcome to SCENE VISA Card Student	2438
#  Welcome to Value VISA Regular	2441
#  Welcome to Value VISA No Fee	2444
#  Welcome to Scotia Momentum VISA Infinite	2445
#  Welcome to Scotia Momentum VISA Regular	2446
#  Welcome to Scotia Momentum No-Fee VISA	2447
#  Welcome to L earn VISA Card Student	2448
#  Welcome to GM Visa Card (Classic)	2449
#  Welcome to GM Visa Infinite Card	2450
#  Welcome to Scotiabank Gold Amex	4749
#  Welcome to Scotiabank Amex	4954
#  Welcome to Scotiabank Platinum Amex	4955
#  Welcome to Scotiabank Rewards Visa	4956
#  Welcome to Scotiabank Passport Visa Infinite	4957
#  Welcome to ScotiaGold Passport VISA	4958
  @EMOB @EMOBTouchDay7_Negative_20Nov2022release_Validation @Workstream-4 @EMAIL @VS16008
  Scenario Outline:EMOB Touch-7_VS16008_EMAIL Validate offer details are not displayed against IH for Negative test cases for each offer as part of Nov 10 release
    Given load data from "EMOBTouch7" excel sheet
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
      | Test cases                                  |
      | Touch7_N-2437_NOT_AML_KYC_eq_Y              |
      | Touch7_N-2437_SRC_ACCT_STAT_CD_ne_Open      |
      | Touch7_N-2437_SRC_ACCT_STAT_CD_eq_NULL      |
      | Touch7_N-2437_acct_opn_dt is lessthan 5     |
      | Touch7_N-2437_acct_opn_dt is greater than 8 |
      | Touch7_N-2437_acct_opn_dt is NULL           |
      | Touch7_N-2438_NOT_AML_KYC_eq_Y              |
      | Touch7_N-2438_SRC_ACCT_STAT_CD_ne_Open      |
      | Touch7_N-2438_SRC_ACCT_STAT_CD_eq_NULL      |
      | Touch7_N-2441_NOT_AML_KYC_eq_Y              |
      | Touch7_N-2441_SRC_ACCT_STAT_CD_ne_Open      |
      | Touch7_N-2441_SRC_ACCT_STAT_CD_eq_NULL      |
      | Touch7_N-2445_NOT_AML_KYC_eq_Y              |
      | Touch7_N-2445_SRC_ACCT_STAT_CD_ne_Open      |
      | Touch7_N-2445_SRC_ACCT_STAT_CD_eq_NULL      |
      | Touch7_N-2446_NOT_AML_KYC_eq_Y              |
      | Touch7_N-2446_SRC_ACCT_STAT_CD_ne_Open      |
      | Touch7_N-2446_SRC_ACCT_STAT_CD_eq_NULL      |
      | Touch7_N-2447_NOT_AML_KYC_eq_Y              |
      | Touch7_N-2447_SRC_ACCT_STAT_CD_ne_Open      |
      | Touch7_N-2447_SRC_ACCT_STAT_CD_eq_NULL      |
      | Touch7_N-4749_NOT_AML_KYC_eq_Y              |
      | Touch7_N-4749_SRC_ACCT_STAT_CD_ne_Open      |
      | Touch7_N-4749_SRC_ACCT_STAT_CD_eq_NULL      |
      | Touch7_N-4954_NOT_AML_KYC_eq_Y              |
      | Touch7_N-4954_SRC_ACCT_STAT_CD_ne_Open      |
      | Touch7_N-4954_SRC_ACCT_STAT_CD_eq_NULL      |
      | Touch7_N-4955_NOT_AML_KYC_eq_Y              |
      | Touch7_N-4955_SRC_ACCT_STAT_CD_ne_Open      |
      | Touch7_N-4955_SRC_ACCT_STAT_CD_eq_NULL      |
      | Touch7_N-4957_NOT_AML_KYC_eq_Y              |
      | Touch7_N-4957_SRC_ACCT_STAT_CD_ne_Open      |
      | Touch7_N-4957_SRC_ACCT_STAT_CD_eq_NULL      |
      | Touch7_N-5894_NOT_AML_KYC_eq_Y              |
      | Touch7_N-5894_SRC_ACCT_STAT_CD_ne_Open      |
      | Touch7_N-5894_SRC_ACCT_STAT_CD_eq_NULL      |
