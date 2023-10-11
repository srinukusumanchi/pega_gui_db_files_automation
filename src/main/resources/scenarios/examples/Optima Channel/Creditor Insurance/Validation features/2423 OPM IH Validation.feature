@CREDITORINSURANCEINITIAL_IH_VALIDATION_OPM
Feature: Validation of IH for CC Creditor Insurance for OPM channel

  # Added Base Test Cases as part of Sep. 14th 2023 Release
  @CC_CreditorInsurance_OPM @CC_CreditorInsurance_OPM_Base_IH_Validation_2423 @2423 @OPM @VS17084
  Scenario Outline: CC Creditor Insurance_VS17084_2423_OPM Create Test Data for Base Line Scenarios
    Given load data from "CIOptimaInitial" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then validate Creditor Insurance offer details against IH for "OPM" Channel with "Outbound" Direction having "IPT" Outcome
    Examples:
      | Test cases                |
      | 2423_OPM_BASE_Creative_04 |
      | 2423_OPM_BASE_Creative_05 |


  # Added Negative Test Cases as part of Sep. 14th 2023 Release
  @CC_CreditorInsurance_OPM @CC_CreditorInsurance_OPM_Negative_IH_Validation_2423 @2423 @OPM @VS17084
  Scenario Outline: CC Creditor Insurance_VS17084_2423_OPM Create Test Data for Negative Scenarios
    Given load data from "CIOptimaInitial" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then verify offer should not display
    Examples:
      | Test cases                         |
      | N-2423_OPM_Seg_04_CHRGF_CD_ne_0    |
      | N-2423_OPM_Seg_05_CHRGF_CD_eq_NULL |


