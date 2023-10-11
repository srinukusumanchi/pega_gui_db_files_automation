Feature: Validation for D2D Acquisition_5747

## Added for Mar 30 2023 - Positive TCs
  @D2DAcq_COS_5747_IH_PositiveTCs_Validation_Mar_30_2023_Release_COS
  Scenario Outline: D2D Acquisition 5747_RS22054_COS <Test cases>  Validate IH details against database and pega for Positive test cases for Mar 30 2023 Release
    Given load data from "D2DAcqCrossSell_SB" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then validate D2D Acquisition offer details against IH for "COS" Channel
    Examples:
      | Test cases                                                                  |
##Added for Mar 30 2023 - BASE for Creative 8, 9, 10, 11
      | 5747_SB_BASE_08_Trig_2                                                      |
      | 5747_SB_BASE_09_Trig_2                                                      |

##Added for Mar 30 2023 - Positive TCs
      | 5747_SB_Seg_09_Trig_17                                                      |
      | 5747_SB_Seg_03_Trig_17                                                      |
      | 5747_SB_Seg_03_Trig_17_ACCT_ODT_gt_60                                       |
      | 5747_SB_Seg_08_Trig_18_VALID_START_DATE_lt_Curr_Dt                          |
      | 5747_SB_Seg_09_Trig_18_VALID_START_DATE_eq_Curr_Dt                          |
      | 5747_SB_Seg_03_Trig_18_VALID_END_DATE_gt_Curr_Dt                            |
      | 5747_SB_Seg_03_Trig_18_VALID_END_DATE_eq_Curr_Dt                            |
      | 5747_SB_Seg_08_Trig_2_CUST_OPND_DT_lt_60                                    |
      | 5747_SB_Seg_08_Trig_2_SRC_SYS_PRD_CD_eq_AXG_SRC_SYS_SUB_PRD_CD_eq_GC        |
      | 5747_SB_Seg_08_Trig_2_SRC_SYS_PRD_CD_eq_AXP_SRC_SYS_SUB_PRD_CD_eq_PC        |
      | 5747_SB_Seg_08_Trig_2_SRC_SYS_PRD_CD_eq_AXS_SRC_SYS_SUB_PRD_CD_eq_SC        |
      | 5747_SB_Seg_08_Trig_2_SRC_SYS_PRD_CD_eq_VFF_SRC_SYS_SUB_PRD_CD_eq_TR        |
      | 5747_SB_Seg_08_Trig_2_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_ZZ        |
      | 5747_SB_Seg_08_Trig_2_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_SS        |
      | 5747_SB_Seg_08_Trig_2_ACCT_ODT_lt_60                                        |
      | 5747_SB_Seg_08_Trig_2_SOL_LAST_LOGIN_DT_lt_90_MOB_LAST_LOGIN_DT_eq_NULL     |
      | 5747_SB_Seg_08_Trig_2_SOL_LAST_LOGIN_DT_eq_NULL_MOB_LAST_LOGIN_DT_lt_90     |
      | 5747_SB_Seg_09_Trig_2_CUST_OPND_DT_gt_90                                    |
      | 5747_SB_Seg_09_Trig_2_CUST_OPND_DT_eq_90                                    |
      | 5747_SB_Seg_09_Trig_2_SRC_SYS_PRD_CD_eq_AXP_SRC_SYS_SUB_PRD_CD_eq_PC        |
      | 5747_SB_Seg_09_Trig_2_SRC_SYS_PRD_CD_eq_AXS_SRC_SYS_SUB_PRD_CD_eq_SC        |
      | 5747_SB_Seg_09_Trig_2_SRC_SYS_PRD_CD_eq_VFF_SRC_SYS_SUB_PRD_CD_eq_TR        |
      | 5747_SB_Seg_09_Trig_2_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_ZZ        |
      | 5747_SB_Seg_09_Trig_2_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_SS        |
      | 5747_SB_Seg_09_Trig_2_SRC_SYS_PRD_CD_eq_AXG_SRC_SYS_SUB_PRD_CD_eq_GC_CLOSED |
      | 5747_SB_Seg_09_Trig_2_SRC_SYS_PRD_CD_eq_AXG_SRC_SYS_SUB_PRD_CD_eq_GS_CLOSED |
      | 5747_SB_Seg_09_Trig_2_ACCT_ODT_gt_90                                        |
      | 5747_SB_Seg_09_Trig_2_ACCT_ODT_eq_90                                        |
      | 5747_SB_Seg_09_Trig_2_SOL_LAST_LOGIN_DT_lt_90                               |
      | 5747_SB_Seg_09_Trig_2_SOL_LAST_LOGIN_DT_eq_90                               |
      | 5747_SB_Seg_09_Trig_2_MOB_LAST_LOGIN_DT_lt_90                               |
      | 5747_SB_Seg_09_Trig_2_MOB_LAST_LOGIN_DT_eq_90                               |




## Added for Mar 30 2023 - Partially Negative TCs
  @D2DAcq_COS_5747_IH_Partially_Negative_TCs_Validation_Mar_30_2023_Release_COS
  Scenario Outline: D2D Acquisition 5747_RS22054_COS <Test cases>  Validate IH details against database and pega for Partially Negative test cases for Mar 30 2023 Release
    Given load data from "D2DAcqCrossSell_SB" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then validate D2D Acquisition offer details against IH for "COS" Channel
    Examples:
      | Test cases                                                                           |
      ##      |March 30 2023 Release - Partially Negative Scenarios|
      | N_5747_SB_Seg_08_Trig_2_CUST_OPND_DT_eq_60                                           |
      | N_5747_SB_Seg_08_Trig_2_CUST_OPND_DT_gt_60                                           |
      | N_5747_SB_Seg_08_Trig_2_SRC_SYS_PRD_CD_eq_NULL_SRC_SYS_SUB_PRD_CD_eq_NULL            |
      | N_5747_SB_Seg_08_Trig_2_ACCT_ODT_eq_60                                               |
      | N_5747_SB_Seg_08_Trig_2_ACCT_ODT_gt_60                                               |
      | N_5747_SB_Seg_08_Trig_2_PRIMARY_ACCT_HOLDER_FLAG_ne_Y                                |
      | N_5747_SB_Seg_08_Trig_2_PRIMARY_ACCT_HOLDER_FLAG_eq_NULL                             |
      | N_5747_SB_Seg_08_Trig_2_SOL_LAST_LOGIN_DT_gt_90                                      |
      | N_5747_SB_Seg_08_Trig_2_MOB_LAST_LOGIN_DT_gt_90                                      |
      | N_5747_SB_Seg_08_Trig_2_SOL_LAST_LOGIN_DT_eq_NULL_MOB_LAST_LOGIN_DT_eq_NULL          |
      | N_5747_SB_Seg_09_Trig_2_CUST_OPND_DT_lt_90                                           |
      | N_5747_SB_Seg_09_Trig_2_CUST_OPND_DT_eq_NULL                                         |
      | N_5747_SB_Seg_09_Trig_2_SRC_SYS_PRD_CD_eq_NULL_SRC_SYS_SUB_PRD_CD_eq_NULL            |
      | N_5747_SB_Seg_09_Trig_2_ACCT_ODT_lt_90                                               |
      | N_5747_SB_Seg_09_Trig_2_PRIMARY_ACCT_HOLDER_FLAG_ne_Y                                |
      | N_5747_SB_Seg_09_Trig_2_PRIMARY_ACCT_HOLDER_FLAG_eq_NULL                             |
      | N_5747_SB_Seg_09_Trig_2_SOL_LAST_LOGIN_DT_gt_90                                      |
      | N_5747_SB_Seg_09_Trig_2_MOB_LAST_LOGIN_DT_gt_90                                      |
      | N_5747_SB_Seg_09_Trig_2_SOL_LAST_LOGIN_DT_eq_NULL_MOB_LAST_LOGIN_DT_eq_NULL          |
      | N_5747_SB_Seg_09_Trig_2_Has_AMEX_GOLD_SRC_SYS_PRD_CD_eq_AXG_SRC_SYS_SUB_PRD_CD_eq_GC |


## Added for Mar 30 2023 - Negative TCs
  @D2DAcq_COS_5747_IH_Negative_TCs_Validation_Mar_30_2023_Release_COS
  Scenario Outline: D2D Acquisition 5747_RS22054_COS <Test cases>  Validate IH details against database and pega for Negative test cases for Mar 30 2023 Release
    Given load data from "D2DAcqCrossSell_SB" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then verify offer should not display
    Examples:
      | Test cases                                                 |
      | N_5747_SB_Seg_09_Trig_17_ACCT_SUBSYS_ID_ne_KS              |
      | N_5747_SB_Seg_09_Trig_17_ACCT_SUBSYS_ID_eq_NULL            |
      | N_5747_SB_Seg_09_Trig_17_SRC_ACCT_STAT_CD_ne_Open          |
      | N_5747_SB_Seg_09_Trig_17_SRC_ACCT_STAT_CD_eq_NULL          |
      | N_5747_SB_Seg_09_Trig_17_PROD_HIER_LEVEL_3_ne_Credit_Cards |
      | N_5747_SB_Seg_09_Trig_17_PROD_HIER_LEVEL_3_eq_NULL         |
      | N_5747_SB_Seg_08_Trig_18_VALID_START_DATE_gt_Curr_Dt       |
      | N_5747_SB_Seg_08_Trig_18_VALID_END_DATE_lt_Curr_Dt         |
      | N_5747_SB_Seg_08_Trig_18_CAMPAIGN_CODE_ne_RS22054          |
      | N_5747_SB_Seg_08_Trig_18_CAMPAIGN_CELL_CODE_ne_CIE5747     |
      | N_5747_SB_Seg_08_Trig_18_CAMPAIGN_CELL_CODE_eq_NULL        |
      | N_5747_SB_Seg_08_Trig_18_CAMPAIGN_CELL_CODE_FLAG_ne_Y      |
      | N_5747_SB_Seg_08_Trig_18_CAMPAIGN_CELL_CODE_FLAG_eq_NULL   |
      | N_5747_SB_Seg_08_Trig_18_EMAIL_CHANNEL_ne_Y                |
      | N_5747_SB_Seg_08_Trig_18_EMAIL_CHANNEL_eq_NULL             |
