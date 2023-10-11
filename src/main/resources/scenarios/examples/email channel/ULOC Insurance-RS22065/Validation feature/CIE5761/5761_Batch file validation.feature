@5761_ULOC_Insurance_Batch_File_ValidationFeature
Feature: Batch File Validation For ULOC Insurance CIE5761 for EML Channel

# Base Positive Scenarios that covers both the Creatives for D2DPaymentMethods Offer
  @ULOC_Insurance_EML @ULOC_Insurance_EML_Base_Batch_File_Validation_5761 @5761 @EML @RS22065
  Scenario Outline: ULOC Insurance 5761 RS22065 EML Validate Offer Details Against Batch File for Base Line Test Cases

    Given load data from "ULOCIns_EML_CIE5761" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    # Need to Review and Change
    And read "PAULOCIns" extract file with batch "InsStatus;" Email Specific Text Header
    # Need to Review and Change
    Then validate ULOC Insurance offer details in batch file against database and pega

    Examples:
      | Test cases                |
      | 5761_EML_BASE_Creative_01 |
      | 5761_EML_BASE_Creative_02 |
      | 5761_EML_BASE_Creative_03 |
      | 5761_EML_BASE_Creative_04 |


  @ULOC_Insurance_EML @ULOC_Insurance_EML_Positive_Batch_File_Validation_5761 @5761 @EML @RS22065
  Scenario Outline: ULOC Insurance 5761 RS22065 EML Validate Offer Details Against Batch File for Positive Test Cases

    Given load data from "ULOCIns_EML_CIE5761" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    # Need to Review and Change
    And read "PAULOCIns" extract file with batch "InsStatus;" Email Specific Text Header
    # Need to Review and Change
    Then validate ULOC Insurance offer details in batch file against database and pega

    Examples:
      | Test cases                |
      | 5761_EML_Seg_01_CREDIT_ARREARS_DAYS_lt_60                                |
      | 5761_EML_Seg_01_CREDIT_ARREARS_DAYS_eq_60                                |
      | 5761_EML_Seg_01_CREDIT_ARREARS_DAYS_eq_NULL                              |
      | 5761_EML_Seg_01_CRNT_BAL_AMT_gt_0_and_lt_1.2xCR_CRD_LMT_AMT              |
      | 5761_EML_Seg_01_CRNT_BAL_AMT_gt_0_and_eq_1.2xCR_CRD_LMT_AMT              |
      | 5761_EML_Seg_02_CUST_AGE_eq_18                                           |
      | 5761_EML_Seg_02_CUST_AGE_gt_18                                           |
      | 5761_EML_Seg_02_CUST_AGE_lt_64                                           |
      | 5761_EML_Seg_02_CUST_AGE_eq_64                                           |
      | 5761_EML_Seg_02_DO_NOT_SOLICIT_F_eq_NULL                                 |
      | 5761_EML_Seg_03_LANG_CD_eq_fr                                            |
      | 5761_EML_Seg_03_MK_INSURANCE_EMAIL_F_eq_NULL                             |
      | 5761_EML_Seg_03_PRIM_PROV_CD_eq_NULL                                     |
      | 5761_EML_Seg_03_SRC_SYS_PRD_CD_eq_VIC_SRC_SYS_SUB_PRD_CD_eq_RG           |
      | 5761_EML_Seg_03_SRC_SYS_PRD_CD_eq_VIC_SRC_SYS_SUB_PRD_CD_eq_RS           |
      | 5761_EML_Seg_04_SRC_SYS_PRD_CD_eq_SCL_SRC_SYS_SUB_PRD_CD_eq_CS           |
      | 5761_EML_Seg_04_SRC_SYS_PRD_CD_eq_SCL_SRC_SYS_SUB_PRD_CD_eq_INE          |
      | 5761_EML_Seg_04_SRC_SYS_PRD_CD_eq_SCL_SRC_SYS_SUB_PRD_CD_eq_RS           |
      | 5761_EML_Seg_04_SRC_SYS_PRD_CD_eq_SCL_SRC_SYS_SUB_PRD_CD_eq_RL           |
      | 5761_EML_Seg_04_SRC_SYS_PRD_CD_eq_SSL_SRC_SYS_SUB_PRD_CD_eq_SP           |
      | 5761_EML_Seg_04_SRC_SYS_PRD_CD_eq_SSL_SRC_SYS_SUB_PRD_CD_eq_LI           |
      | 5761_EML_Seg_01_INS_STATUS_DESC_eq_Waived                                |
      | 5761_EML_Seg_02_INS_STATUS_DESC_eq_Life Only                             |
      | 5761_EML_Seg_02_INS_STATUS_DESC_eq_Disability and Life                   |
      | 5761_EML_Seg_02_INS_STATUS_DESC_eq_Disability, Life and Critical Illness |
      | 5761_EML_Seg_02_INS_STATUS_DESC_eq_Life and CI                           |
      | 5761_EML_Seg_02_INS_STATUS_DESC_eq_Life, Disability and Job Loss         |
      | 5761_EML_Seg_01_ACCT_ODT_eq_70                                           |
      | 5761_EML_Seg_01_ACCT_ODT_gt_70                                           |
      | 5761_EML_Seg_01_CR_CRD_LMT_AMT_gt_0                                      |
      | 5761_EML_Seg_01_CR_CRD_LMT_AMT_lt_50000                                  |
      | 5761_EML_Seg_01_CR_CRD_LMT_AMT_eq_50000                                  |
      | 5761_EML_Seg_02_ACCT_ODT_eq_70                                           |
      | 5761_EML_Seg_02_ACCT_ODT_gt_70                                           |
      | 5761_EML_Seg_02_CR_CRD_LMT_AMT_gt_0                                      |
      | 5761_EML_Seg_02_CR_CRD_LMT_AMT_lt_50000                                  |
      | 5761_EML_Seg_02_CR_CRD_LMT_AMT_eq_50000                                  |
      | 5761_EML_Seg_03_ACCT_ODT_gt_0                                            |
      | 5761_EML_Seg_03_ACCT_ODT_eq_0                                            |
      | 5761_EML_Seg_03_ACCT_ODT_lt_30                                           |
      | 5761_EML_Seg_03_ACCT_ODT_eq_30                                           |
      | 5761_EML_Seg_03_CR_CRD_LMT_AMT_gt_0                                      |
      | 5761_EML_Seg_03_CR_CRD_LMT_AMT_lt_50000                                  |
      | 5761_EML_Seg_03_CR_CRD_LMT_AMT_eq_50000                                  |
      | 5761_EML_Seg_04_ACCT_ODT_gt_0                                            |
      | 5761_EML_Seg_04_ACCT_ODT_eq_0                                            |
      | 5761_EML_Seg_04_ACCT_ODT_lt_30                                           |
      | 5761_EML_Seg_04_ACCT_ODT_eq_30                                           |
      | 5761_EML_Seg_04_CR_CRD_LMT_AMT_gt_50000                                  |
      | 5761_EML_Seg_01_CRNT_BAL_AMT_eq_0                                        |

      #      |Prioritization Scenarios|
      | 5761_EML_Seg_01_Multiple_Accounts_Different_ACCT_ODT                     |
      | 5761_EML_Seg_01_Multiple_Accounts_Same_ACCT_ODT_Prior_1_2_3_4            |
      | 5761_EML_Seg_01_Multiple_Accounts_Same_ACCT_ODT_Prior_2_3_4              |
      | 5761_EML_Seg_01_Multiple_Accounts_Same_ACCT_ODT_Prior_3_4                |
