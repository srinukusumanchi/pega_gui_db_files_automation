@SSI_AnnualReview_EML_6260_Batch_File_Validation
Feature: Validation for 6260 SSI AnnualReview in EML Channel Batch File Validation


  @SSI_AnnualReview_EML @SSI_PACsetup_EML_Batch_File_Base_Validation_6260 @6260 @EML @RS23176
  Scenario Outline: SSI AnnualReview 6260 RS23176 Validate Batch File against database and pega for Base Line test cases
    Given load data from "SSIAnnualReview_EML_6260" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "SSIPACsetup_6234_EML_Batch" extract EMOB file with batch "accountnumber;" Email Specific Text Header
    Then Validate SSI AnnualReview details in batch file against database and pega
    Examples:
      | Test cases           |
      | 6260_EML_BASE_Seg_01 |

  Scenario Outline: SSI AnnualReview 6260 RS23176 Validate Batch File against database and pega for Positive Line test cases
    Given load data from "SSIAnnualReview_EML_6260" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "SSIPACsetup_6234_EML_Batch" extract EMOB file with batch "accountnumber;" Email Specific Text Header
    Then Validate SSI AnnualReview details in batch file against database and pega
    Examples:
      | Test cases                                                                                               |
      #Positive Scenarios
      | 6260_EML_Creative_01_LANG_CD_eq_EN                                                                       |
      | 6260_EML_Creative_01_LANG_CD_eq_F                                                                        |
      | 6260_EML_Creative_01_LANG_CD_eq_FR                                                                       |
      | 6260_EML_Creative_01_ITRADE_MCLEOD_F_eq_NULL                                                             |
      | 6260_EML_Creative_01_DEDICATED_INVSTMNT_ADVISOR_F_eq_NULL                                                |
      | 6260_EML_Creative_01_MK_INVESTING_EMAIL_F_eq_NULL                                                        |
      | 6260_EML_Creative_01_DO_NOT_SOLICIT_eq_NULL                                                              |
      | 6260_EML_Creative_01_KYC_EXPIRY_DT_eq_40                                                                 |
      | 6260_EML_Creative_01_KYC_EXPIRY_DT_eq_30                                                                 |
      | 6260_EML_Creative_01_NRS_LIF_LIRA_LRSP_LRIF_PRIF_RRIF_RLIF_RRIF_RRSP_RLSP_RRSP_RDSP_RESP_RESP_TFSA_FHSA  |
      | 6260_EML_Creative_01_INDV_LAST_NM_eq_NULL                                                                |
      #Positive Exclusion Scenarios
      | 6260_EML_Creative_01_ACCT_SUBSYS_ID_ne_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_180 |
      | 6260_EML_Creative_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_ne_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_180 |
      | 6260_EML_Creative_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_ne_9_ACCT_ODT_eq_180 |
      | 6260_EML_Creative_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_181 |