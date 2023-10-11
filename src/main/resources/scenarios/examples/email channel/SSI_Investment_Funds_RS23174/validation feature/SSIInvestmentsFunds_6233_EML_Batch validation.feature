@SSI_Investment_Funds_EML_6233_Batch_File_Validation
Feature: Validation for 6233 SSI Investment Funds in EML Channel Batch File Validation


  @SSI_Investment_Funds_EML @SSI_Investment_Funds_EML_Batch_File_Base_Validation_6233 @6233 @EML @RS23174
  Scenario Outline: SSI Investment Funds 6233 RS23174 Validate Batch File against database and pega for Base Line test cases
    Given load data from "SSIFunds_EML_6233" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "SSIFunds_6233_EML_Batch" extract file with batch "accountnumber;PlanCode;" Email Specific Text Header
    Then Validate SSI Funds details in batch file against database and pega
    Examples:
      | Test cases           |
      | 6233_EML_BASE_Seg_01 |

  @SSI_Investment_Funds_EML @SSI_Investment_Funds_EML_Batch_File_Positive_Validation_6233 @6233 @EML @RS23174
  Scenario Outline: SSI Investment Funds 6233 RS23174 Validate Batch File against database and pega for Positive Line test cases
    Given load data from "SSIFunds_EML_6233" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "SSIFunds_6233_EML_Batch" extract file with batch "accountnumber;PlanCode;" Email Specific Text Header
    Then Validate SSI Funds details in batch file against database and pega
    Examples:
      | Test cases                                                                                               |
      #Positive Scenarios
      | 6233_EML_Creative_01_LANG_CD_eq_EN                                                                       |
      | 6233_EML_Creative_01_LANG_CD_eq_F                                                                        |
      | 6233_EML_Creative_01_LANG_CD_eq_FR                                                                       |
      | 6233_EML_Creative_01_ITRADE_MCLEOD_F_eq_NULL                                                             |
      | 6233_EML_Creative_01_DEDICATED_INVSTMNT_ADVISOR_F_eq_NULL                                                |
      | 6233_EML_Creative_01_MK_INVESTING_EMAIL_F_eq_NULL                                                        |
      | 6233_EML_Creative_01_DO_NOT_SOLICIT_eq_NULL                                                              |
      | 6233_EML_Creative_01_PLN_ACCT_CD_MASTER_eq_RRSP_SRC_SYS_SUB_PRD_CD_BNSCSVRG_eq_SRC_SYS_PRD_CD_eq_RRS     |
      | 6233_EML_Creative_01_PLN_ACCT_CD_MASTER_eq_RRSP_SRC_SYS_SUB_PRD_CD_BNSCSVRG_eq_SRC_SYS_PRD_CD_eq_RSS     |
      | 6233_EML_Creative_01_PLN_ACCT_CD_MASTER_eq_RESP_SRC_SYS_SUB_PRD_CD_BNSCSVRX_eq_SRC_SYS_PRD_CD_eq_REF     |
      | 6233_EML_Creative_01_PLN_ACCT_CD_MASTER_eq_RESP_SRC_SYS_SUB_PRD_CD_BNSCSVRX_eq_SRC_SYS_PRD_CD_eq_REI     |
      | 6233_EML_Creative_01_PLN_ACCT_CD_MASTER_eq_TFSA_SRC_SYS_SUB_PRD_CD_BNSCSVTF_eq_SRC_SYS_PRD_CD_eq_TFS     |
      | 6233_EML_Creative_01_ACCT_ODT_eq_10                                                                      |
      | 6233_EML_Creative_01_NRS_RRSP                                                                            |
      | 6233_EML_Creative_01_NRS_RRSP_RRSP                                                                       |
      | 6233_EML_Creative_01_NRS_RRSP_RRSP_RESP                                                                  |
      | 6233_EML_Creative_01_NRS_RRSP_RRSP_RESP_RESP                                                             |
      | 6233_EML_Creative_01_NRS_RRSP_RRSP_RESP_RESP_TFSA                                                        |
      | 6233_EML_Creative_01_INDV_LAST_NM_eq_NULL                                                                |
      #Positive Exclusion Scenarios
      | 6233_EML_Creative_01_ACCT_SUBSYS_ID_ne_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_180 |
      | 6233_EML_Creative_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_ne_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_180 |
      | 6233_EML_Creative_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_ne_9_ACCT_ODT_eq_180 |
      | 6233_EML_Creative_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_181 |

