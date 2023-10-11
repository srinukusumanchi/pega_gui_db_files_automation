@5747_TestDataCreation
Feature: Test data creation for D2D Acq Cross Sell


  @D2DACQCrossSell @D2DAcqCrossSell_Positive_Negative_Trig01_Trig05_TestData  @5747 @EMAIL @RS22054
  Scenario Outline: D2D Acq Cross Sell 5747_EMAIL Create test data for positive test cases for single account
    Given load data from "D2DAcqCrossSell" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write  Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write account number into "CUST_INSIGHTS" sheet for "<Test cases>"
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table
    Examples:
      | Test cases                                       |
      | 5747_EML_Seg_03_or_04_Trig_1_CURR_VAL_eq_1       |
      | 5747_EML_Seg_03_or_04_Trig_1_CURR_VAL_eq_2       |
      | 5747_EML_Seg_03_or_04_Trig_1_CURR_VAL_eq_3       |
      | 5747_EML_Seg_03_or_04_Trig_5_CURR_VAL_eq_1       |
      | 5747_EML_Seg_03_or_04_Trig_5_CURR_VAL_gt_1       |
      | N_5747_EML_Seg_03_or_04_Trig_1_CURR_VAL_eq_4     |
      | N_5747_EML_Seg_03_or_04_Trig_1_CURR_VAL_eq_NULL  |
      | N_5747_EML_Seg_03_or_04_Trig_5_CURR_VAL_lt_1     |
      | N_5747_EML_Seg_03_or_04_Trig_5_CURR_VAL_eq_NULL  |
      | N_5747_EML_Trig_1_with_Current_Account           |

    #Added for Mar 02 2023 rls
      | 5747_EML_Seg_03_or_04_Trig_16_CURR_VAL_eq_1      |
      | N_5747_EML_Seg_03_or_04_Trig_16_CURR_VAL_eq_0    |
      | N_5747_EML_Seg_03_or_04_Trig_16_CURR_VAL_eq_NULL |

  @D2DACQCrossSell @D2DAcqCrossSell_Positive_Negative_Trig02_Trig03_Trig04_09_TestData  @5747 @EMAIL @RS22054
  Scenario Outline: D2D Acq Cross Sell 5747_EMAIL Create test data for positive test cases for single account
    Given load data from "D2DAcqCrossSell" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Account_cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Account_cnt>" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Account_cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Account_cnt>" accounts
    Examples:
      | Test cases                                                          | Account_cnt |
      | 5747_EML_BASE_03_or_04_Trig_2                                       | 1           |
      | 5747_EML_Seg_03_or_04_Trig_2_Age_eq_18                              | 1           |
      | 5747_EML_Seg_03_or_04_Trig_2_NOT_AML_KYC_eq_NULL                    | 1           |
      | 5747_EML_Seg_03_or_04_Trig_2_MK_BK_OFFERS_EMAIL_eq_NULL             | 1           |
      | 5747_EML_Seg_03_or_04_Trig_2_CVI_MULTIFACTOR_SEGMENT_eq_2           | 1           |
      | 5747_EML_Seg_03_or_04_Trig_2_CVI_MULTIFACTOR_SEGMENT_eq_3           | 1           |
      | 5747_EML_Seg_03_or_04_Trig_2_CVI_MULTIFACTOR_SEGMENT_eq_4           | 1           |
      | 5747_EML_Seg_03_or_04_Trig_3_ENGAGEMENT_INDEX_gt_9                  | 1           |
      | 5747_EML_Seg_03_or_04_Trig_3_ENGAGEMENT_INDEX_eq_9                  | 1           |
      | 5747_EML_Seg_05_Trig_9_Age_eq_65                                    | 1           |
      | 5747_EML_Seg_06_Trig_9_Employee_Staff_F_eq_NULL                     | 1           |
      | 5747_EML_Seg_05_Trig_9_ITRADE_MCLEOD_F_eq_NULL                      | 1           |
      | 5747_EML_Seg_06_Trig_9_DO_NOT_SOLICIT_F_eq_NULL                     | 1           |
      | 5747_EML_Seg_05_Trig_9_CRNT_BAL_AMT_gt_30000                        | 1           |
      | 5747_EML_Seg_06_Trig_9_CRNT_BAL_AMT_eq_30001                        | 1           |
      | 5747_EML_Seg_06_Trig_9_CRNT_BAL_AMT_eq_50000                        | 1           |
      | 5747_EML_Seg_05_Trig_9_CRNT_BAL_AMT_gt_30000_DEC                    | 1           |
#      | N_5747_EML_Seg_03_or_04_Trig_2_DECEASED_F_eq_Y                      | 1           |
#      | N_5747_EML_Seg_03_or_04_Trig_2_Age_eq_17                            | 1           |
#      | N_5747_EML_Seg_03_or_04_Trig_2_NOT_AML_KYC_eq_Y                     | 1           |
#      | N_5747_EML_Seg_03_or_04_Trig_2_VLD_EMAIL_F_eq_N                     | 1           |
#      | N_5747_EML_Seg_03_or_04_Trig_2_VLD_EMAIL_F_eq_NULL                  | 1           |
#      | N_5747_EML_Seg_03_or_04_Trig_2_MK_BK_OFFERS_EMAIL_eq_N              | 1           |
#      | N_5747_EML_Seg_03_or_04_Trig_2_CVI_MULTIFACTOR_SEGMENT_eq_5         | 1           |
#      | N_5747_EML_Seg_03_or_04_Trig_2_CVI_MULTIFACTOR_SEGMENT_eq_NULL      | 1           |
#      | N_5747_EML_Seg_03_or_04_Trig_3_ENGAGEMENT_INDEX_lt_9                | 1           |
#      | N_5747_EML_Seg_03_or_04_Trig_3_ENGAGEMENT_INDEX_eq_NULL             | 1           |
#      | N_5747_EML_Seg_05_Trig_9_DECEASED_F_eq_NULL                         | 1           |
#      | N_5747_EML_Seg_05_Trig_9_Age_eq_66                                  | 1           |
#      | N_5747_EML_Seg_06_Trig_9_Employee_Staff_F_eq_Y                      | 1           |
#      | N_5747_EML_Seg_05_Trig_9_ITRADE_MCLEOD_F_eq_Y                       | 1           |
#      | N_5747_EML_Seg_06_Trig_9_DO_NOT_SOLICIT_F_eq_Y                      | 1           |
#      | N_5747_EML_Seg_05_Trig_9_PRIM_EMAIL_ADDR_eq_NULL                    | 1           |
#      | N_5747_EML_Seg_05_Trig_9_PRIM_EMAIL_ADDR_eq_BLANK                   | 1           |
#      | N_5747_EML_Seg_06_Trig_9_INDV_FRST_NM_eq_NULL                       | 1           |
#      | N_5747_EML_Seg_06_Trig_9_INDV_FRST_NM_eq_BLANK                      | 1           |
#      | N_5747_EML_Seg_05_Trig_9_ACCT_SUBSYS_ID_ne_UF                       | 1           |
#      | N_5747_EML_Seg_05_Trig_9_ACCT_SUBSYS_ID_eq_NULL                     | 1           |
#      | N_5747_EML_Seg_05_Trig_9_SRC_ACCT_STAT_CD_ne_Active                 | 1           |
#      | N_5747_EML_Seg_05_Trig_9_SRC_ACCT_STAT_CD_eq_NULL                   | 1           |
#      | N_5747_EML_Seg_05_Trig_9_SRC_SRC_SYS_PRD_CD_ne_BSAMP                | 1           |
#      | N_5747_EML_Seg_05_Trig_9_SRC_SRC_SYS_PRD_CD_eq_NULL                 | 1           |
      | 5747_EML_Seg_03_or_04_Trig_2_PHYSICIANS_F_eq_Y                      | 1           |
      | 5747_EML_Seg_03_or_04_Trig_2_PHYSICIANS_F_eq_Y                      | 1           |
      | N_5747_EML_Trig_3_with_Current_Account                              | 1           |
      | 5747_EML_Seg_05_Trig_9_PHYSICIANS_F_eq_Y                            | 1           |
      | 5747_EML_Seg_06_Trig_9_PHYSICIANS_F_eq_Y                            | 1           |
      | N_5747_EML_Trig_9_with_Current_Account                              | 2           |
      | 5747_EML_Trig_9_with_Current_Account_SUBSYS_ID_ne_BB                | 2           |
      | 5747_EML_Trig_9_with_Current_Account_SUBSYS_ID_eq_NULL              | 2           |
      | 5747_EML_Trig_9_with_Current_SRC_ACCT_STAT_CD_ne_A                  | 2           |
      | 5747_EML_Trig_9_with_Current_SRC_ACCT_STAT_CD_eq_NULL               | 2           |
      | 5747_EML_Trig_9_with_Current_PROD_HIER_LEVEL_4_ne_Chequing_Accounts | 2           |
      | 5747_EML_Trig_9_with_Current_PROD_HIER_LEVEL_4_eq_NULL              | 2           |
      | 5747_EML_BASE_05_Trig_9                                             | 1           |
      | 5747_EML_BASE_06_Trig_9                                             | 1           |


  @D2DACQCrossSell @D2DAcqCrossSell_Positive_Negative_Trig06_TestData  @5747 @EMAIL @RS22054
  Scenario Outline: D2D Acq Cross Sell 5747_EMAIL Create test data for positive test cases for single account
    Given load data from "D2DAcqCrossSell" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When write "MLS_ADDED_AT_DT" for "<MLS_DT>" into "CUST_DIM" sheet for "<Test cases>" for decrement in days
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                              | MLS_DT |
      | 5747_EML_Seg_03_or_04_Trig_6_MLS_ADDED_AT_DT_eq_0       | 0      |
      | 5747_EML_Seg_03_or_04_Trig_6_MLS_ADDED_AT_DT_gt_0_lt_30 | 10     |
      | 5747_EML_Seg_03_or_04_Trig_6_MLS_ADDED_AT_DT_eq_30      | 30     |
      | N_5747_EML_Seg_03_or_04_Trig_6_MLS_ADDED_AT_DT_gt_30    | 31     |
      | N_5747_EML_Seg_03_or_04_Trig_6_MLS_ADDED_AT_DT_lt_0     | -1     |
      | N_5747_EML_Seg_03_or_04_Trig_6_MLS_ADDED_AT_DT_eq_NULL  | NULL   |


  @D2DACQCrossSell @D2DAcqCrossSell_Positive_Negative_Trig07_TestData  @5747 @EMAIL @RS22054
  Scenario Outline: D2D Acq Cross Sell 5747_EMAIL Create test data for positive test cases for single account
    Given load data from "D2DAcqCrossSell" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When write "MARRIAGE_LIFE_EVENT_DT " for "<marriage_dt>" into "CUST_DIM" sheet for "<Test cases>" for decrement in days
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                                     | marriage_dt |
      | 5747_EML_Seg_03_or_04_Trig_7_MARRIAGE_LIFE_EVENT_DT_eq_0       | 0           |
      | 5747_EML_Seg_03_or_04_Trig_7_MARRIAGE_LIFE_EVENT_DT_gt_0_lt_30 | 10          |
      | 5747_EML_Seg_03_or_04_Trig_7_MARRIAGE_LIFE_EVENT_DT_eq_30      | 30          |
      | N_5747_EML_Seg_03_or_04_Trig_7_MARRIAGE_LIFE_EVENT_DT_gt_30    | 31          |
      | N_5747_EML_Seg_03_or_04_Trig_7_MARRIAGE_LIFE_EVENT_DT_lt_0     | -1          |
      | N_5747_EML_Seg_03_or_04_Trig_7_MARRIAGE_LIFE_EVENT_DT_eq_NULL  | NULL        |


  @D2DACQCrossSell @D2DAcqCrossSell_Positive_Negative_Trig08_TestData  @5747 @EMAIL @RS22054
  Scenario Outline: D2D Acq Cross Sell 5747_EMAIL Create test data for positive test cases for single account
    Given load data from "D2DAcqCrossSell" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When write "GRADUATION_LIFE_EVENT_DT " for "<GRAD_DT>" into "CUST_DIM" sheet for "<Test cases>" for decrement in days
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                                       | GRAD_DT |
      | 5747_EML_Seg_03_or_04_Trig_8_GRADUATION_LIFE_EVENT_DT_eq_0       | 0       |
      | 5747_EML_Seg_03_or_04_Trig_8_GRADUATION_LIFE_EVENT_DT_gt_0_lt_30 | 10      |
      | 5747_EML_Seg_03_or_04_Trig_8_GRADUATION_LIFE_EVENT_DT_eq_30      | 30      |
      | N_5747_EML_Seg_03_or_04_Trig_8_GRADUATION_LIFE_EVENT_DT_gt_30    | 31      |
      | N_5747_EML_Seg_03_or_04_Trig_8_GRADUATION_LIFE_EVENT_DT_lt_0     | -1      |
      | N_5747_EML_Seg_03_or_04_Trig_8_GRADUATION_LIFE_EVENT_DT_eq_NULL  | NULL    |


  @D2DACQCrossSell @D2DAcqCrossSell_Positive_Negative_Trig_10_TestData  @5747 @EMAIL @RS22054
  Scenario Outline: D2D Acq Cross Sell 5747_EMAIL Create test data for positive test cases for single account
    Given load data from "D2DAcqCrossSell" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When write "CRD_RENEWAL_DT " for "<renew_dt>" into "ACCT_DIM" sheet for "<Test cases>" for increment in days
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                                                     | renew_dt |
      | 5747_EML_Seg_03_or_04_Trig_10_CRD_RENEWAL_DT_gt_30_lt_90_AXG_GC                | 35       |
      | 5747_EML_Seg_03_or_04_Trig_10_CRD_RENEWAL_DT_eq_30_AXG_GS                      | 30       |
      | 5747_EML_Seg_03_or_04_Trig_10_CRD_RENEWAL_DT_eq_90_VCL_DM                      | 90       |
      | N_5747_EML_Seg_03_or_04_Trig_10_CRD_RENEWAL_DT_lt_30                           | 29       |
      | N_5747_EML_Seg_03_or_04_Trig_10_CRD_RENEWAL_DT_gt_90                           | 91       |
      | N_5747_EML_Seg_03_or_04_Trig_10_CRD_RENEWAL_DT_eq_NULL                         | NULL     |
      | N_5747_EML_Seg_03_or_04_Trig_10_ACCT_SUBSYS_ID_ne_KS                           | 35       |
      | N_5747_EML_Seg_03_or_04_Trig_10_ACCT_SUBSYS_ID_eq_NULL                         | 35       |
      | N_5747_EML_Seg_03_or_04_Trig_10_SRC_ACCT_STAT_CD_ne_Open                       | 35       |
      | N_5747_EML_Seg_03_or_04_Trig_10_SRC_ACCT_STAT_CD_eq_NULL                       | 35       |
      | N_5747_EML_Seg_03_or_04_Trig_10_SRC_SYS_PRD_CD_eq_AXG_SRC_SYS_SUB_PRD_CD_BC    | 35       |
      | N_5747_EML_Seg_03_or_04_Trig_10_SRC_SYS_PRD_CD_eq_ABC_SRC_SYS_SUB_PRD_CD_GC    | 35       |
      | N_5747_EML_Seg_03_or_04_Trig_10_SRC_SYS_PRD_CD_eq_AXG_SRC_SYS_SUB_PRD_CD_NULL  | 35       |
      | N_5747_EML_Seg_03_or_04_Trig_10_SRC_SYS_PRD_CD_eq_NULL_SRC_SYS_SUB_PRD_CD_GC   | 35       |
      | N_5747_EML_Seg_03_or_04_Trig_10_SRC_SYS_PRD_CD_eq_NULL_SRC_SYS_SUB_PRD_CD_NULL | 35       |


  @D2DACQCrossSell @D2DAcqCrossSell_Positive_Negative_Trig11_TestData  @5747 @EMAIL @RS22054
  Scenario Outline: D2D Acq Cross Sell 5747_EMAIL Create test data for positive test cases for single account
    Given load data from "D2DAcqCrossSell" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When write "ACCT_ODT" for "<acct_odt>" into "ACCT_DIM" sheet for "<Test cases>" for decrement in days
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                                       | acct_odt |
      | 5747_EML_Seg_03_or_04_Trig_11_ACCT_ODT_gt_30_lt_60               | 35       |
      | 5747_EML_Seg_03_or_04_Trig_11_ACCT_ODT_eq_30                     | 30       |
      | 5747_EML_Seg_03_or_04_Trig_11_ACCT_ODT_eq_60                     | 60       |
      | N_5747_EML_Seg_03_or_04_Trig_11_ACCT_ODT_lt_30                   | 29       |
      | N_5747_EML_Seg_03_or_04_Trig_11_ACCT_ODT_gt_60                   | 61       |
      | N_5747_EML_Seg_03_or_04_Trig_11_ACCT_ODT_eq_NULL                 | NULL     |
      | N_5747_EML_Seg_03_or_04_Trig_11_ACCT_SUBSYS_ID_ne_KS             | 35       |
      | N_5747_EML_Seg_03_or_04_Trig_11_ACCT_SUBSYS_ID_eq_NULL           | 35       |
      | N_5747_EML_Seg_03_or_04_Trig_11_SRC_ACCT_STAT_CD_ne_Open         | 35       |
      | N_5747_EML_Seg_03_or_04_Trig_11_SRC_ACCT_STAT_CD_eq_NULL         | 35       |
      | N_5747_EML_Seg_03_or_04_Trig_11_PROD_HIER_LEVEL_3_ne_CreditCards | 35       |
      | N_5747_EML_Seg_03_or_04_Trig_11_PROD_HIER_LEVEL_3_eq_NULL        | 35       |

      # Newly added for Mar 02 2023
      | 5747_EML_Seg_05_Trig_9_CRNT_BAL_AMT_gt_30000                     | 45       |
      | N_5747_EML_Seg_06_Trig_9_CRNT_BAL_AMT_eq_30000                   | 65       |
      | N_5747_EML_Seg_06_Trig_9_CRNT_BAL_AMT_lt_30000                   | 44       |
      | N_5747_EML_Seg_06_Trig_9_CRNT_BAL_AMT_eq_NULL                    | NULL     |
      | 5747_EML_Trig_15_ACCT_ODT_eq_50 days                             | 50       |
      | 5747_EML_Trig_15_ACCT_ODT_eq_60 days                             | 60       |
      | 5747_EML_Trig_15_ACCT_ODT_gt_50 days                             | 51       |
      | 5747_EML_Trig_15_ACCT_ODT_lt_60 days                             | 59       |
      | N_5747_EML_Trig_15_ACCT_ODT_eq_NULL                              | NULL     |
      | N_5747_EML_Trig_15_ACCT_ODT_eq_49 days                           | 49       |
      | N_5747_EML_Trig_15_ACCT_ODT_eq_61 days                           | 61       |
      | 5747_EML_Trig_15_Single_MPSA                                     | 55       |


  @D2DACQCrossSell @D2DAcqCrossSell_Positive_Negative_Trig12_TestData  @5747 @EMAIL @RS22054
  Scenario Outline: D2D Acq Cross Sell 5747_EMAIL Create test data for positive test cases for single account
    Given load data from "D2DAcqCrossSell" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Account_cnt>" accounts
    And write Mortgage Funding Date "<MORT_FNDNG_DT>" value into sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table having "<Account_cnt>" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Account_cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Account_cnt>" accounts
    Examples:
      | Test cases                                              | MORT_FNDNG_DT | Account_cnt |
      | 5747_EML_BASE_01_Trig_12                                | 22            | 1           |
      | 5747_EML_Seg_01_Trig_12_Lang_CD_eq_fr                   | 23            | 1           |
      | 5747_EML_Seg_01_Trig_12_HAS_CLOSED_CHQ_F_NULL           | 24            | 1           |
      | 5747_EML_Seg_01_Trig_12_MORT_FNDNG_DT_eq_21             | 21            | 1           |
      | 5747_EML_Seg_01_Trig_12_MORT_FNDNG_DT_eq_60             | 60            | 1           |
      | 5747_EML_Seg_01_Trig_12_IP_AR_RELATN_TYPE_CD_eq_BOR     | 25            | 1           |
      | 5747_EML_Seg_01_Trig_12_IP_AR_RELATN_TYPE_CD_eq_COB     | 26            | 1           |
#      | N_5747_EML_Seg_01_Trig_12_Lang_CD_eq_bn                 | 27            | 1           |
#      | N_5747_EML_Seg_01_Trig_12_Lang_CD_eq_NULL               | 28            | 1           |
#      | N_5747_EML_Seg_01_Trig_12_MRKTBLE_F_eq_N                | 29            | 1           |
#      | N_5747_EML_Seg_01_Trig_12_MRKTBLE_F_eq_NULL             | 30            | 1           |
#      | N_5747_EML_Seg_01_Trig_12_HAS_CLOSED_CHQ_F_Y            | 31            | 1           |
#      | N_5747_EML_Seg_01_Trig_12_DO_NOT_EMAIL_F_eq_Y           | 32            | 1           |
#      | N_5747_EML_Seg_01_Trig_12_DO_NOT_EMAIL_F_eq_NULL        | 33            | 1           |
#      | N_5747_EML_Seg_01_Trig_12_MORT_FNDNG_DT_lt_21           | 20            | 1           |
#      | N_5747_EML_Seg_01_Trig_12_MORT_FNDNG_DT_gt_60           | 61            | 1           |
#      | N_5747_EML_Seg_01_Trig_12_MORT_FNDNG_DT_eq_NULL         | NULL          | 1           |
#      | N_5747_EML_Seg_01_Trig_12_ACCT_SUBSYS_ID_ne_UO          | 34            | 1           |
#      | N_5747_EML_Seg_01_Trig_12_ACCT_SUBSYS_ID_eq_NULL        | 34            | 1           |
#      | N_5747_EML_Seg_01_Trig_12_SRC_ACCT_STAT_CD_ne_Active    | 34            | 1           |
#      | N_5747_EML_Seg_01_Trig_12_SRC_ACCT_STAT_CD_eq_NULL      | 34            | 1           |
#      | N_5747_EML_Seg_01_Trig_12_MORT_COMM_TYPE_ne_Residential | 34            | 1           |
#      | N_5747_EML_Seg_01_Trig_12_MORT_COMM_TYPE_eq_NULL        | 34            | 1           |
#      | N_5747_EML_Seg_01_Trig_12_IP_AR_RELATN_TYPE_CD_eq_COM   | 34            | 1           |
#      | N_5747_EML_Seg_01_Trig_12_IP_AR_RELATN_TYPE_CD_eq_NULL  | 34            | 1           |
#      | N_5747_EML_Seg_01_Trig_12_PHYSICIANS_F_eq_Y             | 30            | 1           |
#      | N_5747_EML_Trig_12_with_Current_Account                 | 30            | 2           |
      | 5747_EML_Seg_01_05_Trig_12_9                            | 30            | 2           |
      | 5747_EML_Seg_01_06_Trig_12_9                            | 30            | 2           |


  @D2DACQCrossSell @D2DAcqCrossSell_Positive_Negative_Trig13_TestData  @5747 @EMAIL @RS22054
  Scenario Outline: D2D Acq Cross Sell 5747_EMAIL Create test data for positive test cases for single account
    Given load data from "D2DAcqCrossSell" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When write "<noofmonths_inc>" and "<DD>" into "ACCT_DIM" sheet for "<Test cases>" in "MAT_DT" column
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                                   | noofmonths_inc | DD   |
      | 5747_EML_BASE_Seg_07_Trig_13_MAT_DT_gt_8months_lastday       | 8              | 30   |
      | 5747_EML_BASE_Seg_07_Trig_13_MAT_DT_eq_8months               | 8              | 12   |
      | 5747_EML_BASE_Seg_07_Trig_13_MAT_DT_eq_8months_firstday      | 8              | 01   |
      | 5747_EML_BASE_Seg_07_Trig_13_IP_AR_RELATN_TYPE_CD_eq_BOR     | 8              | 15   |
      | 5747_EML_BASE_Seg_07_Trig_13_IP_AR_RELATN_TYPE_CD_eq_COB     | 8              | 15   |
#      | N_5747_EML_BASE_Seg_07_Trig_13_MAT_DT_lt_8months             | 7              | 30   |
#      | N_5747_EML_BASE_Seg_07_Trig_13_MAT_DT_gt_8months             | 9              | 01   |
#      | N_5747_EML_BASE_Seg_07_Trig_13_MAT_DT_eq_NULL                | NULL           | NULL |
#      | N_5747_EML_BASE_Seg_07_Trig_13_ACCT_SUBSYS_ID_ne_UO          | 8              | 15   |
#      | N_5747_EML_BASE_Seg_07_Trig_13_ACCT_SUBSYS_ID_eq_NULL        | 8              | 15   |
#      | N_5747_EML_BASE_Seg_07_Trig_13_SRC_ACCT_STAT_CD_ne_Active    | 8              | 15   |
#      | N_5747_EML_BASE_Seg_07_Trig_13_SRC_ACCT_STAT_CD_eq_NULL      | 8              | 15   |
#      | N_5747_EML_BASE_Seg_07_Trig_13_MORT_COMM_TYPE_ne_Residential | 8              | 15   |
#      | N_5747_EML_BASE_Seg_07_Trig_13_MORT_COMM_TYPE_eq_NULL        | 8              | 15   |
#      | N_5747_EML_BASE_Seg_07_Trig_13_IP_AR_RELATN_TYPE_CD_eq_BUS   | 8              | 15   |
#      | N_5747_EML_BASE_Seg_07_Trig_13_IP_AR_RELATN_TYPE_CD_eq_NULL  | 8              | 15   |


  @D2DACQCrossSell @D2DAcqCrossSell_Positive_Negative_Trig06_Trig07_Trig08_TestData  @5747 @EMAIL @RS22054
  Scenario Outline: D2D Acq Cross Sell 5747_EMAIL Create test data for positive test cases for single account
    Given load data from "D2DAcqCrossSell" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When write "MLS_ADDED_AT_DT" for "<MLS_DT>" into "CUST_DIM" sheet for "<Test cases>" for decrement in days
    When write "MARRIAGE_LIFE_EVENT_DT " for "<marriage_dt>" into "CUST_DIM" sheet for "<Test cases>" for decrement in days
    When write "GRADUATION_LIFE_EVENT_DT " for "<GRAD_DT>" into "CUST_DIM" sheet for "<Test cases>" for decrement in days
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                                   | MLS_DT | marriage_dt | GRAD_DT |
      | 5747_EML_Seg_03_or_04_Trig_6_7_8_Life_Event_MOV              | 20     | 21          | 21      |
      | 5747_EML_Seg_03_or_04_Trig_6_7_8_Life_Event_MARRIAGE         | 21     | 20          | 21      |
      | 5747_EML_Seg_03_or_04_Trig_6_7_8_Life_Event_GRAD             | 21     | 21          | 20      |
      | 5747_EML_Seg_03_or_04_Trig_6_7_8_Life_Event_RANDOM_scenario1 | 20     | 20          | 20      |
      | 5747_EML_Seg_03_or_04_Trig_6_7_8_Life_Event_RANDOM_scenario2 | 20     | 20          | 20      |
      | 5747_EML_Seg_03_or_04_Trig_6_7_8_Life_Event_RANDOM_scenario3 | 20     | 20          | 20      |

  @D2DACQCrossSell @D2DAcqCrossSell_Positive_Negative_Trig13_MatDt_TestData  @5747 @EMAIL @RS22054
  Scenario Outline: D2D Acq Cross Sell 5747_EMAIL Create test data for positive test cases for single account
    Given load data from "D2DAcqCrossSell" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When write "MAT_DT " for "<mat_dt>" into "ACCT_DIM" sheet for "<Test cases>" for increment in days
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                       | mat_dt |
      | 5747_EML_BASE_Seg_07_Trig_13_MAT_DT_eq_20 days   | 20     |
      | 5747_EML_BASE_Seg_07_Trig_13_MAT_DT_gt_20 days   | 21     |
      | 5747_EML_BASE_Seg_07_Trig_13_MAT_DT_eq_30 days   | 30     |
      | 5747_EML_BASE_Seg_07_Trig_13_MAT_DT_lt_30 days   | 29     |
#      | N_5747_EML_BASE_Seg_07_Trig_13_MAT_DT_lt_20 days | 19     |
#      | N_5747_EML_BASE_Seg_07_Trig_13_MAT_DT_gt_30 days | 31     |
#      | N_5747_EML_BASE_Seg_07_Trig_13_MAT_DT_eq_NULL    | NULL   |

  @D2DACQCrossSell @D2DAcqCrossSell_Positive_Negative_Trig015_Multiple_TestData  @5747 @EMAIL
  Scenario Outline: D2D Acq Cross Sell 5747_EMAIL Create test data for positive test cases for multiple accounts of trig 15
    Given load data from "D2DAcqCrossSell" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    And write Different account odt "<Acct_Odt1>""<Acct_Odt2>" value into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts

    Examples:
      | Test cases                 | Acct_Odt1 | Acct_Odt2 |
      | 5747_EML_Trig_15_Dual_MPSA | 58        | 67        |



# March 30, 2023 Release
  @D2DACQCrossSell @D2DAcqCrossSell_Base_TestData_Mar30  @5747 @EMAIL @RS22054
  Scenario Outline: D2D Acq Cross Sell 5747_EMAIL Create test data for Base test cases for Mar 30 Release
    Given load data from "D2DAcqCrossSell" excel sheet

    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "CUST_OPND_DT" field with "<V_CUST_OPND_DT>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Different Generic Dates in "SOL_LAST_LOGIN_DT" field with "<V_SOL_LAST_LOGIN_DT>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Different Generic Dates in "MOB_LAST_LOGIN_DT" field with "<V_MOB_LAST_LOGIN_DT>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Different Generic Dates in "MLS_ADDED_AT_DT" field with "<MLS_DT>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Different Generic Dates in "MARRIAGE_LIFE_EVENT_DT" field with "<MARRIAGE_DT>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Different Generic Dates in "GRADUATION_LIFE_EVENT_DT" field with "<GRADUATION_DT>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM

    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "CRD_RENEWAL_DT" field with "<CRD_RENEWAL_DT>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    And write Different Generic Dates in "ACCT_ODT" field with "<V_ACCT_ODT>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    And write Different Generic Dates in "MORT_FNDNG_DT" field with "<V_MORT_FNDNG_DT>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    And write Different Generic Dates in "MAT_DT" field with "<MAT_DT>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts


  # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

  # CUST_INSIGHTS
#    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
#    When write account number into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write cid and account number into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" accounts

### Need to Replace this statement with a new method for multiple Insights
#    When write  Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>"


#    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
#    Then insert customer details in "CUST_INSIGHTS" table
    Then insert customer and account details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

  # EXTERNAL_INPUT_FILE_LAYOUT
    When write current CID into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<Ext_Inp_File_Cnt>" records
    And write Different Generic Dates in "VALID_START_DATE" field with "<V_VALID_START_DATE>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<Ext_Inp_File_Cnt>" records
    And write Different Generic Dates in "VALID_END_DATE" field with "<V_VALID_END_DATE>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<Ext_Inp_File_Cnt>" records
#    Then insert customer and account details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<Ext_Inp_File_Cnt>" accounts
    Then insert details in "EXTERNAL_INPUT_FILE_LAYOUT" table without TimeStamp having "<Ext_Inp_File_Cnt>" records

    Examples:
      | Test cases              | Acct_Cnt | Insight_Cnt | Ext_Inp_File_Cnt | V_VALID_START_DATE | V_VALID_END_DATE | V_CUST_OPND_DT | V_SOL_LAST_LOGIN_DT | V_MOB_LAST_LOGIN_DT | CRD_RENEWAL_DT | V_ACCT_ODT | V_MORT_FNDNG_DT | MAT_DT | MLS_DT | MARRIAGE_DT | GRADUATION_DT |
      | 5747_EML_BASE_08_Trig_2 | 1        | 0           | 0                | NULL               | NULL             | 45             | 60                  | 60                  | NULL           | 50         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | 5747_EML_BASE_09_Trig_2 | 1        | 0           | 0                | NULL               | NULL             | 100            | 60                  | 60                  | NULL           | 100        | NULL            | NULL   | NULL   | NULL        | NULL          |
      | 5747_EML_BASE_10_Trig_2 | 1        | 0           | 0                | NULL               | NULL             | 70             | 60                  | 60                  | NULL           | 70         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | 5747_EML_BASE_11_Trig_2 | 1        | 0           | 0                | NULL               | NULL             | NULL           | 60                  | 60                  | NULL           | NULL       | NULL            | NULL   | NULL   | NULL        | NULL          |


  @D2DACQCrossSell @D2DAcqCrossSell_Positive_TestData_Mar30  @5747 @EMAIL @RS22054
  Scenario Outline: D2D Acq Cross Sell 5747_EMAIL Create test data for Positive test cases for Mar 30 Release
    Given load data from "D2DAcqCrossSell" excel sheet

    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "CUST_OPND_DT" field with "<V_CUST_OPND_DT>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Different Generic Dates in "SOL_LAST_LOGIN_DT" field with "<V_SOL_LAST_LOGIN_DT>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Different Generic Dates in "MOB_LAST_LOGIN_DT" field with "<V_MOB_LAST_LOGIN_DT>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Different Generic Dates in "MLS_ADDED_AT_DT" field with "<MLS_DT>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Different Generic Dates in "MARRIAGE_LIFE_EVENT_DT" field with "<MARRIAGE_DT>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Different Generic Dates in "GRADUATION_LIFE_EVENT_DT" field with "<GRADUATION_DT>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM

    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "CRD_RENEWAL_DT" field with "<CRD_RENEWAL_DT>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    And write Different Generic Dates in "ACCT_ODT" field with "<V_ACCT_ODT>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    And write Different Generic Dates in "MORT_FNDNG_DT" field with "<V_MORT_FNDNG_DT>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    And write Different Generic Dates in "MAT_DT" field with "<MAT_DT>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts


  # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

  # CUST_INSIGHTS
#    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
#    When write account number into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write cid and account number into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" accounts

### Need to Replace this statement with a new method for multiple Insights
#    When write  Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>"


#    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
#    Then insert customer details in "CUST_INSIGHTS" table
    Then insert customer and account details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

  # EXTERNAL_INPUT_FILE_LAYOUT
    When write current CID into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<Ext_Inp_File_Cnt>" records
    And write Different Generic Dates in "VALID_START_DATE" field with "<V_VALID_START_DATE>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<Ext_Inp_File_Cnt>" records
    And write Different Generic Dates in "VALID_END_DATE" field with "<V_VALID_END_DATE>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<Ext_Inp_File_Cnt>" records
#    Then insert customer and account details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<Ext_Inp_File_Cnt>" accounts
    Then insert details in "EXTERNAL_INPUT_FILE_LAYOUT" table without TimeStamp having "<Ext_Inp_File_Cnt>" records

    Examples:
      | Test cases                                                                   | Acct_Cnt | Insight_Cnt | Ext_Inp_File_Cnt | V_VALID_START_DATE | V_VALID_END_DATE | V_CUST_OPND_DT | V_SOL_LAST_LOGIN_DT | V_MOB_LAST_LOGIN_DT | CRD_RENEWAL_DT | V_ACCT_ODT | V_MORT_FNDNG_DT | MAT_DT | MLS_DT | MARRIAGE_DT | GRADUATION_DT |
#      | 5747_EML_Seg_09_Trig_17                                                      | 1        | 0           | 0                | NULL               | NULL             | 100            | 60                  | 60                  | NULL           | 100        | NULL            | NULL   | NULL   | NULL        | NULL          |
#      | 5747_EML_Seg_10_Trig_17                                                      | 1        | 0           | 0                | NULL               | NULL             | 70             | 60                  | 60                  | NULL           | 70         | NULL            | NULL   | NULL   | NULL        | NULL          |
#      | 5747_EML_Seg_11_Trig_17_ACCT_ODT_gt_60                                       | 1        | 0           | 0                | NULL               | NULL             | NULL           | 60                  | 60                  | NULL           | 61         | NULL            | NULL   | NULL   | NULL        | NULL          |
#      | 5747_EML_Seg_08_Trig_18_VALID_START_DATE_lt_Curr_Dt                          | 1        | 0           | 1                | 1                  | -5               | 45             | 60                  | 60                  | NULL           | 50         | NULL            | NULL   | NULL   | NULL        | NULL          |
#      | 5747_EML_Seg_09_Trig_18_VALID_START_DATE_eq_Curr_Dt                          | 1        | 0           | 1                | 0                  | -5               | 100            | 60                  | 60                  | NULL           | 100        | NULL            | NULL   | NULL   | NULL        | NULL          |
#      | 5747_EML_Seg_10_Trig_18_VALID_END_DATE_gt_Curr_Dt                            | 1        | 0           | 1                | 5                  | -1               | 70             | 60                  | 60                  | NULL           | 70         | NULL            | NULL   | NULL   | NULL        | NULL          |
#      | 5747_EML_Seg_11_Trig_18_VALID_END_DATE_eq_Curr_Dt                            | 1        | 0           | 1                | 5                  | 0                | NULL           | 60                  | 60                  | NULL           | NULL       | NULL            | NULL   | NULL   | NULL        | NULL          |
#      | 5747_EML_Seg_08_Trig_2_CUST_OPND_DT_lt_60                                    | 1        | 0           | 0                | NULL               | NULL             | 59             | 60                  | 60                  | NULL           | 50         | NULL            | NULL   | NULL   | NULL        | NULL          |
#      | 5747_EML_Seg_08_Trig_2_SRC_SYS_PRD_CD_eq_AXG_SRC_SYS_SUB_PRD_CD_eq_GC        | 1        | 0           | 0                | NULL               | NULL             | 45             | 60                  | 60                  | NULL           | 50         | NULL            | NULL   | NULL   | NULL        | NULL          |
#      | 5747_EML_Seg_08_Trig_2_SRC_SYS_PRD_CD_eq_AXP_SRC_SYS_SUB_PRD_CD_eq_PC        | 1        | 0           | 0                | NULL               | NULL             | 45             | 60                  | 60                  | NULL           | 50         | NULL            | NULL   | NULL   | NULL        | NULL          |
#      | 5747_EML_Seg_08_Trig_2_SRC_SYS_PRD_CD_eq_AXS_SRC_SYS_SUB_PRD_CD_eq_SC        | 1        | 0           | 0                | NULL               | NULL             | 45             | 60                  | 60                  | NULL           | 50         | NULL            | NULL   | NULL   | NULL        | NULL          |
#      | 5747_EML_Seg_08_Trig_2_SRC_SYS_PRD_CD_eq_VFF_SRC_SYS_SUB_PRD_CD_eq_TR        | 1        | 0           | 0                | NULL               | NULL             | 45             | 60                  | 60                  | NULL           | 50         | NULL            | NULL   | NULL   | NULL        | NULL          |
#      | 5747_EML_Seg_08_Trig_2_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_ZZ        | 1        | 0           | 0                | NULL               | NULL             | 45             | 60                  | 60                  | NULL           | 50         | NULL            | NULL   | NULL   | NULL        | NULL          |
#      | 5747_EML_Seg_08_Trig_2_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_SS        | 1        | 0           | 0                | NULL               | NULL             | 45             | 60                  | 60                  | NULL           | 50         | NULL            | NULL   | NULL   | NULL        | NULL          |
#      | 5747_EML_Seg_08_Trig_2_ACCT_ODT_lt_60                                        | 1        | 0           | 0                | NULL               | NULL             | 45             | 60                  | 60                  | NULL           | 59         | NULL            | NULL   | NULL   | NULL        | NULL          |
#      | 5747_EML_Seg_08_Trig_2_SOL_LAST_LOGIN_DT_lt_90_MOB_LAST_LOGIN_DT_eq_NULL     | 1        | 0           | 0                | NULL               | NULL             | 45             | 89                  | NULL                | NULL           | 50         | NULL            | NULL   | NULL   | NULL        | NULL          |
#      | 5747_EML_Seg_08_Trig_2_SOL_LAST_LOGIN_DT_eq_NULL_MOB_LAST_LOGIN_DT_lt_90     | 1        | 0           | 0                | NULL               | NULL             | 45             | NULL                | 89                  | NULL           | 50         | NULL            | NULL   | NULL   | NULL        | NULL          |
#      | 5747_EML_Seg_09_Trig_2_CUST_OPND_DT_gt_90                                    | 1        | 0           | 0                | NULL               | NULL             | 91             | 60                  | 60                  | NULL           | 100        | NULL            | NULL   | NULL   | NULL        | NULL          |
#      | 5747_EML_Seg_09_Trig_2_CUST_OPND_DT_eq_90                                    | 1        | 0           | 0                | NULL               | NULL             | 90             | 60                  | 60                  | NULL           | 100        | NULL            | NULL   | NULL   | NULL        | NULL          |
#      | 5747_EML_Seg_09_Trig_2_SRC_SYS_PRD_CD_eq_AXP_SRC_SYS_SUB_PRD_CD_eq_PC        | 1        | 0           | 0                | NULL               | NULL             | 100            | 60                  | 60                  | NULL           | 100        | NULL            | NULL   | NULL   | NULL        | NULL          |
#      | 5747_EML_Seg_09_Trig_2_SRC_SYS_PRD_CD_eq_AXS_SRC_SYS_SUB_PRD_CD_eq_SC        | 1        | 0           | 0                | NULL               | NULL             | 100            | 60                  | 60                  | NULL           | 100        | NULL            | NULL   | NULL   | NULL        | NULL          |
#      | 5747_EML_Seg_09_Trig_2_SRC_SYS_PRD_CD_eq_VFF_SRC_SYS_SUB_PRD_CD_eq_TR        | 1        | 0           | 0                | NULL               | NULL             | 100            | 60                  | 60                  | NULL           | 100        | NULL            | NULL   | NULL   | NULL        | NULL          |
#      | 5747_EML_Seg_09_Trig_2_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_ZZ        | 1        | 0           | 0                | NULL               | NULL             | 100            | 60                  | 60                  | NULL           | 100        | NULL            | NULL   | NULL   | NULL        | NULL          |
      | 5747_EML_Seg_09_Trig_2_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_SS        | 1        | 0           | 0                | NULL               | NULL             | 100            | 60                  | 60                  | NULL           | 100        | NULL            | NULL   | NULL   | NULL        | NULL          |
      | 5747_EML_Seg_09_Trig_2_SRC_SYS_PRD_CD_eq_AXG_SRC_SYS_SUB_PRD_CD_eq_GC_CLOSED | 2        | 0           | 0                | NULL               | NULL             | 100            | 60                  | 60                  | NULL           | 100        | NULL            | NULL   | NULL   | NULL        | NULL          |
      | 5747_EML_Seg_09_Trig_2_SRC_SYS_PRD_CD_eq_AXG_SRC_SYS_SUB_PRD_CD_eq_GS_CLOSED | 2        | 0           | 0                | NULL               | NULL             | 100            | 60                  | 60                  | NULL           | 100        | NULL            | NULL   | NULL   | NULL        | NULL          |
      | 5747_EML_Seg_09_Trig_2_ACCT_ODT_gt_90                                        | 1        | 0           | 0                | NULL               | NULL             | 100            | 60                  | 60                  | NULL           | 91         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | 5747_EML_Seg_09_Trig_2_ACCT_ODT_eq_90                                        | 1        | 0           | 0                | NULL               | NULL             | 100            | 60                  | 60                  | NULL           | 90         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | 5747_EML_Seg_09_Trig_2_SOL_LAST_LOGIN_DT_lt_90                               | 1        | 0           | 0                | NULL               | NULL             | 100            | 89                  | NULL                | NULL           | 100        | NULL            | NULL   | NULL   | NULL        | NULL          |
      | 5747_EML_Seg_09_Trig_2_SOL_LAST_LOGIN_DT_eq_90                               | 1        | 0           | 0                | NULL               | NULL             | 100            | 90                  | NULL                | NULL           | 100        | NULL            | NULL   | NULL   | NULL        | NULL          |
      | 5747_EML_Seg_09_Trig_2_MOB_LAST_LOGIN_DT_lt_90                               | 1        | 0           | 0                | NULL               | NULL             | 100            | NULL                | 89                  | NULL           | 100        | NULL            | NULL   | NULL   | NULL        | NULL          |
      | 5747_EML_Seg_09_Trig_2_MOB_LAST_LOGIN_DT_eq_90                               | 1        | 0           | 0                | NULL               | NULL             | 100            | NULL                | 90                  | NULL           | 100        | NULL            | NULL   | NULL   | NULL        | NULL          |
      | 5747_EML_Seg_10_Trig_2_CUST_OPND_DT_gt_60                                    | 1        | 0           | 0                | NULL               | NULL             | 61             | 60                  | 60                  | NULL           | 70         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | 5747_EML_Seg_10_Trig_2_CUST_OPND_DT_eq_60                                    | 1        | 0           | 0                | NULL               | NULL             | 60             | 60                  | 60                  | NULL           | 70         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | 5747_EML_Seg_10_Trig_2_ACCT_ODT_gt_60                                        | 1        | 0           | 0                | NULL               | NULL             | 70             | 60                  | 60                  | NULL           | 61         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | 5747_EML_Seg_10_Trig_2_ACCT_ODT_eq_60                                        | 1        | 0           | 0                | NULL               | NULL             | 70             | 60                  | 60                  | NULL           | 60         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | 5747_EML_Seg_10_Trig_2_non_Scene_CC_PROD_HIER_LEVEL_3_eq_Credit Cards        | 1        | 0           | 0                | NULL               | NULL             | 70             | 60                  | 60                  | NULL           | 61         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | 5747_EML_Seg_10_Trig_2_SOL_LAST_LOGIN_DT_lt_90                               | 1        | 0           | 0                | NULL               | NULL             | 70             | 89                  | NULL                | NULL           | 70         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | 5747_EML_Seg_10_Trig_2_SOL_LAST_LOGIN_DT_eq_90                               | 1        | 0           | 0                | NULL               | NULL             | 70             | 90                  | NULL                | NULL           | 70         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | 5747_EML_Seg_10_Trig_2_MOB_LAST_LOGIN_DT_lt_90                               | 1        | 0           | 0                | NULL               | NULL             | 70             | NULL                | 89                  | NULL           | 70         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | 5747_EML_Seg_10_Trig_2_MOB_LAST_LOGIN_DT_eq_90                               | 1        | 0           | 0                | NULL               | NULL             | 70             | NULL                | 90                  | NULL           | 70         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | 5747_EML_Seg_11_Trig_2_IMMGRTN_CAT_CD_ne_S_or_S00                            | 1        | 0           | 0                | NULL               | NULL             | NULL           | 60                  | 60                  | NULL           | NULL       | NULL            | NULL   | NULL   | NULL        | NULL          |
      | 5747_EML_Seg_11_Trig_2_SOL_LAST_LOGIN_DT_lt_90                               | 1        | 0           | 0                | NULL               | NULL             | NULL           | 89                  | NULL                | NULL           | NULL       | NULL            | NULL   | NULL   | NULL        | NULL          |
      | 5747_EML_Seg_11_Trig_2_SOL_LAST_LOGIN_DT_eq_90                               | 1        | 0           | 0                | NULL               | NULL             | NULL           | 90                  | NULL                | NULL           | NULL       | NULL            | NULL   | NULL   | NULL        | NULL          |
      | 5747_EML_Seg_11_Trig_2_MOB_LAST_LOGIN_DT_lt_90                               | 1        | 0           | 0                | NULL               | NULL             | NULL           | NULL                | 89                  | NULL           | NULL       | NULL            | NULL   | NULL   | NULL        | NULL          |
      | 5747_EML_Seg_11_Trig_2_MOB_LAST_LOGIN_DT_eq_90                               | 1        | 0           | 0                | NULL               | NULL             | NULL           | NULL                | 90                  | NULL           | NULL       | NULL            | NULL   | NULL   | NULL        | NULL          |
      | 5747_EML_Seg_11_Trig_17_ACCT_ODT_eq_60                                       | 1        | 0           | 0                | NULL               | NULL             | NULL           | 60                  | 60                  | NULL           | 60         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | 5747_EML_Seg_11_Trig_17_ACCT_ODT_lt_60                                       | 1        | 0           | 0                | NULL               | NULL             | NULL           | 60                  | 60                  | NULL           | 59         | NULL            | NULL   | NULL   | NULL        | NULL          |
#      | 5747_EML_Seg_10_Trig_2_AMEX_with_Scene_Plus                                  | 2        | 0           | 0                | NULL               | NULL             | 70             | 60                  | 60                  | NULL           | 70         | NULL            | NULL   | NULL   | NULL        | NULL          |


  @D2DACQCrossSell @D2DAcqCrossSell_Negative_TestData_Mar30  @5747 @EMAIL @RS22054
  Scenario Outline: D2D Acq Cross Sell 5747_EMAIL Create test data for Negative test cases for Mar 30 Release
    Given load data from "D2DAcqCrossSell" excel sheet

    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "CUST_OPND_DT" field with "<V_CUST_OPND_DT>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Different Generic Dates in "SOL_LAST_LOGIN_DT" field with "<V_SOL_LAST_LOGIN_DT>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Different Generic Dates in "MOB_LAST_LOGIN_DT" field with "<V_MOB_LAST_LOGIN_DT>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Different Generic Dates in "MLS_ADDED_AT_DT" field with "<MLS_DT>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Different Generic Dates in "MARRIAGE_LIFE_EVENT_DT" field with "<MARRIAGE_DT>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Different Generic Dates in "GRADUATION_LIFE_EVENT_DT" field with "<GRADUATION_DT>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM

    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "CRD_RENEWAL_DT" field with "<CRD_RENEWAL_DT>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    And write Different Generic Dates in "ACCT_ODT" field with "<V_ACCT_ODT>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    And write Different Generic Dates in "MORT_FNDNG_DT" field with "<V_MORT_FNDNG_DT>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    And write Different Generic Dates in "MAT_DT" field with "<MAT_DT>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts


  # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

  # CUST_INSIGHTS
#    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
#    When write account number into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write cid and account number into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" accounts

### Need to Replace this statement with a new method for multiple Insights
#    When write  Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>"


#    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
#    Then insert customer details in "CUST_INSIGHTS" table
    Then insert customer and account details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

  # EXTERNAL_INPUT_FILE_LAYOUT
    When write current CID into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<Ext_Inp_File_Cnt>" records
    And write Different Generic Dates in "VALID_START_DATE" field with "<V_VALID_START_DATE>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<Ext_Inp_File_Cnt>" records
    And write Different Generic Dates in "VALID_END_DATE" field with "<V_VALID_END_DATE>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<Ext_Inp_File_Cnt>" records
#    Then insert customer and account details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<Ext_Inp_File_Cnt>" accounts
    Then insert details in "EXTERNAL_INPUT_FILE_LAYOUT" table without TimeStamp having "<Ext_Inp_File_Cnt>" records

    Examples:
      | Test cases                                                                             | Acct_Cnt | Insight_Cnt | Ext_Inp_File_Cnt | V_VALID_START_DATE | V_VALID_END_DATE | V_CUST_OPND_DT | V_SOL_LAST_LOGIN_DT | V_MOB_LAST_LOGIN_DT | CRD_RENEWAL_DT | V_ACCT_ODT | V_MORT_FNDNG_DT | MAT_DT | MLS_DT | MARRIAGE_DT | GRADUATION_DT |
#      | March 30 2023 Release - Negative Scenarios                                             |
      | N_5747_EML_Seg_09_Trig_17_ACCT_SUBSYS_ID_ne_KS                                         | 1        | 0           | 0                | NULL               | NULL             | 100            | 60                  | 60                  | NULL           | 100        | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_09_Trig_17_ACCT_SUBSYS_ID_eq_NULL                                       | 1        | 0           | 0                | NULL               | NULL             | 100            | 60                  | 60                  | NULL           | 100        | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_09_Trig_17_SRC_ACCT_STAT_CD_ne_Open                                     | 1        | 0           | 0                | NULL               | NULL             | 100            | 60                  | 60                  | NULL           | 100        | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_09_Trig_17_SRC_ACCT_STAT_CD_eq_NULL                                     | 1        | 0           | 0                | NULL               | NULL             | 100            | 60                  | 60                  | NULL           | 100        | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_09_Trig_17_PROD_HIER_LEVEL_3_ne_Credit_Cards                            | 1        | 0           | 0                | NULL               | NULL             | 100            | 60                  | 60                  | NULL           | 100        | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_09_Trig_17_PROD_HIER_LEVEL_3_eq_NULL                                    | 1        | 0           | 0                | NULL               | NULL             | 100            | 60                  | 60                  | NULL           | 100        | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_08_Trig_18_VALID_START_DATE_gt_Curr_Dt                                  | 1        | 0           | 1                | -1                 | -5               | 45             | 60                  | 60                  | NULL           | 50         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_08_Trig_18_VALID_END_DATE_lt_Curr_Dt                                    | 1        | 0           | 1                | 5                  | 1                | 45             | 60                  | 60                  | NULL           | 50         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_08_Trig_18_CAMPAIGN_CODE_ne_RS22054                                     | 1        | 0           | 1                | 5                  | -5               | 45             | 60                  | 60                  | NULL           | 50         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_08_Trig_18_CAMPAIGN_CELL_CODE_ne_CIE5747                                | 1        | 0           | 1                | 5                  | -5               | 45             | 60                  | 60                  | NULL           | 50         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_08_Trig_18_CAMPAIGN_CELL_CODE_eq_NULL                                   | 1        | 0           | 1                | 5                  | -5               | 45             | 60                  | 60                  | NULL           | 50         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_08_Trig_18_CAMPAIGN_CELL_CODE_FLAG_ne_Y                                 | 1        | 0           | 1                | 5                  | -5               | 45             | 60                  | 60                  | NULL           | 50         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_08_Trig_18_CAMPAIGN_CELL_CODE_FLAG_eq_NULL                              | 1        | 0           | 1                | 5                  | -5               | 45             | 60                  | 60                  | NULL           | 50         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_08_Trig_18_EMAIL_CHANNEL_ne_Y                                           | 1        | 0           | 1                | 5                  | -5               | 45             | 60                  | 60                  | NULL           | 50         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_08_Trig_18_EMAIL_CHANNEL_eq_NULL                                        | 1        | 0           | 1                | 5                  | -5               | 45             | 60                  | 60                  | NULL           | 50         | NULL            | NULL   | NULL   | NULL        | NULL          |

#      | March 30 2023 Release - Partially Negative Scenarios                                   |
      | N_5747_EML_Seg_08_Trig_2_CUST_OPND_DT_eq_60                                            | 1        | 0           | 0                | NULL               | NULL             | 60             | 60                  | 60                  | NULL           | 50         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_08_Trig_2_CUST_OPND_DT_gt_60                                            | 1        | 0           | 0                | NULL               | NULL             | 61             | 60                  | 60                  | NULL           | 50         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_08_Trig_2_SRC_SYS_PRD_CD_eq_NULL_SRC_SYS_SUB_PRD_CD_eq_NULL             | 1        | 0           | 0                | NULL               | NULL             | 45             | 60                  | 60                  | NULL           | 50         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_08_Trig_2_ACCT_ODT_eq_60                                                | 1        | 0           | 0                | NULL               | NULL             | 45             | 60                  | 60                  | NULL           | 60         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_08_Trig_2_ACCT_ODT_gt_60                                                | 1        | 0           | 0                | NULL               | NULL             | 45             | 60                  | 60                  | NULL           | 61         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_08_Trig_2_PRIMARY_ACCT_HOLDER_FLAG_ne_Y                                 | 1        | 0           | 0                | NULL               | NULL             | 45             | 60                  | 60                  | NULL           | 50         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_08_Trig_2_PRIMARY_ACCT_HOLDER_FLAG_eq_NULL                              | 1        | 0           | 0                | NULL               | NULL             | 45             | 60                  | 60                  | NULL           | 50         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_08_Trig_2_SOL_LAST_LOGIN_DT_gt_90                                       | 1        | 0           | 0                | NULL               | NULL             | 45             | 91                  | NULL                | NULL           | 50         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_08_Trig_2_MOB_LAST_LOGIN_DT_gt_90                                       | 1        | 0           | 0                | NULL               | NULL             | 45             | NULL                | 91                  | NULL           | 50         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_08_Trig_2_SOL_LAST_LOGIN_DT_eq_NULL_MOB_LAST_LOGIN_DT_eq_NULL           | 1        | 0           | 0                | NULL               | NULL             | 45             | NULL                | NULL                | NULL           | 50         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_09_Trig_2_CUST_OPND_DT_lt_90                                            | 1        | 0           | 0                | NULL               | NULL             | 89             | 60                  | 60                  | NULL           | 100        | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_09_Trig_2_CUST_OPND_DT_eq_NULL                                          | 1        | 0           | 0                | NULL               | NULL             | NULL           | 60                  | 60                  | NULL           | 100        | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_09_Trig_2_SRC_SYS_PRD_CD_eq_NULL_SRC_SYS_SUB_PRD_CD_eq_NULL             | 1        | 0           | 0                | NULL               | NULL             | 100            | 60                  | 60                  | NULL           | 100        | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_09_Trig_2_ACCT_ODT_lt_90                                                | 1        | 0           | 0                | NULL               | NULL             | 100            | 60                  | 60                  | NULL           | 89         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_09_Trig_2_PRIMARY_ACCT_HOLDER_FLAG_ne_Y                                 | 1        | 0           | 0                | NULL               | NULL             | 100            | 60                  | 60                  | NULL           | 100        | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_09_Trig_2_PRIMARY_ACCT_HOLDER_FLAG_eq_NULL                              | 1        | 0           | 0                | NULL               | NULL             | 100            | 60                  | 60                  | NULL           | 100        | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_09_Trig_2_SOL_LAST_LOGIN_DT_gt_90                                       | 1        | 0           | 0                | NULL               | NULL             | 100            | 91                  | NULL                | NULL           | 100        | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_09_Trig_2_MOB_LAST_LOGIN_DT_gt_90                                       | 1        | 0           | 0                | NULL               | NULL             | 100            | NULL                | 91                  | NULL           | 100        | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_09_Trig_2_SOL_LAST_LOGIN_DT_eq_NULL_MOB_LAST_LOGIN_DT_eq_NULL           | 1        | 0           | 0                | NULL               | NULL             | 100            | NULL                | NULL                | NULL           | 100        | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_09_Trig_2_Has_AMEX_GOLD_SRC_SYS_PRD_CD_eq_AXG_SRC_SYS_SUB_PRD_CD_eq_GC  | 2        | 0           | 0                | NULL               | NULL             | 100            | 60                  | 60                  | NULL           | 100        | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_10_Trig_2_AMEX_CUST_OPND_DT_lt_60                                       | 1        | 0           | 0                | NULL               | NULL             | 59             | 60                  | 60                  | NULL           | 70         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_10_Trig_2_AMEX_CUST_OPND_DT_eq_NULL                                     | 1        | 0           | 0                | NULL               | NULL             | NULL           | 60                  | 60                  | NULL           | 70         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_10_Trig_2_AMEX_ACCT_SUBSYS_ID_ne_KS                                     | 1        | 0           | 0                | NULL               | NULL             | 70             | 60                  | 60                  | NULL           | 70         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_10_Trig_2_AMEX_ACCT_SUBSYS_ID_ne_NULL                                   | 1        | 0           | 0                | NULL               | NULL             | 70             | 60                  | 60                  | NULL           | 70         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_10_Trig_2_AMEX_SRC_ACCT_STAT_CD_ne_Open                                 | 1        | 0           | 0                | NULL               | NULL             | 70             | 60                  | 60                  | NULL           | 70         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_10_Trig_2_AMEX_SRC_ACCT_STAT_CD_eq_NULL                                 | 1        | 0           | 0                | NULL               | NULL             | 70             | 60                  | 60                  | NULL           | 70         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_10_Trig_2_AMEX_SRC_SYS_PRD_CD_eq_NULL_SRC_SYS_SUB_PRD_CD_eq_NULL        | 1        | 0           | 0                | NULL               | NULL             | 70             | 60                  | 60                  | NULL           | 70         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_10_Trig_2_AMEX_SRC_SYS_PRD_CD_ne_AXG_SRC_SYS_SUB_PRD_CD_ne_GC           | 1        | 0           | 0                | NULL               | NULL             | 70             | 60                  | 60                  | NULL           | 70         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_10_Trig_2_AMEX_ACCT_ODT_lt_60                                           | 1        | 0           | 0                | NULL               | NULL             | 70             | 60                  | 60                  | NULL           | 59         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_10_Trig_2_AMEX_SOL_LAST_LOGIN_DT_gt_90                                  | 1        | 0           | 0                | NULL               | NULL             | 70             | 91                  | NULL                | NULL           | 70         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_10_Trig_2_AMEX_MOB_LAST_LOGIN_DT_gt_90                                  | 1        | 0           | 0                | NULL               | NULL             | 70             | NULL                | 91                  | NULL           | 70         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_10_Trig_2_AMEX_SOL_LAST_LOGIN_DT_eq_NULL_MOB_LAST_LOGIN_DT_eq_NULL      | 1        | 0           | 0                | NULL               | NULL             | 70             | NULL                | NULL                | NULL           | 70         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_10_Trig_2_Non_Scene_CUST_OPND_DT_lt_60                                  | 1        | 0           | 0                | NULL               | NULL             | 59             | 60                  | 60                  | NULL           | 70         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_10_Trig_2_Non_Scene_CUST_OPND_DT_eq_NULL                                | 1        | 0           | 0                | NULL               | NULL             | NULL           | 60                  | 60                  | NULL           | 70         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_10_Trig_2_Non_Scene_ACCT_SUBSYS_ID_ne_KS                                | 1        | 0           | 0                | NULL               | NULL             | 70             | 60                  | 60                  | NULL           | 70         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_10_Trig_2_Non_Scene_ACCT_SUBSYS_ID_ne_NULL                              | 1        | 0           | 0                | NULL               | NULL             | 70             | 60                  | 60                  | NULL           | 70         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_10_Trig_2_Non_Scene_SRC_ACCT_STAT_CD_ne_Open                            | 1        | 0           | 0                | NULL               | NULL             | 70             | 60                  | 60                  | NULL           | 70         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_10_Trig_2_Non_Scene_SRC_ACCT_STAT_CD_eq_NULL                            | 1        | 0           | 0                | NULL               | NULL             | 70             | 60                  | 60                  | NULL           | 70         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_10_Trig_2_Non_Scene_ACCT_ODT_lt_60                                      | 1        | 0           | 0                | NULL               | NULL             | 70             | 60                  | 60                  | NULL           | 59         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_10_Trig_2_Non_Scene_SOL_LAST_LOGIN_DT_gt_90                             | 1        | 0           | 0                | NULL               | NULL             | 70             | 91                  | NULL                | NULL           | 70         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_10_Trig_2_Non_Scene_MOB_LAST_LOGIN_DT_gt_90                             | 1        | 0           | 0                | NULL               | NULL             | 70             | NULL                | 91                  | NULL           | 70         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_10_Trig_2_Non_Scene_SOL_LAST_LOGIN_DT_eq_NULL_MOB_LAST_LOGIN_DT_eq_NULL | 1        | 0           | 0                | NULL               | NULL             | 70             | NULL                | NULL                | NULL           | 70         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_10_Trig_2_Non_Scene_PROD_HIER_LEVEL_3_ne_Credit Cards                   | 1        | 0           | 0                | NULL               | NULL             | 70             | 60                  | 60                  | NULL           | 70         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_10_Trig_2_Non_Scene_PROD_HIER_LEVEL_3_eq_NULL                           | 1        | 0           | 0                | NULL               | NULL             | 70             | 60                  | 60                  | NULL           | 70         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_10_Trig_2_Non_Scene_with_Scene_Plus                                     | 2        | 0           | 0                | NULL               | NULL             | 70             | 60                  | 60                  | NULL           | 70         | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_11_Trig_2_MCB_IND_ne_Y                                                  | 1        | 0           | 0                | NULL               | NULL             | NULL           | 60                  | 60                  | NULL           | NULL       | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_11_Trig_2_MCB_IND_eq_NULL                                               | 1        | 0           | 0                | NULL               | NULL             | NULL           | 60                  | 60                  | NULL           | NULL       | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_11_Trig_2_IMMGRTN_CAT_CD_eq_S                                           | 1        | 0           | 0                | NULL               | NULL             | NULL           | 60                  | 60                  | NULL           | NULL       | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_11_Trig_2_IMMGRTN_CAT_CD_eq_S00                                         | 1        | 0           | 0                | NULL               | NULL             | NULL           | 60                  | 60                  | NULL           | NULL       | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_11_Trig_2_SOL_LAST_LOGIN_DT_gt_90                                       | 1        | 0           | 0                | NULL               | NULL             | NULL           | 91                  | NULL                | NULL           | NULL       | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_11_Trig_2_MOB_LAST_LOGIN_DT_gt_90                                       | 1        | 0           | 0                | NULL               | NULL             | NULL           | NULL                | 91                  | NULL           | NULL       | NULL            | NULL   | NULL   | NULL        | NULL          |
      | N_5747_EML_Seg_11_Trig_2_SOL_LAST_LOGIN_DT_eq_NULL_MOB_LAST_LOGIN_DT_eq_NULL           | 1        | 0           | 0                | NULL               | NULL             | NULL           | NULL                | NULL                | NULL           | NULL       | NULL            | NULL   | NULL   | NULL        | NULL          |

   #Added for Aug 03 2023 rls
  @D2DACQCrossSell @D2DAcqCrossSell_Positive_Negative_Trig19_TestData  @5747 @EMAIL @RS22054
  Scenario Outline: D2D Acq Cross Sell 5747 EMAIL Create test data for positive test cases for single account
    Given load data from "D2DAcqCrossSell" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table

    Examples:
      | Test cases                           |
      | 5747_EML_BASE_01_Trig_12_Trig19      |
      | 5747_EML_BASE_03_or_04_Trig_2_Trig19 |
      | 5747_EML_BASE_05_Trig_9_Trig19       |
      | 5747_EML_BASE_08_Trig_2_Trig19       |
      | 5747_EML_BASE_09_Trig_2_Trig19       |
      | 5747_EML_BASE_10_Trig_2_Trig19       |
      | 5747_EML_BASE_11_Trig_2_Trig19       |

