Feature: IH Validation for D2D Engagement Welcome New To Bank


  @D2DEngagementWelcome @D2DEngagementWelcomeNTB_Base_Validation @Workstream-4 @5821 @EMAIL @RS17103
  Scenario Outline: D2D Engagement Welcome-NTB_RS17103_5821_EMAIL Validate D2D Engagement Welcome-NTB offer details against IH for Base test cases
    Given load data from "WelcomeNTB" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate offer details against IH
    Examples:
      | Test cases       |
      | 5821_EML_BASE_01 |


  @D2DEngagementWelcome @D2DEngagementWelcomeNTB_Positive_Validation @Workstream-4 @5821 @EMAIL @RS17103
  Scenario Outline: D2D Engagement Welcome-NTB_RS17103_5821_EMAIL Validate D2D Engagement Welcome-NTB offer details against IH for Positive test cases
    Given load data from "WelcomeNTB" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate offer details against IH
    Examples:
      | Test cases                                                                                     |
      | 5821_EML_LANG_CD_eq_fr                                                                         |
      | 5821_EML_CUST_AGE_eq_16                                                                        |
      | 5821_EML_DO_NOT_SOLICIT_F_eq_NULL                                                              |
      | 5821_EML_NOT_AML_KYC_eq_NULL                                                                   |
      | 5821_EML_CUST_OPND_DT_eq_120_days                                                              |
      | 5821_EML_CC_VIP_IND_eq_NULL                                                                    |
      | 5821_EML_MK_BK_INFO_ACCTS_EMAIL_eq_NULL                                                        |
      | 5821_EML_UNSUBSCRIBED_F_eq_NULL                                                                |
      | 5821_EML_HARDBOUNCE_EMAIL_F_eq_NULL                                                            |
      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_01_SRC_SYS_SUB_PRD_CD_eq_01                    |
      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_01_SRC_SYS_SUB_PRD_CD_eq_02_NTC                |
      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_01_SRC_SYS_SUB_PRD_CD_eq_03                    |
      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_01_SRC_SYS_SUB_PRD_CD_eq_04                    |
      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_02_SRC_SYS_SUB_PRD_CD_eq_01                    |
      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_02_SRC_SYS_SUB_PRD_CD_eq_02                    |
      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_02_SRC_SYS_SUB_PRD_CD_eq_03_NTC                |
      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_19_SRC_SYS_SUB_PRD_CD_eq_01                    |
      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_19_SRC_SYS_SUB_PRD_CD_eq_02                    |
      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_19_SRC_SYS_SUB_PRD_CD_eq_03                    |
      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_19_SRC_SYS_SUB_PRD_CD_eq_04_NTC                |
      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_19_SRC_SYS_SUB_PRD_CD_eq_07                    |
      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_19_SRC_SYS_SUB_PRD_CD_eq_08                    |
      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_01                    |
      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_03                    |
      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_07                    |
      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_08                    |
      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_07_SRC_SYS_SUB_PRD_CD_eq_11                    |
      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_07_SRC_SYS_SUB_PRD_CD_eq_12                    |
      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_01                    |
      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_03_NTC                |
      | 5821_EML_BB_Account_ACCT_ODT_LT_10_days                                                        |
      | 5821_EML_BB_Account_ACCT_ODT_Eq_10_days                                                        |
      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_01_NTC_Prioritization |
      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_07_SRC_SYS_SUB_PRD_CD_eq_12_NTC_Prioritization |

## Removed
#      | 5821_EML_ACCT_SUBSYS_ID_ne_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_lt_180days_AFIL   |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_NULL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_lt_180days_AFIL |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_ne_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_lt_180days_AFIL   |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_NULL_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_lt_180days_AFIL     |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_ne_09_ACCT_ODT_lt_180days_AFIL   |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_NULL_ACCT_ODT_lt_180days_AFIL |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_gt_180days_AFIL   |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_eq_NULL_AFIL      |


  @D2DEngagementWelcome @D2DEngagementWelcomeNTB_Negative_Validation @Workstream-4 @5821 @EMAIL @RS17103
  Scenario Outline: D2D Engagement Welcome-NTB_RS17103_5821_EMAIL Validate D2D Engagement Welcome-NTB offer details against IH for Negative test cases
    Given load data from "WelcomeNTB" excel sheet
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
      | Test cases                                                                      |
      | N_5821_EML_DECEASED_F_eq_Y                                                      |
      | N_5821_EML_DECEASED_F_eq_NULL                                                   |
      | N_5821_EML_CUST_TP_CD_ne_PSNL                                                   |
      | N_5821_EML_CUST_TP_CD_ne_NULL                                                   |
      | N_5821_EML_PRIM_CNTRY_CD_ne_CA                                                  |
      | N_5821_EML_PRIM_CNTRY_CD_eq_NULL                                                |
      | N_5821_EML_DO_NOT_SOLICIT_F_eq_Y                                                |
      | N_5821_EML_NOT_AML_KYC_eq_Y                                                     |
      | N_5821_EML_CUST_AGE_lt_16                                                       |
      | N_5821_EML_CUST_AGE_eq_NULL                                                     |
      | N_5821_EML_LANG_CD_eq_bn                                                        |
      | N_5821_EML_Lang_CD_eq_NULL                                                      |
      | N_5821_EML_CUST_OPND_DT_gt_120_days                                             |
      | N_5821_EML_CUST_OPND_DT_eq_NULL                                                 |
      | N_5821_EML_CC_VIP_IND_eq_2                                                      |
      | N_5821_EML_CC_VIP_IND_eq_9                                                      |
      | N_5821_EML_MK_BK_INFO_ACCTS_EMAIL_eq_N                                          |
      | N_5821_EML_VLD_EMAIL_F_ne_Y                                                     |
      | N_5821_EML_VLD_EMAIL_F_eq_NULL                                                  |
      | N_5821_EML_PRIM_EMAIL_ADDR_eq_NULL                                              |
      | N_5821_EML_INDV_FRST_NM_eq_NULL                                                 |
      | N_5821_EML_UNSUBSCRIBED_F_eq_Y                                                  |
      | N_5821_EML_HARDBOUNCE_EMAIL_F_eq_Y                                              |
      | N_5821_EML_ACCT_SUBSYS_ID_ne_BB                                                 |
      | N_5821_EML_ACCT_SUBSYS_ID_eq_NULL                                               |
      | N_5821_EML_SRC_ACCT_STAT_CD_ne_A                                                |
      | N_5821_EML_SRC_ACCT_STAT_CD_eq_NULL                                             |
      | N_5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_01_SRC_SYS_SUB_PRD_CD_eq_07   |
      | N_5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_01_SRC_SYS_SUB_PRD_CD_eq_NULL |
      | N_5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_07_SRC_SYS_SUB_PRD_CD_eq_02   |
      | N_5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_NULL_SRC_SYS_SUB_PRD_CD_eq_02 |
      | N_5821_EML_PRIMARY_ACCT_HOLDER_FLAG_eq_N                                        |
      | N_5821_EML_PRIMARY_ACCT_HOLDER_FLAG_eq_NULL                                     |
      | N_5821_EML_ACCT_ODT_gt_10                                                       |
      | N_5821_EML_ACCT_ODT_eq_NULL                                                     |

## Removed
#      | N_5821_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_lt_180days_AFIL |
#      | N_5821_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_eq_180days_AFIL |


