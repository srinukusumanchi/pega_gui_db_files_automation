@Xsell_Reminder_Offer_EML_6214_Batch_File_Validation
Feature: Validation for 6214 Xsell Reminder Offer in EML Channel Batch File Validation


  @Xsell_Sneak_Peak_Offer_EML @Xsell_Reminder_Offer_EML_Batch_File_Base_Validation_6214 @6214 @EML @RS23148
  Scenario Outline: NP D2D Bundle Xsell Reminder Offer 6214 RS23148 Validate Batch File against database and pega for Base Line test cases
    Given load data from "XsellReminder_EML_6214" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "XsellReminder_6214_EML_Batch" extract file with batch "ProductCode;SubProductCode;CampaignNumber;CreditLimit;PAIndicator;PrioritySegment;BundleUpToValue;SavingCalculator;CurrentCreditCardProductCode;CurrentCreditCardSubProductCode;TargetCreditCardProductCode;TargetCreditCardSubProductCode;" Email Specific Text Header
    Then Validate Xsell Reminder Offer details in batch file against database and pega
    Examples:
      | Test cases           |
      | 6214_EML_BASE_Seg_01 |
      | 6214_EML_BASE_Seg_02 |
      | 6214_EML_BASE_Seg_03 |

  @Xsell_Sneak_Peak_Offer_EML @Xsell_Reminder_Offer_EML_Batch_File_Positive_Validation_6214 @6214 @EML @RS23148
  Scenario Outline: NP D2D Bundle Xsell Reminder Offer 6214 RS23148 Validate Batch File against database and pega for Positive Line test cases
    Given load data from "XsellReminder_EML_6214" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "XsellReminder_6214_EML_Batch" extract file with batch "ProductCode;SubProductCode;CampaignNumber;CreditLimit;PAIndicator;PrioritySegment;BundleUpToValue;SavingCalculator;CurrentCreditCardProductCode;CurrentCreditCardSubProductCode;TargetCreditCardProductCode;TargetCreditCardSubProductCode;" Email Specific Text Header
    Then Validate Xsell Reminder Offer details in batch file against database and pega
    Examples:
      | Test cases                                                                                          |
      | 6214_EML_Seg_01_FICO_SCORE_eq_700                                                                   |
      | 6214_EML_Seg_02_FICO_SCORE_eq_700                                                                   |
      | 6214_EML_Seg_03_FICO_SCORE_eq_700                                                                   |
      | 6214_EML_Seg_01_FICO_SCORE_gt_700                                                                   |
      | 6214_EML_Seg_02_FICO_SCORE_gt_700                                                                   |
      | 6214_EML_Seg_03_FICO_SCORE_gt_700                                                                   |
      | 6214_EML_Seg_01_CUST_AGE_gt_18                                                                      |
      | 6214_EML_Seg_02_CUST_AGE_eq_65                                                                      |
      | 6214_EML_Seg_03_EMPLOYEE_STAFF_F_eq_NULL                                                            |
      | 6214_EML_Seg_01_NOT_AML_KYC_eq_NULL                                                                 |
      | 6214_EML_Seg_02_PRIM_PROV_CD_eq_NULL                                                                |
      | 6214_EML_Seg_03_PHYSICIANS_F_eq_NULL                                                                |
      | 6214_EML_Seg_01_HARDBOUNCE_EMAIL_F_eq_NULL                                                          |
      | 6214_EML_Seg_02_MK_BK_INFO_ACCTS_EMAIL_F_eq_NULL                                                    |
      | 6214_EML_Seg_03_CRNT_BAL_AMT_eq_100                                                                 |
      | 6214_EML_Seg_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_DM                                      |
      | 6214_EML_Seg_01_SRC_SYS_PRD_CD_eq_VFF_SRC_SYS_SUB_PRD_CD_eq_TR                                      |
      | 6214_EML_Seg_01_SRC_SYS_PRD_CD_eq_VLR_SRC_SYS_SUB_PRD_CD_eq_RG                                      |
      | 6214_EML_Seg_03_SRC_SYS_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_03                                           |
      | 6214_EML_Seg_03_SRC_SYS_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_07                                           |
      | 6214_EML_Seg_03_SRC_SYS_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_08                                           |
      | 6214_EML_Seg_03_SRC_SYS_PRD_CD_eq_23_SRC_SUB_PRD_CD_eq_01                                           |
      | 6214_EML_Seg_03_SRC_SYS_PRD_CD_eq_23_SRC_SUB_PRD_CD_eq_03                                           |
      | 6214_EML_Seg_03_Scotia Acct_Ultimate Acct                                                           |
      | 6214_EML_Seg_03_Ultimate Acct_Ultimate Acct                                                         |
      #Positive Exclusion Scenarios
      | 6214_EML_Seg_01_ACCT_SUBSYS_ID_ne_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_lt_120 |
      | 6214_EML_Seg_02_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_ne_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_lt_120 |
      | 6214_EML_Seg_03_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_ne_9_ACCT_ODT_lt_120 |
      | 6214_EML_Seg_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_gt_120 |
      | 6214_EML_Seg_02_MCB_IND_ne_Y_ARRV_DT_eq_1400                                                        |
      | 6214_EML_Seg_03_MCB_IND_eq_Y_ARRV_DT_eq_2000                                                        |

