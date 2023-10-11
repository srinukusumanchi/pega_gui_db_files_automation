@SSI_PACsetup_EML_6234_Batch_File_Validation
Feature: Validation for 6234 SSI PACsetup in EML Channel Batch File Validation


  @SSI_PACsetup_EML @SSI_PACsetup_EML_Batch_File_Base_Validation_6234 @6234 @EML @RS23175
  Scenario Outline: SSI PACsetup 6234 RS23175 Validate Batch File against database and pega for Base Line test cases
    Given load data from "SSIPACsetup_EML_6234" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "SSIPACsetup_6234_EML_Batch" extract EMOB file with batch "accountnumber;PlanCode;" Email Specific Text Header
    Then Validate SSI Funds details in batch file against database and pega
    Examples:
      | Test cases           |
      | 6234_EML_BASE_Seg_01 |

  @SSI_PACsetup_EML @SSI_PACsetup_EML_Batch_File_Positive_Validation_6234 @6234 @EML @RS23175
  Scenario Outline: SSI PACsetup 6234 RS23175 Validate Batch File against database and pega for Positive Line test cases
    Given load data from "SSIPACsetup_EML_6234" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "SSIPACsetup_6234_EML_Batch" extract EMOB file with batch "accountnumber;PlanCode;" Email Specific Text Header
    Then Validate SSI Funds details in batch file against database and pega
    Examples:
      | Test cases                                                                                               |
      | 6234_EML_Creative_01_LANG_CD_eq_EN                                                                       |
      | 6234_EML_Creative_01_LANG_CD_eq_F                                                                        |
      | 6234_EML_Creative_01_LANG_CD_eq_FR                                                                       |
      | 6234_EML_Creative_01_ITRADE_MCLEOD_F_eq_NULL                                                             |
      | 6234_EML_Creative_01_DEDICATED_INVSTMNT_ADVISOR_F_eq_NULL                                                |
      | 6234_EML_Creative_01_MK_INVESTING_EMAIL_F_eq_NULL                                                        |
      | 6234_EML_Creative_01_DO_NOT_SOLICIT_eq_NULL                                                              |
      | 6234_EML_Creative_01_PLN_ACCT_CD_MASTER_eq_RRSP_SRC_SYS_SUB_PRD_CD_BNSCSVRG_eq_SRC_SYS_PRD_CD_eq_RRS     |
      | 6234_EML_Creative_01_PLN_ACCT_CD_MASTER_eq_RRSP_SRC_SYS_SUB_PRD_CD_BNSCSVRG_eq_SRC_SYS_PRD_CD_eq_RSS     |
      | 6234_EML_Creative_01_PLN_ACCT_CD_MASTER_eq_RESP_SRC_SYS_SUB_PRD_CD_BNSCSVRX_eq_SRC_SYS_PRD_CD_eq_REF     |
      | 6234_EML_Creative_01_PLN_ACCT_CD_MASTER_eq_RESP_SRC_SYS_SUB_PRD_CD_BNSCSVRX_eq_SRC_SYS_PRD_CD_eq_REI     |
      | 6234_EML_Creative_01_PLN_ACCT_CD_MASTER_eq_TFSA_SRC_SYS_SUB_PRD_CD_BNSCSVTF_eq_SRC_SYS_PRD_CD_eq_TFS     |
      | 6234_EML_Creative_01_ACCT_ODT_eq_20                                                                      |
      | 6234_EML_Creative_01_ACCT_ODT_eq_30                                                                      |
      | 6234_EML_Creative_01_NRS_LIF_LIRA_LRSP_LRIF_PRIF_RRIF_RLIF_RRIF_RRSP_RLSP_RRSP_RDSP_RESP_RESP_TFSA_FHSA  |
      | 6234_EML_Creative_01_INDV_LAST_NM_eq_NULL                                                                |
      | 6234_EML_Creative_01_PIC_PAC_F_eq_2                                                                      |
      #Positive Exclusion Scenarios
      | 6234_EML_Creative_01_ACCT_SUBSYS_ID_ne_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_180 |
      | 6234_EML_Creative_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_ne_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_180 |
      | 6234_EML_Creative_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_ne_9_ACCT_ODT_eq_180 |
      | 6234_EML_Creative_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_181 |
