@MPSAWelcomeBonus_5893_IHValidation
Feature: Validation for 5893 MPSA Welcome Bonus

  @MPSAWelcomeBonusEmail @MPSAWelcomeBonusEmail_IH_Positive_Validation_5893 @5893 @EMAIL @RS22116 @MPSAIssuechkPos
  Scenario Outline: MPSA Welcome Bonus Email_RS21097_5893_EMAIL Validate IH details against database and pega for Positive test cases
    Given load data from "MPSAWelcomeBonus" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate MPSA Welcome Bonus offer details against IH
    Examples:
      | Test cases                                                                           |
      | 5839_EML_BASE_01                                                                     |
      | 5839_EML_BASE_02                                                                     |
      | 5839_EML_BASE_03                                                                     |
      | 5839_EML_CUST_AGE_eq_18                                                              |
      | 5839_EML_LANG_CD_eq_fr                                                               |
      | 5839_EML_NOT_AML_KYC_eq_NULL                                                         |
      | 5839_EML_MD_FINANCIAL_F_eq_NULL                                                      |
      | 5839_EML_ITRADE_MCLEOD_F_eq_NULL                                                     |
      | 5839_EML_ITRADE_MCLEOD_F_eq_Y                                                                    |
      | 5839_EML_DEDICATED_INVSTMNT_ADVISOR_F_eq_NULL                                        |
      | 5839_EML_UNSUBSCRIBED_F_eq_NULL                                                      |
      | 5839_EML_HARDBOUNCE_EMAIL_F_eq_NULL                                                  |
      | 5839_EML_MK_BK_INFO_ACCTS_EMAIL_F_eq_NULL                                            |
      | 5839_EML_DO_NOT_SOLICIT_F_eq_NULL                                                    |
      | 5839_EML_ACCT_ODT_eq_30                                                              |
      | 5839_EML_INSIGHT_CD_eq_FLG_MPSA_ACQ_RS22021_CONTROL_CURR_VAL_ne_1                    |
      | 5839_EML_INSIGHT_CD_eq_FLG_MPSA_ACQ_RS22021_CONTROL_CURR_VAL_eq_NULL                 |
      | 5839_EML_INSIGHT_CD_eq_FLG_MPSA_ACQ_RS22021_TARGET_CURR_VAL_ne_1                     |
      | 5839_EML_INSIGHT_CD_eq_FLG_MPSA_ACQ_RS22021_TARGET_CURR_VAL_eq_NULL                  |
      | 5839_EML_CURR_VAL_ne_1                                                               |
      | 5839_EML_INDV_LAST_NM_eq_NULL                                                        |
      | 5839_EML_DO_NOT_SOLICIT_F_eq_NULL_AND_CASL_CONSENT_F_eq_NULL                         |
      | 5839_EML_MRKTBLE_F_eq_NULL_AND_CASL_CONSENT_F_eq_NULL                                |
      | 5839_EML_MRKTBLE_F_eq_NULL_AND_DO_NOT_SOLICIT_F_eq_NULL                              |
      | 5839_EML_CASL_CONSENT_F_eq_NULL                                                      |
      | 5839_EML_DO_NOT_SOLICIT_F_eq_NULL                                                    |
      | 5839_EML_MRKTBLE_F_eq_NULL                                                           |
      | 5839_EML_MRKTBLE_F_eq_N_AND_DO_NOT_SOLICIT_F_eq_N_AND_CASL_CONSENT_F_eq_Y            |
      | 5839_EML_MRKTBLE_F_eq_Y_AND_DO_NOT_SOLICIT_F_eq_Y_AND_CASL_CONSENT_F_eq_Y            |
      | 5839_EML_MRKTBLE_F_eq_NULL_AND_DO_NOT_SOLICIT_F_eq_NULL_AND_CASL_CONSENT_F_eq_N      |
      | 5839_EML_MRKTBLE_F_eq_N_AND_DO_NOT_SOLICIT_F_eq_Y_AND_CASL_CONSENT_F_eq_N            |
      | 5839_EML_MRKT_F_eq_Y_AND_DO_NOT_SOLIC_F_eq_N_AND_CASL_CONS_F_eq_Y_DIGI_eq_Y_DNE_eq_N |
      | 5839_EML_MRKT_F_eq_Y_AND_DO_NOT_SOLIC_F_eq_N_AND_CASL_CONS_F_eq_Y_DIGI_eq_N_DNE_eq_N |


  @MPSAWelcomeBonusEmail @MPSAWelcomeBonusEmail_IH_Negative_Validation_5893 @5893 @EMAIL @RS22116 @MPSAIssuechkNeg
  Scenario Outline: MPSA Welcome Bonus Email_RS21097_5893_EMAIL Validate IH details against database and pega for Negative test cases
    Given load data from "MPSAWelcomeBonus" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then verify offer should not display
    Examples:
      | Test cases                                                                                         |
      | N_5839_EML_DECEASED_F_eq_Y                                                                         |
      | N_5839_EML_DECEASED_F_eq_NULL                                                                      |
      | N_5839_EML_CUST_TP_CD_ne_PSNL                                                                      |
      | N_5839_EML_CUST_TP_CD_eq_NULL                                                                      |
      | N_5839_EML_PRIM_CNTRY_CD_ne_CA                                                                     |
      | N_5839_EML_PRIM_CNTRY_CD_eq_NULL                                                                   |
      | N_5839_EML_CUST_AGE_lt_18                                                                          |
      | N_5839_EML_CUST_AGE_eq_NULL                                                                        |
      | N_5839_EML_LANG_CD_ne_en_fr                                                                        |
      | N_5839_EML_LANG_CD_eq_NULL                                                                         |
      | N_5839_EML_NOT_AML_KYC_eq_Y                                                                        |
      | N_5839_EML_MD_FINANCIAL_F_eq_Y                                                                     |
      | N_5839_EML_DEDICATED_INVSTMNT_ADVISOR_F_eq_Y                                                       |
      | N_5839_EML_HAS_CLOSED_MPSA_F_eq_Y                                                                  |
      | N_5839_EML_HAS_CLOSED_MPSA_F_eq_NULL                                                               |
      | N_5839_EML_VLD_EMAIL_F_ne_Y                                                                        |
      | N_5839_EML_VLD_EMAIL_F_eq_NULL                                                                     |
      | N_5839_EML_PRIM_EMAIL_ADDR_eq_NULL                                                                 |
      | N_5839_EML_INDV_FRST_NM_eq_NULL                                                                    |
      | N_5839_EML_UNSUBSCRIBED_F_eq_Y                                                                     |
      | N_5839_EML_HARDBOUNCE_EMAIL_F_eq_Y                                                                 |
      | N_5839_EML_MK_BK_INFO_ACCTS_EMAIL_F_eq_N                                                           |
      | N_5839_EML_MRKTBLE_F_eq_NULL                                                                       |
      | N_5839_EML_DIGITAL_ACTVTN_F_NULL                                                                   |
      | N_5839_EML_DO_NOT_EMAIL_F_eq_Y                                                                     |
      | N_5839_EML_DO_NOT_EMAIL_F_eq_NULL                                                                  |
      | N_5839_EML_SRC_ACCT_STAT_CD_ne_Active                                                              |
      | N_5839_EML_SRC_ACCT_STAT_CD_eq_NULL                                                                |
      | N_5839_EML_ACCT_SUBSYS_ID_ne_UF                                                                    |
      | N_5839_EML_ACCT_SUBSYS_ID_eq_NULL                                                                  |
      | N_5839_EML_SRC_SYS_PRD_CD_ne_BSAMP                                                                 |
      | N_5839_EML_SRC_SYS_PRD_CD_eq_NULL                                                                  |
      | N_5839_EML_ACCT_ODT_eq_0                                                                           |
      | N_5839_EML_ACCT_ODT_gt_30                                                                          |
      | N_5839_EML_ACCT_ODT_eq_NULL                                                                        |
      | N_5839_EML_PRIMARY_ACCT_HOLDER_FLAG_ne_Y                                                           |
      | N_5839_EML_PRIMARY_ACCT_HOLDER_FLAG_eq_NULL                                                        |
      | N_5839_EML_INSIGHT_CD_ne_MPSA_WELCOME_BONUS                                                        |
      | N_5839_EML_INSIGHT_CD_eq_NULL                                                                      |
      | N_5839_EML_CURR_VAL_eq_NULL                                                                        |
      | N_5839_EML_INSIGHT_CD_eq_FLG_MPSA_ACQ_RS22021_CONTROL_CURR_VAL_eq_1                                |
      | N_5839_EML_INSIGHT_CD_eq_FLG_MPSA_ACQ_RS22021_TARGET_CURR_VAL_eq_1                                 |
      | N_5839_EML_MRKTBLE_F_eq_NULL_AND_DO_NOT_SOLICIT_F_eq_NULL_AND_CASL_CONSENT_F_eq_NULL               |
      | N_5839_EML_MRKT_F_eq_Y_AND_DO_NOT_SOLIC_F_eq_N_AND_CASL_CONS_F_eq_Y_DIGI_eq_Y_DNE_eq_Y             |
      | N_5839_EML_MRKT_F_eq_Y_AND_DO_NOT_SOLIC_F_eq_N_AND_CASL_CONS_F_eq_Y_DIGI_eq_N_DNE_eq_Y             |
      | N_5839_EML_MRKT_F_eq_Y_AND_DO_NOT_SOLIC_F_eq_N_AND_CASL_CONS_F_eq_Y_DIGI_eq_Y_DNE_eq_NULL          |
      | N_5839_EML_MRKT_F_eq_Y_AND_DO_NOT_SOLIC_F_eq_N_AND_CASL_CONS_F_eq_Y_DIGI_eq_N_DNE_eq_NULL          |
      | N_5839_EML_MRKT_F_eq_Y_AND_DO_NOT_SOLIC_F_eq_N_AND_CASL_CONS_F_eq_Y_DIGI_eq_NULL_DNE_eq_N          |
      | N_5839_EML_MRKT_F_eq_NULL_AND_DO_NOT_SOLIC_F_eq_N_AND_CASL_CONS_F_eq_Y_DIGI_eq_Y_DNE_eq_N          |
      | N_5839_EML_MRKT_F_eq_NULL_AND_DO_NOT_SOLIC_F_eq_N_AND_CASL_CONS_F_eq_Y_DIGI_eq_N_DNE_eq_N          |
      | N_5839_EML_MRKT_F_eq_NULL_AND_DO_NOT_SOLIC_F_eq_NULL_AND_CASL_CONS_F_eq_Y_DIGI_eq_NULL_DNE_eq_NULL |


