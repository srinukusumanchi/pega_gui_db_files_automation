@5725_D2DPaymentMethods_IHValidationFeature
Feature: IH Validation for 5725 D2D Payment Methods

# Base Positive Scenarios that covers both the Creatives for D2DPaymentMethods Offer
  @D2DPaymentsMethod @D2DPaymentsMethod_Base_Positive_IH_Validation @5725 @EMAIL @RS22056
  Scenario Outline: D2DPaymentsMethod_RS22056_5725_EMAIL Validate offer details against IH for Base Positive test cases
    Given load data from "D2DPaymentMethod_EML" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate D2D Payment Methods offer details against IH
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
  @D2DPaymentsMethod @D2DPaymentsMethod_Positive_SingleandmultipleAccount_IH_Validation @5725 @EMAIL @RS22056
  Scenario Outline: D2DPaymentsMethod_RS22056_5725_EMAIL Validate offer details against IH for Positive test cases with Single and multiple Account
    Given load data from "D2DPaymentMethod_EML" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate D2D Payment Methods offer details against IH
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

# Negative Scenarios with Single and multiple Account for D2D Payment methods
  @D2DPaymentsMethod @D2DPaymentsMethod_Negative_SingleAccount_IH_Validation @5725 @EMAIL @RS22056
  Scenario Outline: D2DPaymentsMethod_RS22056_5725_EMAIL Validate offer details against IH for Negative test cases with Single and multiple Account
    Given load data from "D2DPaymentMethod_EML" excel sheet
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
      | Test cases                                                                                                              |
      | N_5725_EML_DECEASED_F_eq_Y                                                                                              |
      | N_5725_EML_DECEASED_F_eq_NULL                                                                                           |
      | N_5725_EML_CUST_TP_CD_ne_PSNL                                                                                           |
      | N_5725_EML_LANG_CD_eq_K                                                                                                 |
      | N_5725_EML_LANG_CD_eq_NULL                                                                                              |
      | N_5725_EML_PRIM_CNTRY_CD_eq_NULL                                                                                        |
      | N_5725_EML_PRIM_CNTRY_CD_ne_CA                                                                                          |
      | N_5725_NTP_EML_DO_NOT_EMAIL_FLAG_eq_Y                                                                                   |
      | N_5725_NTP_EML_DO_NOT_EMAIL_FLAG_eq_NULL                                                                                |
      | N_5725_EML_DNS_eq_Y                                                                                                     |
      | N_5725_EML_CUST_AGE_lt_18                                                                                               |
      | N_5725_EML_CUST_AGE_eq_NULL                                                                                             |
      | N_5725_EML_NTP_VALID_EMAIL_FLAG_eq_N                                                                                    |
      | N_5725_EML_NTP_VALID_EMAIL_FLAG_eq_NULL                                                                                 |
      | N_5725_EML_NTP_PRIM_EMAIL_ADDR_eq_BLANK                                                                                 |
      | N_5725_EML_NTP_PRIM_EMAIL_ADDR_eq_NULL                                                                                  |
      | N_5725_EML_NTP_INDV_FRST_NM_eq_NULL                                                                                     |
      | N_5725_EML_NTP_INDV_FRST_NM_eq_BLANK                                                                                    |
      | N_5725_EML_NTP_CASL_CNSNT_FLAG_N                                                                                        |
      | N_5725_EML_NTP_UNSUBSCRIBE_FLAG_Y                                                                                       |
      | N_5725_EML_NTP_HARDBOUNCE_EML_FLAG_Y                                                                                    |
      | N_5725_EML_CUST_OPND_DT_eq_NULL                                                                                         |
      | N_5725_EML_NTB_VALID_EMAIL_FLAG_eq_N                                                                                    |
      | N_5725_EML_NTB_VALID_EMAIL_FLAG_eq_NULL                                                                                 |
      | N_5725_EML_NTB_PRIM_EMAIL_ADDR_eq_BLANK                                                                                 |
      | N_5725_EML_NTB_PRIM_EMAIL_ADDR_eq_NULL                                                                                  |
      | N_5725_EML_NTB_INDV_FRST_NM_eq_NULL                                                                                     |
      | N_5725_EML_NTB_INDV_FRST_NM_eq_BLANK                                                                                    |
      | N_5725_EML_NTB_UNSUBSCRIBE_FLAG_Y                                                                                       |
      | N_5725_EML_NTB_HARDBOUNCE_EML_FLAG_Y                                                                                    |
      | N_5725_EML_ACCT_ODT_eq_13                                                                                               |
      | N_5725_EML_ACCT_ODT_eq_18                                                                                               |
      | N_5725_EML_ACCT_ODT_eq_NULL                                                                                             |
      | N_5725_EML_MK_BK_INFO_ACCTS_EMAIL_eq_N                                                                                  |
      | N_5725_EML_PRIMARY_ACCT_HOLDER_eq_N                                                                                     |
      | N_5725_EML_PRIMARY_ACCT_HOLDER_eq_NULL                                                                                  |
      | N_5725_EML_ACCT_SUBSYS_ID _eq_NULL                                                                                      |
      | N_5725_EML_ACCT_SUBSYS_ID _ne_BB                                                                                        |
      | N_5725_EML_SRC_ACCT_STAT_CD _ne_A                                                                                       |
      | N_5725_EML_SRC_ACCT_STAT_CD _eq_NULL                                                                                    |
      | N_5725_EML_PROD_CD_eq_10_SUB_PROD_CD_01                                                                                 |
      | N_5725_EML_PROD_CD_eq_23_SUB_PROD_CD_10                                                                                 |
      | N_5725_EML_PROD_CD_eq_NULL_SUB_PROD_CD_01                                                                               |
      | N_5725_EML_PROD_CD_eq_01_SUB_PROD_CD_NULL                                                                               |
      | N_5725_EML_PROD_CD_eq_NULL_SUB_PROD_CD_NULL                                                                             |
      | N_5725_EML_PROD_CD_eq_18_SUB_PROD_CD_26                                                                                 |
      | N_5725_EML_NOT_AML_KYC_eq_Y                                                                                             |
      | N-5725_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT < 6 months |
      | N-5725_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT = 6 months |


# positive Scenarios that Cover the Test Cases for segmentation and prioritization
  @D2DPaymentsMethod @D2DPaymentsMethod_Positive_5725_segmentation_prioritization_IH_Validation @5725 @EMAIL @RS22056
  Scenario Outline: D2DPaymentsMethod_RS22056_5725_EMAIL Validate offer details against IH for Positive test cases with Single and multiple Account for segmentation and prioritisation
    Given load data from "D2DPaymentMethod_EML" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate D2D Payment Methods offer details against IH
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
#
#    # Negative Scenarios that Cover the Test Cases for segmentation and prioritization
  @D2DPaymentsMethod @D2DPaymentsMethod_Negative_5725_segmentation_prioritization_IH_Validation @5725 @EMAIL @RS22056
  Scenario Outline: D2DPaymentsMethod_RS22056_5725_EMAIL Validate offer details against IH for Negative test cases for segmentation and prioritization
    Given load data from "D2DPaymentMethod_EML" excel sheet
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
      | Test cases                                                                                  |
      | N_5725_EML_NTB_Active_ACCT_SUBSYS_ID_ne_BB                                                  |
      | N_5725_EML_NTB_Active_ACCT_SUBSYS_ID_eq_NULL                                                |
      | N_5725_EML_NTB_BB_Account_SRC_ACCT_STAT_CD_ne_A                                             |
      | N_5725_EML_NTB_BB_Account_SRC_ACCT_STAT_CD_eq_NULL                                          |
      | N_5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_11_SRC_SUB_PRD_CD_eq_01                              |
      | N_5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_02_SRC_SUB_PRD_CD_eq_11                              |
      | N_5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_07_SRC_SUB_PRD_CD_eq_11                              |
      | N_5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_19_SRC_SUB_PRD_CD_eq_NULL                            |
      | N_5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_NULL_SRC_SUB_PRD_CD_eq_01                            |
      | N_5725_EML_NTB_Active_BB_SRC_PRD_CD_eq_NULL_SRC_SUB_PRD_CD_eq_NULL                          |
      | N_5725_EML_NTB_Active_AC_REWARD_TP_eq_S_Active_ACCT_SUBSYS_ID_ne_BB                         |
      | N_5725_EML_NTB_Active_AC_REWARD_TP_eq_S_Active_ACCT_SUBSYS_ID_eq_NULL                       |
      | N_5725_EML_NTB_Active_AC_REWARD_TP_eq_S_BB_Account_SRC_ACCT_STAT_CD_ne_A                    |
      | N_5725_EML_NTB_Active_AC_REWARD_TP_eq_S_BB_Account_SRC_ACCT_STAT_CD_eq_NULL                 |
      | N_5725_EML_NTB_Active_AC_REWARD_TP_eq_S_Active_BB_SRC_PRD_CD_eq_07_SRC_SUB_PRD_CD_eq_02     |
      | N_5725_EML_NTB_Active_AC_REWARD_TP_eq_S_Active_BB_SRC_PRD_CD_eq_23_SRC_SUB_PRD_CD_eq_11     |
      | N_5725_EML_NTB_Active_AC_REWARD_TP_eq_S_Active_BB_SRC_PRD_CD_eq_15_SRC_SUB_PRD_CD_eq_16     |
      | N_5725_EML_NTB_Active_AC_REWARD_TP_eq_S_Active_BB_SRC_PRD_CD_eq_NULL_SRC_SUB_PRD_CD_eq_11   |
      | N_5725_EML_NTB_Active_AC_REWARD_TP_eq_S_Active_BB_SRC_PRD_CD_eq_07_SRC_SUB_PRD_CD_eq_NULL   |
      | N_5725_EML_NTB_Active_AC_REWARD_TP_eq_S_Active_BB_SRC_PRD_CD_eq_NULL_SRC_SUB_PRD_CD_eq_NULL |
      | N_5725_EML_NTB_Active_ACCT_SUBSYS_ID_ne_AC_REWARD_TP_eq_S_Active_BB                         |
      | N_5725_EML_NTB_Active_ACCT_SUBSYS_ID_eq_NULL_REWARD_TP_eq_S_Active_BB                       |
      | N_5725_EML_NTB_AC_Account_EDW_ACCT_STAT_CD_ne_A_REWARD_TP_eq_S_Active_BB                    |
      | N_5725_EML_NTB_AC_Account_EDW_ACCT_STAT_CD_eq_NULL_REWARD_TP_eq_S_Active_BB                 |

