@ULOC_CLI_SOL_6002_IHValidation
Feature: Validation for 6002 ULOC_CLI SOL

  @ULOC_CLI @ULOC_CLI_SOL_IH_Base_Validation_6002 @6002 @SOL @RS23043
  Scenario Outline: ULOC CLI RS23043_6002_SOL Validate IH details against database and pega for Base Line test cases
    Given load data from "ULOC_CLI_SOL_Ofr" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then validate ULOC CLI offer details against IH for "SOL" Channel

    Examples:
      | Test cases                |
      | 6002_SOL_BASE_Creative_01 |
      | 6002_SOL_BASE_Creative_02 |


#Positive IH Validation
  @ULOC_CLI @ULOC_CLI_SOL_IH_Positive_Validation_6002 @6002 @SOL @RS23043
  Scenario Outline: ULOC CLI RS23043_6002_SOL Validate IH details against database and pega for Positive test cases
    Given load data from "ULOC_CLI_SOL_Ofr" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then validate ULOC CLI offer details against IH for "SOL" Channel

    Examples:
      | Test cases                                                                                        |
      | 6002_SOL_Creative_1_CUST_AGE_eq_18                                                                |
      | 6002_SOL_Creative_1_LANG_CD_eq_fr                                                                 |
      | 6002_SOL_Creative_2_CC_VIP_IND_eq_NULL                                                            |
      | 6002_SOL_Creative_1_Curr_Dt_eq_CLI_OFR_ST_DT                                                      |
      | 6002_SOL_Creative_2_Curr_Dt_gt_CLI_OFR_ST_DT                                                      |
      | 6002_SOL_Creative_1_CLI_APRVD_CR_LMT_gt_CR_CRD_LMT_AMT                                            |
      | 6002_SOL_Creative_2_CUST_AGE_gt_70                                                                |
      | 6002_SOL_Creative_1_DO_NOT_SOLICIT_F_eq_NULL                                                      |
      | 6002_SOL_Creative_2_DO_NOT_SOLICIT_F_eq_Y                                                         |
      | 6002_SOL_Creative_1_Curr_Dt_eq_CLI_OFR_EXP_DT                                                     |
      | 6002_SOL_Creative_1_Curr_Dt_lt_CLI_OFR_EXP_DT                                                     |
      | 6002_SOL_ASSIGNED_FA_TRANSIT_eq_NULL_RESP_TRNST_NUM_eq_NULL_AND_CLOSEST_TRANSIT_NUM_ne_NULL       |
      | 6002_SOL_ASSIGNED_FA_TRANSIT_eq_NULL_RESP_TRNST_NUM_ne_NULL_AND_CLOSEST_TRANSIT_NUM_eq_NULL       |
      | 6002_SOL_Creative_1_MC_ELIG_eq_NULL                                                               |
# Prioritization Scenarios
      | 6002_SOL_Creative_1_Multiple_KS_Accounts_Prioritize_with_Highest_Approved_Limit_Same_Product      |
      | 6002_SOL_Creative_1_Multiple_KS_Accounts_Prioritize_with_Highest_Approved_Limit_Different_Product |


#Negative IH Validation
  @ULOC_CLI @ULOC_CLI_SOL_IH_Negative_Validation_6002 @6002 @SOL @RS23043
  Scenario Outline: ULOC CLI RS23043_6002_SOL Validate IH details against database and pega for Negative test cases
    Given load data from "ULOC_CLI_SOL_Ofr" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then verify using IH API that offer is not returned
    Examples:
      | Test cases                                                                                                 |
      | N_6002_SOL_Creative_01_PRIM_ADDR_LINE_1_eq_NULL                                                            |
      | N_6002_SOL_Creative_01_PRIM_CITY_NM_eq_NULL                                                                |
      | N_6002_SOL_Creative_01_PRIM_POST_CD_eq_NULL                                                                |
      | N_6002_SOL_ASSIGNED_FA_TRANSIT_eq_NULL_RESP_TRNST_NUM_eq_NULL_AND_CLOSEST_TRANSIT_NUM_NULL                 |
      | N_6002_SOL_ASSIGNED_FA_TRANSIT_eq_NULL_RESP_TRNST_NUM_ne_NULL_AND_CLOSEST_TRANSIT_NUM_NULL                 |
      | N_6002_SOL_Creative_01_PRIM_PROV_CD_eq_NULL                                                                |
      | N_6002_SOL_Creative_1_MC_ELIG_eq_N                                                                         |
      | N-6002_SOL_Creative_1_CUST_AGE_lt_18                                                                       |
      | N-6002_SOL_Creative_1_CUST_AGE_eq_NULL                                                                     |
      | N-6002_SOL_Creative_1_DECEASED_ne_N                                                                        |
      | N-6002_SOL_Creative_1_DECEASED_eq_NULL                                                                     |
      | N-6002_SOL_Creative_1_LANG_CD_ne_fr                                                                        |
      | N-6002_SOL_Creative_1_LANG_CD_eq_NULL                                                                      |
      | N-6002_SOL_Creative_2_CUST_TP_CD_ne_PSNL                                                                   |
      | N-6002_SOL_Creative_2_PRIM_CNTRY_CD _ne_CA                                                                 |
      | N-6002_SOL_Creative_2_PRIM_CNTRY_CD _eq_NULL                                                               |
      | N-6002_SOL_Creative_2_CC_VIP_IND_eq_2                                                                      |
      | N-6002_SOL_Creative_2_CC_VIP_IND_eq_9                                                                      |
      | N-6002_SOL_Creative_2_MRKTBLE_F_ne_Y                                                                       |
      | N-6002_SOL_Creative_2_MRKTBLE_F_ne_NULL                                                                    |
      | N-6002_SOL_Creative_2_INDV_FRST_NM_eq_NULL                                                                 |
      | N-6002_SOL_Creative_2_INDV_LAST_NM_eq_NULL                                                                 |
      | N-6002_SOL_ACCT_SUBSYS_ID_ne_KS_SRC_ACCT_STAT_CD_eq_Open_SRC_SYS_PRD_CD_eq_SCL_SRC_SYS_SUB_PRD_CD_eq_INE   |
      | N-6002_SOL_ACCT_SUBSYS_ID_eq_KS_SRC_ACCT_STAT_CD_ne_Open_SRC_SYS_PRD_CD_eq_SCL_SRC_SYS_SUB_PRD_CD_eq_INE   |
      | N-6002_SOL_ACCT_SUBSYS_ID_eq_KS_SRC_ACCT_STAT_CD_eq_Open_SRC_SYS_PRD_CD_ne_SCL_SRC_SYS_SUB_PRD_CD_eq_INE   |
      | N-6002_SOL_ACCT_SUBSYS_ID_eq_KS_SRC_ACCT_STAT_CD_eq_Open_SRC_SYS_PRD_CD_eq_SCL_SRC_SYS_SUB_PRD_CD_ne_INE   |
      | N-6002_SOL_ACCT_SUBSYS_ID_eq_NULL_SRC_ACCT_STAT_CD_eq_Open_SRC_SYS_PRD_CD_eq_SCL_SRC_SYS_SUB_PRD_CD_eq_INE |
      | N-6002_SOL_ACCT_SUBSYS_ID_eq_KS_SRC_ACCT_STAT_CD_eq_NULL_SRC_SYS_PRD_CD_eq_SCL_SRC_SYS_SUB_PRD_CD_eq_INE   |
      | N-6002_SOL_ACCT_SUBSYS_ID_eq_KS_SRC_ACCT_STAT_CD_eq_Open_SRC_SYS_PRD_CD_eq_NULL_SRC_SYS_SUB_PRD_CD_eq_INE  |
      | N-6002_SOL_ACCT_SUBSYS_ID_eq_KS_SRC_ACCT_STAT_CD_eq_Open_SRC_SYS_PRD_CD_eq_SCL_SRC_SYS_SUB_PRD_CD_eq_NULL  |
      | N-6002_SOL_CLI_OFR_F_ne_Z                                                                                  |
      | N-6002_SOL_CLI_OFR_F_eq_NULL                                                                               |
      | N-6002_SOL_CLI_OFR_CRNT_F_ne_Y                                                                             |
      | N-6002_SOL_CLI_OFR_CRNT_F_eq_NULL                                                                          |
      | N-6002_SOL_Creative_2_CLI_OFR_ST_DT_NULL                                                                   |
      | N-6002_SOL_Curr_Dt_lt_CLI_OFR_ST_DT                                                                        |
      | N-6002_SOL_Curr_Dt_gt_CLI_OFR_EXP_DT                                                                       |
      | N-6002_SOL_CLI_APRVD_CR_LMT_lt_CR_CRD_LMT_AMT                                                              |
      | N-6002_SOL_CLI_APRVD_CR_LMT_eq_CR_CRD_LMT_AMT                                                              |
      | N-6002_SOL_CLI_APRVD_CR_LMT_eq_NULL                                                                        |
      | N-6002_SOL_CC_SCNRY_CUST_ID_NOT_Null                                                                       |
      | N-6002_SOL_Creative_2_PRIMARY_ACCT_HOLDER_FLAG_ne_Y                                                        |
      | N-6002_SOL_Creative_2_PRIMARY_ACCT_HOLDER_FLAG_eq_NULL                                                     |


