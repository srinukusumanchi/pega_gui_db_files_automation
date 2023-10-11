Feature: Batch file validation for D2D Acq 5747


  @D2DAcq_Email_5747_Batch_PositiveTCs_Validation
  Scenario Outline: D2D Acquisition 5747_RS22054_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "D2DAcqCrossSell" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "D2DAcqCrossSell" extract file with batch "MCBflag;CustAge;Abandoncount;recentlifeevent;upto_interest_rate;preferred_interest_rate;bonus_interest_rate;offer_duration_months;regular_interest_rate;premium_period_interest_rate;offer_duration_days;mass_offer_start_date;mass_offer_end_date;" Email Specific Text Header
#    And the user navigates to pega url
#    When the user enters user name, password and click on login in pega Login screen
#    And click on interaction History by customer link
#    And click on actions and run in interactions history By customer screen
#    And click on period link and clear today value
#    And enter customer id in ih by customer screen and get IH table data
    Then Validate D2D Acquisition offer details in batch file against database and pega
    Examples:
      | Test cases                                                          |
      | 5747_EML_BASE_01_Trig_12                                            |
      | 5747_EML_BASE_03_or_04_Trig_2                                       |
      | 5747_EML_BASE_05_Trig_9                                             |
      | 5747_EML_BASE_06_Trig_9                                             |
      | 5747_EML_Seg_01_Trig_12_Lang_CD_eq_fr                               |
      | 5747_EML_Seg_03_or_04_Trig_2_Age_eq_18                              |
      | 5747_EML_Seg_05_Trig_9_Age_eq_65                                    |
      | 5747_EML_Seg_06_Trig_9_Employee_Staff_F_eq_NULL                     |
      | 5747_EML_Seg_03_or_04_Trig_2_NOT_AML_KYC_eq_NULL                    |
      | 5747_EML_Seg_05_Trig_9_ITRADE_MCLEOD_F_eq_NULL                      |
      | 5747_EML_Seg_06_Trig_9_DO_NOT_SOLICIT_F_eq_NULL                     |
      | 5747_EML_Seg_01_Trig_12_HAS_CLOSED_CHQ_F_NULL                       |
      | 5747_EML_Seg_03_or_04_Trig_2_MK_BK_OFFERS_EMAIL_eq_NULL             |
      | 5747_EML_Seg_03_or_04_Trig_1_CURR_VAL_eq_1                          |
      | 5747_EML_Seg_03_or_04_Trig_1_CURR_VAL_eq_2                          |
      | 5747_EML_Seg_03_or_04_Trig_1_CURR_VAL_eq_3                          |
      | 5747_EML_Seg_03_or_04_Trig_2_CVI_MULTIFACTOR_SEGMENT_eq_2           |
      | 5747_EML_Seg_03_or_04_Trig_2_CVI_MULTIFACTOR_SEGMENT_eq_3           |
      | 5747_EML_Seg_03_or_04_Trig_2_CVI_MULTIFACTOR_SEGMENT_eq_4           |
      | 5747_EML_Seg_03_or_04_Trig_3_ENGAGEMENT_INDEX_gt_9                  |
      | 5747_EML_Seg_03_or_04_Trig_3_ENGAGEMENT_INDEX_eq_9                  |
      | 5747_EML_Seg_03_or_04_Trig_5_CURR_VAL_eq_1                          |
      | 5747_EML_Seg_03_or_04_Trig_5_CURR_VAL_gt_1                          |
      | 5747_EML_Seg_03_or_04_Trig_6_MLS_ADDED_AT_DT_eq_0                   |
      | 5747_EML_Seg_03_or_04_Trig_6_MLS_ADDED_AT_DT_gt_0_lt_30             |
      | 5747_EML_Seg_03_or_04_Trig_6_MLS_ADDED_AT_DT_eq_30                  |
      | 5747_EML_Seg_03_or_04_Trig_7_MARRIAGE_LIFE_EVENT_DT_eq_0            |
      | 5747_EML_Seg_03_or_04_Trig_7_MARRIAGE_LIFE_EVENT_DT_gt_0_lt_30      |
      | 5747_EML_Seg_03_or_04_Trig_7_MARRIAGE_LIFE_EVENT_DT_eq_30           |
      | 5747_EML_Seg_03_or_04_Trig_8_GRADUATION_LIFE_EVENT_DT_eq_0          |
      | 5747_EML_Seg_03_or_04_Trig_8_GRADUATION_LIFE_EVENT_DT_gt_0_lt_30    |
      | 5747_EML_Seg_03_or_04_Trig_8_GRADUATION_LIFE_EVENT_DT_eq_30         |
      | 5747_EML_Seg_05_Trig_9_CRNT_BAL_AMT_gt_30000                        |
      | 5747_EML_Seg_06_Trig_9_CRNT_BAL_AMT_eq_30000                        |
      | 5747_EML_Seg_06_Trig_9_CRNT_BAL_AMT_eq_15001                        |
      | 5747_EML_Seg_03_or_04_Trig_10_CRD_RENEWAL_DT_gt_30_lt_90_AXG_GC     |
      | 5747_EML_Seg_03_or_04_Trig_10_CRD_RENEWAL_DT_eq_30_AXG_GS           |
      | 5747_EML_Seg_03_or_04_Trig_10_CRD_RENEWAL_DT_eq_90_VCL_DM           |
      | 5747_EML_Seg_03_or_04_Trig_11_ACCT_ODT_gt_30_lt_60                  |
      | 5747_EML_Seg_03_or_04_Trig_11_ACCT_ODT_eq_30                        |
      | 5747_EML_Seg_03_or_04_Trig_11_ACCT_ODT_eq_60                        |
      | 5747_EML_Seg_01_Trig_12_MORT_FNDNG_DT_eq_21                         |
      | 5747_EML_Seg_01_Trig_12_MORT_FNDNG_DT_eq_60                         |
      | 5747_EML_Seg_01_Trig_12_IP_AR_RELATN_TYPE_CD_eq_BOR                 |
      | 5747_EML_Seg_01_Trig_12_IP_AR_RELATN_TYPE_CD_eq_COB                 |
      | 5747_EML_BASE_Seg_07_Trig_13_MAT_DT_gt_8months_lastday              |
      | 5747_EML_BASE_Seg_07_Trig_13_MAT_DT_eq_8months                      |
      | 5747_EML_BASE_Seg_07_Trig_13_MAT_DT_eq_8months_firstday             |
      | 5747_EML_BASE_Seg_07_Trig_13_IP_AR_RELATN_TYPE_CD_eq_BOR            |
      | 5747_EML_BASE_Seg_07_Trig_13_IP_AR_RELATN_TYPE_CD_eq_COB            |
      | 5747_EML_Trig_9_with_Current_Account_SUBSYS_ID_ne_BB                |
      | 5747_EML_Trig_9_with_Current_Account_SUBSYS_ID_eq_NULL              |
      | 5747_EML_Trig_9_with_Current_SRC_ACCT_STAT_CD_ne_A                  |
      | 5747_EML_Trig_9_with_Current_SRC_ACCT_STAT_CD_eq_NULL               |
      | 5747_EML_Trig_9_with_Current_PROD_HIER_LEVEL_4_ne_Chequing_Accounts |
      | 5747_EML_Trig_9_with_Current_PROD_HIER_LEVEL_4_eq_NULL              |
      | 5747_EML_Seg_01_05_Trig_12_9                                        |
      | 5747_EML_Seg_01_06_Trig_12_9                                        |
      | 5747_EML_Seg_03_or_04_Trig_6_7_8_Life_Event_MOV                     |
      | 5747_EML_Seg_03_or_04_Trig_6_7_8_Life_Event_MARRIAGE                |
      | 5747_EML_Seg_03_or_04_Trig_6_7_8_Life_Event_GRAD                    |
      | 5747_EML_Seg_03_or_04_Trig_6_7_8_Life_Event_RANDOM_scenario1        |
      | 5747_EML_Seg_03_or_04_Trig_6_7_8_Life_Event_RANDOM_scenario2        |
      | 5747_EML_Seg_03_or_04_Trig_6_7_8_Life_Event_RANDOM_scenario3        |

      | 5747_EML_Trig_15_Single_MPSA                                        |
      | 5747_EML_Seg_03_or_04_Trig_16_CURR_VAL_eq_1                         |
      | 5747_EML_Seg_05_Trig_9_CRNT_BAL_AMT_gt_30000                        |
      | 5747_EML_Trig_15_ACCT_ODT_eq_50 days                                |
      | 5747_EML_Trig_15_ACCT_ODT_eq_60 days                                |
      | 5747_EML_Trig_15_ACCT_ODT_gt_50 days                                |
      | 5747_EML_Trig_15_ACCT_ODT_lt_60 days                                |
      | 5747_EML_Trig_15_Dual_MPSA                                          |


  @D2DAcq_Email_5747_Batch_PositiveTCs_Validation_Mar_30_2023_Release
  Scenario Outline: D2D Acquisition 5747_RS22054_EMAIL Validate batch file details against database and pega for Positive test cases for Mar 20 2023 Release
    Given load data from "D2DAcqCrossSell" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "D2DAcqCrossSell" extract file with batch "MCBflag;CustAge;Abandoncount;recentlifeevent;upto_interest_rate;preferred_interest_rate;bonus_interest_rate;offer_duration_months;regular_interest_rate;premium_period_interest_rate;offer_duration_days;mass_offer_start_date;mass_offer_end_date;" Email Specific Text Header
    Then Validate D2D Acquisition offer details in batch file against database and pega
    Examples:
      | Test cases              |
##Added for Mar 30 2023 - BASE for Creative 8, 9, 10, 11
      | 5747_EML_BASE_08_Trig_2 |
      | 5747_EML_BASE_09_Trig_2 |
      | 5747_EML_BASE_10_Trig_2 |
      | 5747_EML_BASE_11_Trig_2 |

