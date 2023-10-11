@EMOB_Notification_EML_4957_Batch_File_Validation
Feature: Validation for 4957 EMOB Notification in EML Channel Batch File Validation


  @EMOB_Notification @EMOB_Notification_EML_Batch_File_Base_Validation_4957 @4957 @EML @VS16008
  Scenario Outline: EMOB_Notification VS16008_4957_EML Validate Batch File against database and pega for Base Line test cases
    Given load data from "EMOB_Notification_4957" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "EMOBNotification_EML_Batch" extract EMOB file with batch "ProvCode;ProductCode;SubProductCode;" Email Specific Text Header
    Then Validate EMOB Notification offer details in batch file against database and pega
    Examples:
      | Test cases                |
      | 4957_EML_BASE_Creative_01 |

  @EMOB_Notification @EMOB_Notification_EML_Batch_File_Positive_Validation_4957 @4957 @EML @VS16008
  Scenario Outline: EMOB_Notification VS16008_4957_EML Validate Batch File against database and pega for Positive Line test cases
    Given load data from "EMOB_Notification_4957" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "EMOBNotification_EML_Batch" extract EMOB file with batch "ProvCode;ProductCode;SubProductCode;" Email Specific Text Header
    Then Validate EMOB Notification offer details in batch file against database and pega
    Examples:
      | Test cases                                       |
      | 4957_EML_Seg_01_DO_NOT_SOLICIT_F_eq_NULL         |
      | 4957_EML_Seg_01_CUST_AGE _eq_18                  |
      | 4957_EML_Seg_01_CUST_AGE _eq_19                  |
      | 4957_EML_Seg_01_NOT_AML_KYC _eq_NULL             |
      | 4957_EML_Seg_01_CC_VIP_IND_eq_NULL               |
      | 4957_EML_Seg_01_ACCT_ODT_eq_4                    |
      | 4957_EML_Seg_01_ACCT_ODT_eq_7                    |
      | 4957_EML_Seg_01_MK_CC_INFO_ACCTS_EMAIL_F_eq_NULL |
      | 4957_EML_Seg_01_BLOCK_CD_eq_NULL_RECL_CD_eq_C    |
      | 4957_EML_Seg_01_BLOCK_CD_eq_X_RECL_CD_eq_H       |

