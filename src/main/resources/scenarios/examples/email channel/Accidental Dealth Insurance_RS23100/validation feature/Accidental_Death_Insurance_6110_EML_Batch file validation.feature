@Accidental_Death_Insurance_EML_6110_Batch_File_Validation
Feature: Validation for 6110 Accidental Death Insurance in EML Channel Batch File Validation


  @Accidental_Death_Insurance @Accidental_Death_Insurance_EML_Batch_File_Base_Validation_6110 @6110 @EML @RS23100
  Scenario Outline: Accidental_Death_Insurance RS23100_6110_EML Validate Batch File against database and pega for for Base Line test cases
    Given load data from "ADI_EML_6110" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "AccidentalDeathInsurance_EML_Batch" extract file with batch "Prov_CD;" Email Specific Text Header
    Then Validate Accidental Death Insurance offer details in batch file against database and pega
    Examples:
      | Test cases           |
      | 6110_EML_Base_Seg_01 |


  @Accidental_Death_Insurance @Accidental_Death_Insurance_EML_Batch_File_Positive_Validation_6110 @6110 @EML @RS23100
  Scenario Outline:Accidental_Death_Insurance RS23100_6110_EML Validate Batch File against database and pega for for Positive test cases
    Given load data from "ADI_EML_6110" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "AccidentalDeathInsurance_EML_Batch" extract file with batch "Prov_CD;" Email Specific Text Header
    Then Validate Accidental Death Insurance offer details in batch file against database and pega
    Examples:
      | Test cases                                   |
      | 6110_EML_Seg_01_LANG_CD_eq_fr                |
      | 6110_EML_Seg_01_MK_INSURANCE_EMAIL_F_eq_NULL |
      | 6110_EML_Seg_01_INDV_TTL_NM_eq_NULL          |
