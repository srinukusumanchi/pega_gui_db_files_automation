@SSI_GoalsSetup_EML_6261_Batch_File_Validation
Feature: Validation for 6261 SSI GoalsSetup in EML Channel Batch File Validation


  @SSI_GoalsSetup_EML @SSI_GoalsSetup_EML_Batch_File_Base_Validation_6261 @6261 @EML @RS23177
  Scenario Outline: SSI GoalsSetup 6261 RS23177 Validate Batch File against database and pega for Base Line test cases
    Given load data from "SSIGoalsSetup_EML_6261" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "SSIPACsetup_6234_EML_Batch" extract EMOB file with batch "accountnumber;" Email Specific Text Header
    Then Validate SSI GoalsSetup details in batch file against database and pega
    Examples:
      | Test cases           |
      | 6261_EML_BASE_Seg_01 |

  @SSI_GoalsSetup_EML @SSI_GoalsSetup_EML_Batch_File_Positive_Validation_6261 @6261 @EML @RS23177
  Scenario Outline: SSI GoalsSetup 6261 RS23177 Validate Batch File against database and pega for Positive Line test cases
    Given load data from "SSIGoalsSetup_EML_6261" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "SSIPACsetup_6234_EML_Batch" extract EMOB file with batch "accountnumber;" Email Specific Text Header
    Then Validate SSI GoalsSetup details in batch file against database and pega
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

