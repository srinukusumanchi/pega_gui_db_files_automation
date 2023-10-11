@5725_D2DPaymentMethods_BatchValidationFeature
Feature: Batch Validation for 5725 D2D Payment Methods

# Base Positive Scenarios that covers both the Creatives for D2DPaymentMethods Offer
  @D2DPaymentsMethod @D2DPaymentsMethod_Base_Positive_Batch_Validation @5725 @EMAIL @RS22056
  Scenario Outline: D2DPaymentsMethod_RS22056_5725_EMAIL Validate offer details against batch file for Base Positive test cases
    Given load data from "D2DPaymentMethod_EML" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    # Need to Review and Change
    And read "D2DPaymentMethods" extract file with batch "SRC_PRD_CD;NTCFlag;MobileActive;CASL_CONSENT_F;Visa_Debit_Purchase;Interac_Flash_Purchase;Digital_Wallet;" Email Specific Text Header
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    # Need to Review and Change
    Then validate D2D Payment Methods details in batch file against database and pega
    Examples:
      | Test cases                                                                                                                |
      | 5725_EML_NTB_BASE_01                                                                                                      |
      | 5725_EML_NTB_BASE_02                                                                                                      |
      | 5725_EML_NOT_AML_KYC_NULL                                                                                                 |
      | 5725_EML_PRV_BNK_IND_eq_Y                                                                                                 |
      | 5725_EML_PRV_BNK_IND_eq_NULL                                                                                              |
      | 5725_ACCT_SUBSYS_ID != SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT <= 6 months   |
      | 5725_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD != Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT <= 6 months   |
      | 5725_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = NULL and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT <= 6 months      |
      | 5725_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD != 9  and Current Date - ACCT_ODT <= 6 months   |
      | 5725_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = NULL  and Current Date - ACCT_ODT <= 6 months |
      | 5725_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT > 6 months     |
      | 5725_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT = NULL         |



# Positive Scenarios with Single and multiple Accounts that covers both the Creatives for D2DPayment method  Offer
  @D2DPaymentsMethod @D2DPaymentsMethod_Positive_SingleandmultipleAccount_Batch_Validation @5725 @EMAIL @RS22056
  Scenario Outline: D2DPaymentsMethod_RS22056_5725_EMAIL Validate offer details against Batch for Positive test cases with Single and multiple Account
    Given load data from "D2DPaymentMethod_EML" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    # Need to Review and Change
    And read "D2DPaymentMethods" extract file with batch "SRC_PRD_CD;NTCFlag;MobileActive;CASL_CONSENT_F;Visa_Debit_Purchase;Interac_Flash_Purchase;Digital_Wallet;" Email Specific Text Header
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    # Need to Review and Change
    Then validate D2D Payment Methods details in batch file against database and pega
    Examples:
      | Test cases                              |
      | 5725_EML_lang_cd_eq_fr                  |
      | 5725_EML_cust_age_eq_18                 |
      | 5725_EML_DNS_eq_NULL                    |
      | 5725_EML_NOT_AML_KYC_NULL               |
      | 5725_EML_NTP_CUST_OPND_DT_gt_120        |
      | 5725_EML_NTP_CUST_OPND_DT_eq_121        |
      | 5725_EML_NTP_UNSUBSCRIBE_FLAG_NULL      |
      | 5725_EML_NTP_HARDBOUNCE_EML_FLAG_NULL   |
      | 5725_EML_NTB_HARDBOUNCE_EML_FLAG_NULL   |
      | 5725_EML_NTB_CUST_OPND_DT_eq_120        |
      | 5725_EML_NTB_CUST_OPND_DT_eq_119        |
      | 5725_EML_NTB_UNSUBSCRIBE_FLAG_eq_NULL   |
      | 5725_EML_MK_BK_INFO_ACCTS_EMAIL_eq_NULL |
      | 5725_EML_ACCT_ODT_eq_14                 |
      | 5725_EML_ACCT_ODT_eq_17                 |
      | 5725_EML_PROD_CD_eq_01_SUB_PROD_eq_01   |
      | 5725_EML_PROD_CD_eq_01_SUB_PROD_eq_02   |
      | 5725_EML_PROD_CD_eq_01_SUB_PROD_eq_03   |
      | 5725_EML_PROD_CD_eq_01_SUB_PROD_eq_04   |
      | 5725_EML_PROD_CD_eq_02_SUB_PROD_eq_01   |
      | 5725_EML_PROD_CD_eq_02_SUB_PROD_eq_02   |
      | 5725_EML_PROD_CD_eq_02_SUB_PROD_eq_03   |
      | 5725_EML_PROD_CD_eq_07_SUB_PROD_eq_11   |
      | 5725_EML_PROD_CD_eq_07_SUB_PROD_eq_12   |
      | 5725_EML_PROD_CD_eq_13_SUB_PROD_eq_01   |
      | 5725_EML_PROD_CD_eq_13_SUB_PROD_eq_03   |
      | 5725_EML_PROD_CD_eq_13_SUB_PROD_eq_07   |
      | 5725_EML_PROD_CD_eq_13_SUB_PROD_eq_08   |
      | 5725_EML_PROD_CD_eq_19_SUB_PROD_eq_01   |
      | 5725_EML_PROD_CD_eq_19_SUB_PROD_eq_02   |
      | 5725_EML_PROD_CD_eq_19_SUB_PROD_eq_03   |
      | 5725_EML_PROD_CD_eq_19_SUB_PROD_eq_04   |
      | 5725_EML_PROD_CD_eq_19_SUB_PROD_eq_07   |
      | 5725_EML_PROD_CD_eq_19_SUB_PROD_eq_08   |
      | 5725_EML_PROD_CD_eq_23_SUB_PROD_eq_01   |
      | 5725_EML_PROD_CD_eq_23_SUB_PROD_eq_03   |

# positive Scenarios that Cover the Test Cases for segmentation and prioritization
  @D2DPaymentsMethod @D2DPaymentsMethod_Positive_5725_segmentation_prioritization_Batch_Validation @5725 @EMAIL @RS22056
  Scenario Outline: D2DPaymentsMethod_RS22056_5725_EMAIL Validate offer details against batch for Positive test cases with Single and multiple Account for segmentation and prioritisation
    Given load data from "D2DPaymentMethod_EML" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    # Need to Review and Change
    And read "D2DPaymentMethods" extract file with batch "SRC_PRD_CD;NTCFlag;MobileActive;CASL_CONSENT_F;Visa_Debit_Purchase;Interac_Flash_Purchase;Digital_Wallet;" Email Specific Text Header
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    # Need to Review and Change
    Then validate D2D Payment Methods details in batch file against database and pega
    Examples:
      | Test cases                                                                                       |
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_01_SRC_SUB_PRD_CD_eq_01                                     |
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_01_SRC_SUB_PRD_CD_eq_02                                     |
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_01_SRC_SUB_PRD_CD_eq_03                                     |
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_01_SRC_SUB_PRD_CD_eq_04                                     |
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_02_SRC_SUB_PRD_CD_eq_01                                     |
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_02_SRC_SUB_PRD_CD_eq_02                                     |
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_02_SRC_SUB_PRD_CD_eq_03                                     |
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_19_SRC_SUB_PRD_CD_eq_01                                     |
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_19_SRC_SUB_PRD_CD_eq_02                                     |
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_19_SRC_SUB_PRD_CD_eq_03                                     |
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_19_SRC_SUB_PRD_CD_eq_04                                     |
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_19_SRC_SUB_PRD_CD_eq_07                                     |
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_19_SRC_SUB_PRD_CD_eq_08                                     |
      | 5725_EML_NTP_Active_BB_SRC_PRD_CD_eq_07_SRC_SUB_PRD_CD_11_Active_AC_REWARD_TP_eq_S               |
      | 5725_EML_NTP_Active_BB_SRC_PRD_CD_eq_07_SRC_SUB_PRD_CD_12_Active_AC_REWARD_TP_eq_T               |
      | 5725_EML_NTP_Active_BB_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_01_Active_AC_REWARD_TP_eq_S               |
      | 5725_EML_NTP_Active_BB_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_03_Active_AC_REWARD_TP_eq_S               |
      | 5725_EML_NTP_Active_BB_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_07_Active_AC_REWARD_TP_eq_T               |
      | 5725_EML_NTP_Active_BB_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_08_Active_AC_REWARD_TP_eq_S               |
      | 5725_EML_NTP_Active_BB_SRC_PRD_CD_eq_23_SRC_SUB_PRD_CD_01_Active_AC_REWARD_TP_eq_S               |
      | 5725_EML_NTP_Active_BB_SRC_PRD_CD_eq_23_SRC_SUB_PRD_CD_03_Active_AC_REWARD_TP_eq_T               |
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_07_SRC_SUB_PRD_CD_11_Active_AC_REWARD_TP_eq_P               |
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_07_Active_AC_REWARD_TP_eq_NULL            |
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_07_SRC_SUB_PRD_CD_12_Active_AC_REWARD_TP_eq_P               |
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_03_Active_AC_REWARD_TP_eq_NULL            |
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_07_Active_AC_REWARD_TP_eq_P               |
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_08_Active_AC_REWARD_TP_eq_NULL            |
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_23_SRC_SUB_PRD_CD_01_Active_AC_REWARD_TP_eq_P               |
      | 5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_23_SRC_SUB_PRD_CD_03_Active_AC_REWARD_TP_eq_NULL            |
      | 5725_EML_NTB_3_Active_BB_SRC_PRD_CD_eq_07_13_23_SRC_SUB_PRD_CD_11_01_01_Active_AC_REWARD_TP_eq_S |
      | 5725_EML_NTB_2_Active_BB_SRC_PRD_CD_eq_07_13_SRC_SUB_PRD_CD_11_01_Active_AC_REWARD_TP_eq_S       |
      | 5725_EML_NTB_3_Active_BB_SRC_PRD_CD_eq_07_13_23_SRC_SUB_PRD_CD_11_01_01_Active_AC_REWARD_TP_eq_R |
      | 5725_EML_NTB_2_Active_BB_SRC_PRD_CD_eq_07_13_SRC_SUB_PRD_CD_11_01_Active_AC_REWARD_TP_eq_Q       |
      | 5725_EML_NTB_3_Active_BB_SRC_PRD_CD_eq_01_02_19_SRC_SUB_PRD_CD_01_02_03                          |
      | 5725_EML_NTB_2_Active_BB_SRC_PRD_CD_eq_01_02_SRC_SUB_PRD_CD_01_02                                |
      | 5725_EML_NTB_2_Active_BB_SRC_PRD_CD_eq_01_07_SRC_SUB_PRD_CD_01_12_Active_AC_REWARD_TP_eq_S       |
      | 5725_EML_NTB_2_Active_BB_SRC_PRD_CD_eq_02_07_SRC_SUB_PRD_CD_01_12_Active_AC_REWARD_TP_eq_S       |
      | 5725_EML_NTB_2_Active_BB_SRC_PRD_CD_eq_19_07_SRC_SUB_PRD_CD_01_12_Active_AC_REWARD_TP_eq_S       |
      | 5725_EML_NTB_2_Active_BB_SRC_PRD_CD_eq_19_13_SRC_SUB_PRD_CD_01_01_Active_AC_REWARD_TP_eq_NULL    |
      | 5725_EML_NTB_2_Active_BB_SRC_PRD_CD_eq_19_07_SRC_SUB_PRD_CD_01_11_Active_AC_REWARD_TP_eq_M       |

  @D2DPaymentsMethod @D2DPaymentsMethod_Static_Positive_Batch_Validation @5725 @EMAIL @RS22056
  Scenario Outline: D2DPaymentsMethod_RS22056_5725_EMAIL Validate offer details against batch file for Base Positive test cases
    Given load data from "D2DPaymentMethod_EML" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    # Need to Review and Change
    And read "D2DPaymentMethods" extract file with batch "SRC_PRD_CD;NTCFlag;MobileActive;CASL_CONSENT_F;Visa_Debit_Purchase;Interac_Flash_Purchase;Digital_Wallet;" Email Specific Text Header
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    # Need to Review and Change
    Then validate D2D Payment Methods details in batch file against database and pega
    Examples:
      | Test cases                                                                                                 |
      | 5725_ARRV_DT = 3 years                                                                                     |
      | 5725_ARRV_DT < 3 years                                                                                     |
      | 5725_ARRV_DT > 3 years                                                                                     |
      | 5725_MOB_LAST_LOGIN_DT < 6 months                                                                          |
      | 5725_MOB_LAST_LOGIN_DT = 6 months                                                                          |
      | 5725_MOB_LAST_LOGIN_DT > 6 months                                                                          |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_VD_VPOS_TXN_TMSTMP = 17 days     |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_VD_VPOS_TXN_TMSTMP < 17 days     |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_VD_VPOS_TXN_TMSTMP > 17 days     |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_VD_OPOS_TXN_TMSTMP = 17 days     |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_VD_OPOS_TXN_TMSTMP < 17 days     |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_VD_OPOS_TXN_TMSTMP > 17 days     |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_FLASH_TXN_DT = 17 days           |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_FLASH_TXN_DT < 17 days           |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_FLASH_TXN_DT > 17 days           |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_APPLE_PAY_TXN_TMSTMP = 17 days   |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_APPLE_PAY_TXN_TMSTMP < 17 days   |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_APPLE_PAY_TXN_TMSTMP > 17 days   |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_ANDROID_PAY_TXN_TMSTMP = 17 days |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_ANDROID_PAY_TXN_TMSTMP < 17 days |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_ANDROID_PAY_TXN_TMSTMP > 17 days |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_SAMSUNG_PAY_TXN_TMSTMP = 17 days |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_SAMSUNG_PAY_TXN_TMSTMP < 17 days |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_SAMSUNG_PAY_TXN_TMSTMP > 17 days |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_SCOTIA_PAY_TXN_TMSTMP = 17 days  |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_SCOTIA_PAY_TXN_TMSTMP < 17 days  |
      | 5725_ACCT_SUBSYS_ID = AC AND EDW_ACCT_STAT_CD = A AND Current Date - LAST_SCOTIA_PAY_TXN_TMSTMP > 17 days  |

