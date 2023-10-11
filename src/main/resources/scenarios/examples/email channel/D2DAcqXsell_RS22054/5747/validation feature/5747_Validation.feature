Feature: Validation for D2D Acquisition_5747


  @D2DAcq_Email_5747_IH_PositiveTCs_Validation
  Scenario Outline: D2D Acquisition 5747_RS22054_EMAIL <Test cases>  Validate IH details against database and pega for Positive test cases
    Given load data from "D2DAcqCrossSell" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
#    And the user navigates to pega url
#    When the user enters user name, password and click on login in pega Login screen
#    And click on interaction History by customer link
#    And click on actions and run in interactions history By customer screen
#    When click on period link and clear today value
#    And enter customer id in ih by customer screen and get IH table data
    Then validate D2D Acquisition offer details against IH
    Examples:
      | Test cases |
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
#Added for Mar 02 2023
      | 5747_EML_Trig_15_Single_MPSA                                        |
      | 5747_EML_Seg_03_or_04_Trig_16_CURR_VAL_eq_1                         |
      | 5747_EML_Seg_05_Trig_9_CRNT_BAL_AMT_gt_30000                        |
      | 5747_EML_Trig_15_ACCT_ODT_eq_50 days                                |
      | 5747_EML_Trig_15_ACCT_ODT_eq_60 days                                |
      | 5747_EML_Trig_15_ACCT_ODT_gt_50 days                                |
      | 5747_EML_Trig_15_ACCT_ODT_lt_60 days                                |
      | 5747_EML_Trig_15_Dual_MPSA                                          |
#Added for Mar 02 2023
      | 5747_EML_BASE_08_Trig_2 |
      | 5747_EML_BASE_09_Trig_2 |
      | 5747_EML_BASE_10_Trig_2 |
      | 5747_EML_BASE_11_Trig_2 |


  @D2DAcq_Email_5747_IH_NegativeTCs_Validation
  Scenario Outline: D2D Acquisition 5747_RS22054_EMAIL <Test cases>  Validate IH details for Negative Test Cases
    Given load data from "D2DAcqCrossSell" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
#    And the user navigates to pega url
#    When the user enters user name, password and click on login in pega Login screen
#    And click on interaction History by customer link
#    And click on actions and run in interactions history By customer screen
#    When click on period link and clear today value
#    And enter customer id in ih by customer screen and get IH table data
    Then verify offer should not display
    Examples:
      | Test cases                                                  |
      | N_5747_EML_Seg_03_or_04_Trig_2_DECEASED_F_eq_Y                                 |
      | N_5747_EML_Seg_05_Trig_9_DECEASED_F_eq_NULL                                    |
      | N_5747_EML_Seg_01_Trig_12_Lang_CD_eq_bn                                        |
      | N_5747_EML_Seg_01_Trig_12_Lang_CD_eq_NULL                                      |
      | N_5747_EML_Seg_03_or_04_Trig_2_Age_eq_17                                       |
      | N_5747_EML_Seg_05_Trig_9_Age_eq_66                                             |
      | N_5747_EML_Seg_06_Trig_9_Employee_Staff_F_eq_Y                                 |
      | N_5747_EML_Seg_01_Trig_12_MRKTBLE_F_eq_N                                       |
      | N_5747_EML_Seg_01_Trig_12_MRKTBLE_F_eq_NULL                                    |
      | N_5747_EML_Seg_03_or_04_Trig_2_NOT_AML_KYC_eq_Y                                |
      | N_5747_EML_Seg_05_Trig_9_ITRADE_MCLEOD_F_eq_Y                                  |
      | N_5747_EML_Seg_06_Trig_9_DO_NOT_SOLICIT_F_eq_Y                                 |
      | N_5747_EML_Seg_01_Trig_12_HAS_CLOSED_CHQ_F_Y                                   |
      | N_5747_EML_Seg_03_or_04_Trig_2_VLD_EMAIL_F_eq_N                                |
      | N_5747_EML_Seg_03_or_04_Trig_2_VLD_EMAIL_F_eq_NULL                             |
      | N_5747_EML_Seg_05_Trig_9_PRIM_EMAIL_ADDR_eq_NULL                               |
      | N_5747_EML_Seg_05_Trig_9_PRIM_EMAIL_ADDR_eq_BLANK                              |
      | N_5747_EML_Seg_06_Trig_9_INDV_FRST_NM_eq_NULL                                  |
      | N_5747_EML_Seg_06_Trig_9_INDV_FRST_NM_eq_BLANK                                 |
      | N_5747_EML_Seg_01_Trig_12_DO_NOT_EMAIL_F_eq_Y                                  |
      | N_5747_EML_Seg_01_Trig_12_DO_NOT_EMAIL_F_eq_NULL                               |
      | N_5747_EML_Seg_03_or_04_Trig_2_MK_BK_OFFERS_EMAIL_eq_N                         |
      | N_5747_EML_Seg_03_or_04_Trig_1_CURR_VAL_eq_4                                   |
      | N_5747_EML_Seg_03_or_04_Trig_1_CURR_VAL_eq_NULL                                |
      | N_5747_EML_Seg_03_or_04_Trig_2_CVI_MULTIFACTOR_SEGMENT_eq_5                    |
      | N_5747_EML_Seg_03_or_04_Trig_2_CVI_MULTIFACTOR_SEGMENT_eq_NULL                 |
      | N_5747_EML_Seg_03_or_04_Trig_3_ENGAGEMENT_INDEX_lt_9                           |
      | N_5747_EML_Seg_03_or_04_Trig_3_ENGAGEMENT_INDEX_eq_NULL                        |
      | N_5747_EML_Seg_03_or_04_Trig_5_CURR_VAL_lt_1                                   |
      | N_5747_EML_Seg_03_or_04_Trig_5_CURR_VAL_eq_NULL                                |
      | N_5747_EML_Seg_03_or_04_Trig_6_MLS_ADDED_AT_DT_gt_30                           |
      | N_5747_EML_Seg_03_or_04_Trig_6_MLS_ADDED_AT_DT_lt_0                            |
      | N_5747_EML_Seg_03_or_04_Trig_6_MLS_ADDED_AT_DT_eq_NULL                         |
      | N_5747_EML_Seg_03_or_04_Trig_7_MARRIAGE_LIFE_EVENT_DT_gt_30                    |
      | N_5747_EML_Seg_03_or_04_Trig_7_MARRIAGE_LIFE_EVENT_DT_lt_0                     |
      | N_5747_EML_Seg_03_or_04_Trig_7_MARRIAGE_LIFE_EVENT_DT_eq_NULL                  |
      | N_5747_EML_Seg_03_or_04_Trig_8_GRADUATION_LIFE_EVENT_DT_gt_30                  |
      | N_5747_EML_Seg_03_or_04_Trig_8_GRADUATION_LIFE_EVENT_DT_lt_0                   |
      | N_5747_EML_Seg_03_or_04_Trig_8_GRADUATION_LIFE_EVENT_DT_eq_NULL                |
      | N_5747_EML_Seg_06_Trig_9_CRNT_BAL_AMT_eq_15000                                 |
      | N_5747_EML_Seg_06_Trig_9_CRNT_BAL_AMT_lt_15000                                 |
      | N_5747_EML_Seg_06_Trig_9_CRNT_BAL_AMT_eq_NULL                                  |
      | N_5747_EML_Seg_05_Trig_9_ACCT_SUBSYS_ID_ne_UF                                  |
      | N_5747_EML_Seg_05_Trig_9_ACCT_SUBSYS_ID_eq_NULL                                |
      | N_5747_EML_Seg_05_Trig_9_SRC_ACCT_STAT_CD_ne_Active                            |
      | N_5747_EML_Seg_05_Trig_9_SRC_ACCT_STAT_CD_eq_NULL                              |
      | N_5747_EML_Seg_05_Trig_9_SRC_SRC_SYS_PRD_CD_ne_BSAMP                           |
      | N_5747_EML_Seg_05_Trig_9_SRC_SRC_SYS_PRD_CD_eq_NULL                            |
      | N_5747_EML_Seg_03_or_04_Trig_10_CRD_RENEWAL_DT_lt_30                           |
      | N_5747_EML_Seg_03_or_04_Trig_10_CRD_RENEWAL_DT_gt_90                           |
      | N_5747_EML_Seg_03_or_04_Trig_10_CRD_RENEWAL_DT_eq_NULL                         |
      | N_5747_EML_Seg_03_or_04_Trig_10_ACCT_SUBSYS_ID_ne_KS                           |
      | N_5747_EML_Seg_03_or_04_Trig_10_ACCT_SUBSYS_ID_eq_NULL                         |
      | N_5747_EML_Seg_03_or_04_Trig_10_SRC_ACCT_STAT_CD_ne_Open                       |
      | N_5747_EML_Seg_03_or_04_Trig_10_SRC_ACCT_STAT_CD_eq_NULL                       |
      | N_5747_EML_Seg_03_or_04_Trig_10_SRC_SYS_PRD_CD_eq_AXG_SRC_SYS_SUB_PRD_CD_BC    |
      | N_5747_EML_Seg_03_or_04_Trig_10_SRC_SYS_PRD_CD_eq_ABC_SRC_SYS_SUB_PRD_CD_GC    |
      | N_5747_EML_Seg_03_or_04_Trig_10_SRC_SYS_PRD_CD_eq_AXG_SRC_SYS_SUB_PRD_CD_NULL  |
      | N_5747_EML_Seg_03_or_04_Trig_10_SRC_SYS_PRD_CD_eq_NULL_SRC_SYS_SUB_PRD_CD_GC   |
      | N_5747_EML_Seg_03_or_04_Trig_10_SRC_SYS_PRD_CD_eq_NULL_SRC_SYS_SUB_PRD_CD_NULL |
      | N_5747_EML_Seg_03_or_04_Trig_11_ACCT_ODT_lt_30                                 |
      | N_5747_EML_Seg_03_or_04_Trig_11_ACCT_ODT_gt_60                                 |
      | N_5747_EML_Seg_03_or_04_Trig_11_ACCT_ODT_eq_NULL                               |
      | N_5747_EML_Seg_03_or_04_Trig_11_ACCT_SUBSYS_ID_ne_KS                           |
      | N_5747_EML_Seg_03_or_04_Trig_11_ACCT_SUBSYS_ID_eq_NULL                         |
      | N_5747_EML_Seg_03_or_04_Trig_11_SRC_ACCT_STAT_CD_ne_Open                       |
      | N_5747_EML_Seg_03_or_04_Trig_11_SRC_ACCT_STAT_CD_eq_NULL                       |
      | N_5747_EML_Seg_03_or_04_Trig_11_PROD_HIER_LEVEL_3_ne_CreditCards               |
      | N_5747_EML_Seg_03_or_04_Trig_11_PROD_HIER_LEVEL_3_eq_NULL                      |
      | N_5747_EML_Seg_01_Trig_12_MORT_FNDNG_DT_lt_21                                  |
      | N_5747_EML_Seg_01_Trig_12_MORT_FNDNG_DT_gt_60                                  |
      | N_5747_EML_Seg_01_Trig_12_MORT_FNDNG_DT_eq_NULL                                |
      | N_5747_EML_Seg_01_Trig_12_ACCT_SUBSYS_ID_ne_UO                                 |
      | N_5747_EML_Seg_01_Trig_12_ACCT_SUBSYS_ID_eq_NULL                               |
      | N_5747_EML_Seg_01_Trig_12_SRC_ACCT_STAT_CD_ne_Active                           |
      | N_5747_EML_Seg_01_Trig_12_SRC_ACCT_STAT_CD_eq_NULL                             |
      | N_5747_EML_Seg_01_Trig_12_MORT_COMM_TYPE_ne_Residential                        |
      | N_5747_EML_Seg_01_Trig_12_MORT_COMM_TYPE_eq_NULL                               |
      | N_5747_EML_Seg_01_Trig_12_IP_AR_RELATN_TYPE_CD_eq_COM                          |
      | N_5747_EML_Seg_01_Trig_12_IP_AR_RELATN_TYPE_CD_eq_NULL                         |
      | N_5747_EML_BASE_Seg_07_Trig_13_MAT_DT_lt_8months                               |
      | N_5747_EML_BASE_Seg_07_Trig_13_MAT_DT_gt_8months                               |
      | N_5747_EML_BASE_Seg_07_Trig_13_MAT_DT_eq_NULL                                  |
      | N_5747_EML_BASE_Seg_07_Trig_13_ACCT_SUBSYS_ID_ne_UO                            |
      | N_5747_EML_BASE_Seg_07_Trig_13_ACCT_SUBSYS_ID_eq_NULL                          |
      | N_5747_EML_BASE_Seg_07_Trig_13_SRC_ACCT_STAT_CD_ne_Active                      |
      | N_5747_EML_BASE_Seg_07_Trig_13_SRC_ACCT_STAT_CD_eq_NULL                        |
      | N_5747_EML_BASE_Seg_07_Trig_13_MORT_COMM_TYPE_ne_Residential                   |
      | N_5747_EML_BASE_Seg_07_Trig_13_MORT_COMM_TYPE_eq_NULL                          |
      | N_5747_EML_BASE_Seg_07_Trig_13_IP_AR_RELATN_TYPE_CD_eq_BUS                     |
      | N_5747_EML_BASE_Seg_07_Trig_13_IP_AR_RELATN_TYPE_CD_eq_NULL                    |
      | N_5747_EML_Trig_1_with_Current_Account                                         |
      | N_5747_EML_Trig_3_with_Current_Account                                         |
      | N_5747_EML_Trig_9_with_Current_Account                                         |
      | N_5747_EML_Trig_12_with_Current_Account                                        |
      | N_5747_EML_Seg_01_Trig_12_PHYSICIANS_F_eq_Y                                    |
      | N_5747_EML_Seg_03_or_04_Trig_2_PHYSICIANS_F_eq_Y                               |
      | N_5747_EML_Seg_05_Trig_9_PHYSICIANS_F_eq_Y                                     |
      | N_5747_EML_Seg_06_Trig_9_PHYSICIANS_F_eq_Y                                     |
      | N_5747_EML_Seg_03_or_04_Trig_2_PHYSICIANS_F_eq_Y                               |

#Added for Mar 02 2023
      | N_5747_EML_Seg_03_or_04_Trig_16_CURR_VAL_eq_0                                  |
      | N_5747_EML_Seg_03_or_04_Trig_16_CURR_VAL_eq_NULL                               |
      | N_5747_EML_Seg_06_Trig_9_CRNT_BAL_AMT_eq_30000                                 |
      | N_5747_EML_Seg_06_Trig_9_CRNT_BAL_AMT_lt_30000                                 |
      | N_5747_EML_Seg_06_Trig_9_CRNT_BAL_AMT_eq_NULL                                  |
      | N_5747_EML_Trig_15_ACCT_ODT_eq_NULL                                            |
      | N_5747_EML_Trig_15_ACCT_ODT_eq_49 days                                         |
      | N_5747_EML_Trig_15_ACCT_ODT_eq_61 days                                         |

##Added for Mar 30 2023 - Negative TCs
      | N_5747_EML_Seg_09_Trig_17_ACCT_SUBSYS_ID_ne_KS              |
      | N_5747_EML_Seg_09_Trig_17_ACCT_SUBSYS_ID_eq_NULL            |
      | N_5747_EML_Seg_09_Trig_17_SRC_ACCT_STAT_CD_ne_Open          |
      | N_5747_EML_Seg_09_Trig_17_SRC_ACCT_STAT_CD_eq_NULL          |
      | N_5747_EML_Seg_09_Trig_17_PROD_HIER_LEVEL_3_ne_Credit_Cards |
      | N_5747_EML_Seg_09_Trig_17_PROD_HIER_LEVEL_3_eq_NULL         |
      | N_5747_EML_Seg_08_Trig_18_VALID_START_DATE_gt_Curr_Dt       |
      | N_5747_EML_Seg_08_Trig_18_VALID_END_DATE_lt_Curr_Dt         |
      | N_5747_EML_Seg_08_Trig_18_CAMPAIGN_CODE_ne_RS22054          |
      | N_5747_EML_Seg_08_Trig_18_CAMPAIGN_CELL_CODE_ne_CIE5747     |
      | N_5747_EML_Seg_08_Trig_18_CAMPAIGN_CELL_CODE_eq_NULL        |
      | N_5747_EML_Seg_08_Trig_18_CAMPAIGN_CELL_CODE_FLAG_ne_Y      |
      | N_5747_EML_Seg_08_Trig_18_CAMPAIGN_CELL_CODE_FLAG_eq_NULL   |
      | N_5747_EML_Seg_08_Trig_18_EMAIL_CHANNEL_ne_Y                |
      | N_5747_EML_Seg_08_Trig_18_EMAIL_CHANNEL_eq_NULL             |




## Added for Mar 30 2023 - Positive TCs
  @D2DAcq_Email_5747_IH_PositiveTCs_Validation_Mar_30_2023_Release
  Scenario Outline: D2D Acquisition 5747_RS22054_EMAIL <Test cases>  Validate IH details against database and pega for Positive test cases for Mar 20 2023 Release
    Given load data from "D2DAcqCrossSell" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then validate D2D Acquisition offer details against IH for "EML" Channel
    Examples:
      | Test cases                                                                   |
##Added for Mar 30 2023 - BASE for Creative 8, 9, 10, 11
      | 5747_EML_BASE_08_Trig_2                                                      |
      | 5747_EML_BASE_09_Trig_2                                                      |
      | 5747_EML_BASE_10_Trig_2                                                      |
      | 5747_EML_BASE_11_Trig_2                                                      |

##Added for Mar 30 2023 - Positive TCs
      | 5747_EML_Seg_09_Trig_17                                                      |
      | 5747_EML_Seg_10_Trig_17                                                      |
      | 5747_EML_Seg_11_Trig_17_ACCT_ODT_gt_60                                       |
      | 5747_EML_Seg_08_Trig_18_VALID_START_DATE_lt_Curr_Dt                          |
      | 5747_EML_Seg_09_Trig_18_VALID_START_DATE_eq_Curr_Dt                          |
      | 5747_EML_Seg_10_Trig_18_VALID_END_DATE_gt_Curr_Dt                            |
      | 5747_EML_Seg_11_Trig_18_VALID_END_DATE_eq_Curr_Dt                            |
      | 5747_EML_Seg_08_Trig_2_CUST_OPND_DT_lt_60                                    |
      | 5747_EML_Seg_08_Trig_2_SRC_SYS_PRD_CD_eq_AXG_SRC_SYS_SUB_PRD_CD_eq_GC        |
      | 5747_EML_Seg_08_Trig_2_SRC_SYS_PRD_CD_eq_AXP_SRC_SYS_SUB_PRD_CD_eq_PC        |
      | 5747_EML_Seg_08_Trig_2_SRC_SYS_PRD_CD_eq_AXS_SRC_SYS_SUB_PRD_CD_eq_SC        |
      | 5747_EML_Seg_08_Trig_2_SRC_SYS_PRD_CD_eq_VFF_SRC_SYS_SUB_PRD_CD_eq_TR        |
      | 5747_EML_Seg_08_Trig_2_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_ZZ        |
      | 5747_EML_Seg_08_Trig_2_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_SS        |
      | 5747_EML_Seg_08_Trig_2_ACCT_ODT_lt_60                                        |
      | 5747_EML_Seg_08_Trig_2_SOL_LAST_LOGIN_DT_lt_90_MOB_LAST_LOGIN_DT_eq_NULL     |
      | 5747_EML_Seg_08_Trig_2_SOL_LAST_LOGIN_DT_eq_NULL_MOB_LAST_LOGIN_DT_lt_90     |
      | 5747_EML_Seg_09_Trig_2_CUST_OPND_DT_gt_90                                    |
      | 5747_EML_Seg_09_Trig_2_CUST_OPND_DT_eq_90                                    |
      | 5747_EML_Seg_09_Trig_2_SRC_SYS_PRD_CD_eq_AXP_SRC_SYS_SUB_PRD_CD_eq_PC        |
      | 5747_EML_Seg_09_Trig_2_SRC_SYS_PRD_CD_eq_AXS_SRC_SYS_SUB_PRD_CD_eq_SC        |
      | 5747_EML_Seg_09_Trig_2_SRC_SYS_PRD_CD_eq_VFF_SRC_SYS_SUB_PRD_CD_eq_TR        |
      | 5747_EML_Seg_09_Trig_2_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_ZZ        |
      | 5747_EML_Seg_09_Trig_2_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_SS        |
      | 5747_EML_Seg_09_Trig_2_SRC_SYS_PRD_CD_eq_AXG_SRC_SYS_SUB_PRD_CD_eq_GC_CLOSED |
      | 5747_EML_Seg_09_Trig_2_SRC_SYS_PRD_CD_eq_AXG_SRC_SYS_SUB_PRD_CD_eq_GS_CLOSED |
      | 5747_EML_Seg_09_Trig_2_ACCT_ODT_gt_90                                        |
      | 5747_EML_Seg_09_Trig_2_ACCT_ODT_eq_90                                        |
      | 5747_EML_Seg_09_Trig_2_SOL_LAST_LOGIN_DT_lt_90                               |
      | 5747_EML_Seg_09_Trig_2_SOL_LAST_LOGIN_DT_eq_90                               |
      | 5747_EML_Seg_09_Trig_2_MOB_LAST_LOGIN_DT_lt_90                               |
      | 5747_EML_Seg_09_Trig_2_MOB_LAST_LOGIN_DT_eq_90                               |
      | 5747_EML_Seg_10_Trig_2_CUST_OPND_DT_gt_60                                    |
      | 5747_EML_Seg_10_Trig_2_CUST_OPND_DT_eq_60                                    |
      | 5747_EML_Seg_10_Trig_2_ACCT_ODT_gt_60                                        |
      | 5747_EML_Seg_10_Trig_2_ACCT_ODT_eq_60                                        |
      | 5747_EML_Seg_10_Trig_2_non_Scene_CC_PROD_HIER_LEVEL_3_eq_Credit Cards        |
      | 5747_EML_Seg_10_Trig_2_SOL_LAST_LOGIN_DT_lt_90                               |
      | 5747_EML_Seg_10_Trig_2_SOL_LAST_LOGIN_DT_eq_90                               |
      | 5747_EML_Seg_10_Trig_2_MOB_LAST_LOGIN_DT_lt_90                               |
      | 5747_EML_Seg_10_Trig_2_MOB_LAST_LOGIN_DT_eq_90                               |
      | 5747_EML_Seg_11_Trig_2_IMMGRTN_CAT_CD_ne_S_or_S00                            |
      | 5747_EML_Seg_11_Trig_2_SOL_LAST_LOGIN_DT_lt_90                               |
      | 5747_EML_Seg_11_Trig_2_SOL_LAST_LOGIN_DT_eq_90                               |
      | 5747_EML_Seg_11_Trig_2_MOB_LAST_LOGIN_DT_lt_90                               |
      | 5747_EML_Seg_11_Trig_2_MOB_LAST_LOGIN_DT_eq_90                               |
      | 5747_EML_Seg_11_Trig_17_ACCT_ODT_eq_60                                       |
      | 5747_EML_Seg_11_Trig_17_ACCT_ODT_lt_60                                       |
      | 5747_EML_Seg_10_Trig_2_AMEX_with_Scene_Plus                                  |


## Added for Mar 30 2023 - Partially Negative TCs
  @D2DAcq_Email_5747_IH_Partially_Negative_TCs_Validation_Mar_30_2023_Release
  Scenario Outline: D2D Acquisition 5747_RS22054_EMAIL <Test cases>  Validate IH details against database and pega for Partially Negative test cases for Mar 20 2023 Release
    Given load data from "D2DAcqCrossSell" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then validate D2D Acquisition offer details against IH for "EML" Channel
    Examples:
      | Test cases                                                                             |
##      |March 30 2023 Release - Partially Negative Scenarios|
      | N_5747_EML_Seg_08_Trig_2_CUST_OPND_DT_eq_60                                            |
      | N_5747_EML_Seg_08_Trig_2_CUST_OPND_DT_gt_60                                            |
      | N_5747_EML_Seg_08_Trig_2_SRC_SYS_PRD_CD_eq_NULL_SRC_SYS_SUB_PRD_CD_eq_NULL             |
      | N_5747_EML_Seg_08_Trig_2_ACCT_ODT_eq_60                                                |
      | N_5747_EML_Seg_08_Trig_2_ACCT_ODT_gt_60                                                |
      | N_5747_EML_Seg_08_Trig_2_PRIMARY_ACCT_HOLDER_FLAG_ne_Y                                 |
      | N_5747_EML_Seg_08_Trig_2_PRIMARY_ACCT_HOLDER_FLAG_eq_NULL                              |
      | N_5747_EML_Seg_08_Trig_2_SOL_LAST_LOGIN_DT_gt_90                                       |
      | N_5747_EML_Seg_08_Trig_2_MOB_LAST_LOGIN_DT_gt_90                                       |
      | N_5747_EML_Seg_08_Trig_2_SOL_LAST_LOGIN_DT_eq_NULL_MOB_LAST_LOGIN_DT_eq_NULL           |
      | N_5747_EML_Seg_09_Trig_2_CUST_OPND_DT_lt_90                                            |
      | N_5747_EML_Seg_09_Trig_2_CUST_OPND_DT_eq_NULL                                          |
      | N_5747_EML_Seg_09_Trig_2_SRC_SYS_PRD_CD_eq_NULL_SRC_SYS_SUB_PRD_CD_eq_NULL             |
      | N_5747_EML_Seg_09_Trig_2_ACCT_ODT_lt_90                                                |
      | N_5747_EML_Seg_09_Trig_2_PRIMARY_ACCT_HOLDER_FLAG_ne_Y                                 |
      | N_5747_EML_Seg_09_Trig_2_PRIMARY_ACCT_HOLDER_FLAG_eq_NULL                              |
      | N_5747_EML_Seg_09_Trig_2_SOL_LAST_LOGIN_DT_gt_90                                       |
      | N_5747_EML_Seg_09_Trig_2_MOB_LAST_LOGIN_DT_gt_90                                       |
      | N_5747_EML_Seg_09_Trig_2_SOL_LAST_LOGIN_DT_eq_NULL_MOB_LAST_LOGIN_DT_eq_NULL           |
      | N_5747_EML_Seg_09_Trig_2_Has_AMEX_GOLD_SRC_SYS_PRD_CD_eq_AXG_SRC_SYS_SUB_PRD_CD_eq_GC  |
      | N_5747_EML_Seg_10_Trig_2_AMEX_CUST_OPND_DT_lt_60                                       |
      | N_5747_EML_Seg_10_Trig_2_AMEX_CUST_OPND_DT_eq_NULL                                     |
      | N_5747_EML_Seg_10_Trig_2_AMEX_ACCT_SUBSYS_ID_ne_KS                                     |
      | N_5747_EML_Seg_10_Trig_2_AMEX_ACCT_SUBSYS_ID_ne_NULL                                   |
      | N_5747_EML_Seg_10_Trig_2_AMEX_SRC_ACCT_STAT_CD_ne_Open                                 |
      | N_5747_EML_Seg_10_Trig_2_AMEX_SRC_ACCT_STAT_CD_eq_NULL                                 |
      | N_5747_EML_Seg_10_Trig_2_AMEX_SRC_SYS_PRD_CD_eq_NULL_SRC_SYS_SUB_PRD_CD_eq_NULL        |
      | N_5747_EML_Seg_10_Trig_2_AMEX_SRC_SYS_PRD_CD_ne_AXG_SRC_SYS_SUB_PRD_CD_ne_GC           |
      | N_5747_EML_Seg_10_Trig_2_AMEX_ACCT_ODT_lt_60                                           |
      | N_5747_EML_Seg_10_Trig_2_AMEX_SOL_LAST_LOGIN_DT_gt_90                                  |
      | N_5747_EML_Seg_10_Trig_2_AMEX_MOB_LAST_LOGIN_DT_gt_90                                  |
      | N_5747_EML_Seg_10_Trig_2_AMEX_SOL_LAST_LOGIN_DT_eq_NULL_MOB_LAST_LOGIN_DT_eq_NULL      |
      | N_5747_EML_Seg_10_Trig_2_Non_Scene_CUST_OPND_DT_lt_60                                  |
      | N_5747_EML_Seg_10_Trig_2_Non_Scene_CUST_OPND_DT_eq_NULL                                |
      | N_5747_EML_Seg_10_Trig_2_Non_Scene_ACCT_SUBSYS_ID_ne_KS                                |
      | N_5747_EML_Seg_10_Trig_2_Non_Scene_ACCT_SUBSYS_ID_ne_NULL                              |
      | N_5747_EML_Seg_10_Trig_2_Non_Scene_SRC_ACCT_STAT_CD_ne_Open                            |
      | N_5747_EML_Seg_10_Trig_2_Non_Scene_SRC_ACCT_STAT_CD_eq_NULL                            |
      | N_5747_EML_Seg_10_Trig_2_Non_Scene_ACCT_ODT_lt_60                                      |
      | N_5747_EML_Seg_10_Trig_2_Non_Scene_SOL_LAST_LOGIN_DT_gt_90                             |
      | N_5747_EML_Seg_10_Trig_2_Non_Scene_MOB_LAST_LOGIN_DT_gt_90                             |
      | N_5747_EML_Seg_10_Trig_2_Non_Scene_SOL_LAST_LOGIN_DT_eq_NULL_MOB_LAST_LOGIN_DT_eq_NULL |
      | N_5747_EML_Seg_10_Trig_2_Non_Scene_PROD_HIER_LEVEL_3_ne_Credit Cards                   |
      | N_5747_EML_Seg_10_Trig_2_Non_Scene_PROD_HIER_LEVEL_3_eq_NULL                           |
      | N_5747_EML_Seg_10_Trig_2_Non_Scene_with_Scene_Plus                                     |
      | N_5747_EML_Seg_11_Trig_2_MCB_IND_ne_Y                                                  |
      | N_5747_EML_Seg_11_Trig_2_MCB_IND_eq_NULL                                               |
      | N_5747_EML_Seg_11_Trig_2_IMMGRTN_CAT_CD_eq_S                                           |
      | N_5747_EML_Seg_11_Trig_2_IMMGRTN_CAT_CD_eq_S00                                         |
      | N_5747_EML_Seg_11_Trig_2_SOL_LAST_LOGIN_DT_gt_90                                       |
      | N_5747_EML_Seg_11_Trig_2_MOB_LAST_LOGIN_DT_gt_90                                       |
      | N_5747_EML_Seg_11_Trig_2_SOL_LAST_LOGIN_DT_eq_NULL_MOB_LAST_LOGIN_DT_eq_NULL           |


## Added for Mar 30 2023 - Negative TCs
  @D2DAcq_Email_5747_IH_Negative_TCs_Validation_Mar_30_2023_Release
  Scenario Outline: D2D Acquisition 5747_RS22054_EMAIL <Test cases>  Validate IH details for Negative Test Cases for Mar 20 2023 Release
    Given load data from "D2DAcqCrossSell" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then verify offer should not display
    Examples:
      | Test cases                                                  |
##Added for Mar 30 2023 - Negative TCs
      | N_5747_EML_Seg_09_Trig_17_ACCT_SUBSYS_ID_ne_KS              |
      | N_5747_EML_Seg_09_Trig_17_ACCT_SUBSYS_ID_eq_NULL            |
      | N_5747_EML_Seg_09_Trig_17_SRC_ACCT_STAT_CD_ne_Open          |
      | N_5747_EML_Seg_09_Trig_17_SRC_ACCT_STAT_CD_eq_NULL          |
      | N_5747_EML_Seg_09_Trig_17_PROD_HIER_LEVEL_3_ne_Credit_Cards |
      | N_5747_EML_Seg_09_Trig_17_PROD_HIER_LEVEL_3_eq_NULL         |
      | N_5747_EML_Seg_08_Trig_18_VALID_START_DATE_gt_Curr_Dt       |
      | N_5747_EML_Seg_08_Trig_18_VALID_END_DATE_lt_Curr_Dt         |
      | N_5747_EML_Seg_08_Trig_18_CAMPAIGN_CODE_ne_RS22054          |
      | N_5747_EML_Seg_08_Trig_18_CAMPAIGN_CELL_CODE_ne_CIE5747     |
      | N_5747_EML_Seg_08_Trig_18_CAMPAIGN_CELL_CODE_eq_NULL        |
      | N_5747_EML_Seg_08_Trig_18_CAMPAIGN_CELL_CODE_FLAG_ne_Y      |
      | N_5747_EML_Seg_08_Trig_18_CAMPAIGN_CELL_CODE_FLAG_eq_NULL   |
      | N_5747_EML_Seg_08_Trig_18_EMAIL_CHANNEL_ne_Y                |
      | N_5747_EML_Seg_08_Trig_18_EMAIL_CHANNEL_eq_NULL             |
