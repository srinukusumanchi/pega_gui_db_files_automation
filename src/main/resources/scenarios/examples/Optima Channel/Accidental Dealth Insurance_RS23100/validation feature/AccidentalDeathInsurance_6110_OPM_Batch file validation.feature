@Accidental_Death_Insurance_OPM_6110_Batch_File_Validation
Feature: Validation for 6110 Accidental Death Insurance in OPM Channel Batch File Validation

  @Accidental_Death_Insurance @Accidental_Death_Insurance_OPM_Batch_File_Base_Validation_6110 @6110 @OPM @RS23100
  Scenario Outline: Accidental_Death_Insurance RS23100_6110_OPM Validate Batch File against database and pega for for Base Line test cases
    Given load data from "ADI_OPM_6110" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "AccidentalDeathInsurance_OPM_Batch" extract file with batch "" Email Specific Text Header
    Then Validate Accidental Death Insurance offer details in batch file against database and pega
    Examples:
      | Test cases           |
      | 6110_OPM_Base_Seg_01 |


  @Accidental_Death_Insurance @Accidental_Death_Insurance_OPM_Batch_File_Positive_Validation_6110 @6110 @OPM @RS23100
  Scenario Outline:Accidental_Death_Insurance RS23100_6110_EML Validate Batch File against database and pega for for Positive test cases
    Given load data from "ADI_OPM_6110" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "AccidentalDeathInsurance_OPM_Batch" extract file with batch "" Email Specific Text Header
    Then VValidate Accidental Death Insurance offer details in batch file against database and pega
    Examples:
      | Test cases                                                                       |
      | 6110_OPM_Seg_01_LANG_CD_eq_fr                                                    |
      | 6110_OPM_Seg_01_MK_INSURANCE_OPM_F_eq_NULL                                       |
      | 6110_OPM_Seg_01_PRODUCT_ACCOUNT_NUMBER_eq_NULL_CUSTOMER_SUB_SEGMENT_CODE_eq_NULL |
      | 6110_OPM_Seg_01_PRIM_ADDR_LINE_2_ne_NULL                                         |