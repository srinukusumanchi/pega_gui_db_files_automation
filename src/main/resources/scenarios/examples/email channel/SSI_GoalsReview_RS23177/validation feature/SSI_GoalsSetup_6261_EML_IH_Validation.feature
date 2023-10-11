@SSI_GoalsSetup_EML_6261_IHValidation
Feature: Validation for 6261 SSI GoalsSetup in EML Channel

  @SSI_GoalsSetup_EML_IH_Base_Validation_6261 @6261 @EML @RS23177
  Scenario Outline: SSI PACsetup 6261 RS23177 Validate IH details against database and pega for Base Line test cases for EML Channel
    Given load data from "SSIGoalsSetup_EML_6261" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then validate SSI GoalsSetup details against IH for "EML" Channel with "Outbound" Direction having "IPT" Outcome

    Examples:
      | Test cases           |
      | 6261_EML_BASE_Seg_01 |

  @SSI_GoalsSetup_EML_IH_Positive_Validation_6261 @6261 @EML @RS23177
  Scenario Outline: SSI PACsetup 6261 RS23177 Validate IH details against database and pega for Positive Line test cases for EML Channel
    Given load data from "SSIGoalsSetup_EML_6261" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then validate SSI GoalsSetup details against IH for "EML" Channel with "Outbound" Direction having "IPT" Outcome

    Examples:
      | Test cases                                                                                               |
      #Positive Scenarios
      | 6261_EML_Creative_01_LANG_CD_eq_EN                                                                       |
      | 6261_EML_Creative_01_LANG_CD_eq_F                                                                        |
      | 6261_EML_Creative_01_LANG_CD_eq_FR                                                                       |
      | 6261_EML_Creative_01_ITRADE_MCLEOD_F_eq_NULL                                                             |
      | 6261_EML_Creative_01_DEDICATED_INVSTMNT_ADVISOR_F_eq_NULL                                                |
      | 6261_EML_Creative_01_MK_INVESTING_EMAIL_F_eq_NULL                                                        |
      | 6261_EML_Creative_01_DO_NOT_SOLICIT_eq_NULL                                                              |
      | 6261_EML_Creative_01_PLN_ACCT_CD_MASTER_eq_RRSP_SRC_SYS_SUB_PRD_CD_BNSCSVRG_eq_SRC_SYS_PRD_CD_eq_RRS     |
      | 6261_EML_Creative_01_PLN_ACCT_CD_MASTER_eq_RRSP_SRC_SYS_SUB_PRD_CD_BNSCSVRG_eq_SRC_SYS_PRD_CD_eq_RSS     |
      | 6261_EML_Creative_01_PLN_ACCT_CD_MASTER_eq_RESP_SRC_SYS_SUB_PRD_CD_BNSCSVRX_eq_SRC_SYS_PRD_CD_eq_REF     |
      | 6261_EML_Creative_01_PLN_ACCT_CD_MASTER_eq_RESP_SRC_SYS_SUB_PRD_CD_BNSCSVRX_eq_SRC_SYS_PRD_CD_eq_REI     |
      | 6261_EML_Creative_01_PLN_ACCT_CD_MASTER_eq_TFSA_SRC_SYS_SUB_PRD_CD_BNSCSVTF_eq_SRC_SYS_PRD_CD_eq_TFS     |
      | 6261_EML_Creative_01_NRS_LIF_LIRA_LRSP_LRIF_PRIF_RRIF_RLIF_RRIF_RRSP_RLSP_RRSP_RDSP_RESP_RESP_TFSA_FHSA  |
      | 6261_EML_Creative_01_INDV_LAST_NM_eq_NULL                                                                |
      | 6261_EML_Creative_01_INSIGHT_CD_eq_SSI_GOAL_SETUP_COMPLETE_CURR_VAL_-1                                   |
      | 6261_EML_Creative_01_INSIGHT_CD_eq_SSI_GOAL_SETUP_INCOMPLETE_CURR_VAL_0                                  |
      #Positive Exclusion Scenarios
      | 6261_EML_Creative_01_ACCT_SUBSYS_ID_ne_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_180 |
      | 6261_EML_Creative_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_ne_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_180 |
      | 6261_EML_Creative_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_ne_9_ACCT_ODT_eq_180 |
      | 6261_EML_Creative_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_181 |


  @SSI_GoalsSetup_EML_IH_Negative_Validation_6261 @6261 @EML @RS23177
  Scenario Outline: SSI PACsetup 6261 RS23177 Validate IH details against database and pega for Negative Line test cases for EML Channel
    Given load data from "SSIGoalsSetup_EML_6261" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then verify using IH API that offer is not returned for "EML" channel

    Examples:
      | Test cases                                                                                                 |
      #Negative Scenarios
      | N-6261_EML_Creative_01_DECEASED_F_eq_Y                                                                     |
      | N-6261_EML_Creative_01_DECEASED_F_eq_NULL                                                                  |
      | N-6261_EML_Creative_01_CUST_TP_CD_eq_ABCD                                                                  |
      | N-6261_EML_Creative_01_PRIM_CNTRY_CD_eq_IN                                                                 |
      | N-6261_EML_Creative_01_PRIM_CNTRY_CD_eq_NULL                                                               |
      | N-6261_EML_Creative_01_CUST_AGE_eq_NULL                                                                    |
      | N-6261_EML_Creative_01_LANG_CD_eq_KA                                                                       |
      | N-6261_EML_Creative_01_MRKTBLE_F_eq_N                                                                      |
      | N-6261_EML_Creative_01_MRKTBLE_F_eq_NULL                                                                   |
      | N-6261_EML_Creative_01_ITRADE_MCLEOD_F_eq_Y                                                                |
      | N-6261_EML_Creative_01_DEDICATED_INVSTMNT_ADVISOR_F_eq_Y                                                   |
      | N-6261_EML_Creative_01_PRIM_EMAIL_ADDR _eq_NULL                                                            |
      | N-6261_EML_Creative_01_INDV_FRST_NM_eq_NULL                                                                |
      | N-6261_EML_Creative_01_DO_NOT_EMAIL_F_eq_Y                                                                 |
      | N-6261_EML_Creative_01_VLD_EMAIL_F_eq_N                                                                    |
      | N-6261_EML_Creative_01_MK_INVESTING_EMAIL_F_eq_N                                                           |
      | N-6261_EML_Creative_01_DO_NOT_SOLICIT_eq_Y                                                                 |
      | N-6261_EML_Creative_01_PLN_ACCT_DLR_ne_SSI                                                                 |
      | N-6261_EML_Creative_01_PLN_ACCT_DLR_eq_NULL                                                                |
      | N-6261_EML_Creative_01_ACCT_SUBSYS_ID_ne_UF                                                                |
      | N-6261_EML_Creative_01_ACCT_SUBSYS_ID_eq_NULL                                                              |
      | N-6261_EML_Creative_01_SRC_ACCT_STAT_CD_ne_Active                                                          |
      | N-6261_EML_Creative_01_SRC_ACCT_STAT_CD_eq_NULL                                                            |
      | N-6261_EML_Creative_01_PLN_ACCT_CD_MASTER_eq_LIF_SRC_SYS_SUB_PRD_CD_eq_BNSCSVRG_SRC_SYS_PRD_CD_eq_BNSCSVRG |
      | N-6261_EML_Creative_01_PRIMARY_ACCT_HOLDER_FLAG_eq_N                                                       |
      | N-6261_EML_Creative_01_PRIMARY_ACCT_HOLDER_FLAG_eq_NULL                                                    |
      | N-6261_EML_Creative_01_IP_AR_RELATN_TYPE_CD_ne_ANN_or_OWN                                                  |
      | N-6261_EML_Creative_01_IP_AR_RELATN_TYPE_CD_eq_NULL                                                        |
      | N-6261_EML_Creative_01_PLAN_SPOT_BALANCE_eq_0                                                              |
      | N-6261_EML_Creative_01_INSIGHT_CD_eq_SSI_GOAL_SETUP_COMPLETE_CURR_VAL_0                                    |
      #Exclusion Scenarios
      | N-6261_EML_Creative_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_180 |
      | N-6261_EML_Creative_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_179 |
