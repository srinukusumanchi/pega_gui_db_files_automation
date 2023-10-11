@Accidental_Death_Insurance_EML_6110_IHValidation
Feature: Validation for 6110 Accidental Death Insurance in EML Channel

  @Accidental_Death_Insurance @Accidental_Death_Insurance_EML_IH_Base_Validation_6110 @6110 @EML @RS23100 @Accidental_Death_Insurance_IHValidation
  Scenario Outline: Accidental Death Insurance RS23100_6110_EML Validate IH details against database and pega for Base Line test cases
    Given load data from "ADI_EML_6110" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    When read cust Insights information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then validate Accidental Death Insurance offer details against IH for "EML" Channel with "Outbound" Direction having "IPT" Outcome
    Examples:
      | Test cases           |
      | 6110_EML_Base_Seg_01 |

  @Accidental_Death_Insurance @Accidental_Death_Insurance_EML_IH_PositiveTCs_Validation_6110 @6110 @EML @RS23100 @Accidental_Death_Insurance_IHValidation
  Scenario Outline: Accidental Death Insurance RS23100_6110_EML Validate IH details against database and pega for Positive test cases
    Given load data from "ADI_EML_6110" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then validate Accidental Death Insurance offer details against IH for "EML" Channel with "Outbound" Direction having "IPT" Outcome
    Examples:
      | Test cases                                   |
      | 6110_EML_Seg_01_LANG_CD_eq_fr                |
      | 6110_EML_Seg_01_MK_INSURANCE_EMAIL_F_eq_NULL |
      | 6110_EML_Seg_01_INDV_TTL_NM_eq_NULL          |


  @Accidental_Death_Insurance @Accidental_Death_Insurance_EML_IH_Negative_Validation_6110  @6110 @EML @RS23100 @Accidental_Death_Insurance_IHValidation
  Scenario Outline: Accidental Death Insurance RS23100_6110_EML Validate IH details against database and pega for Negative test cases
    Given load data from "ADI_EML_6110" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then verify using IH API that offer is not returned for "EML" channel
    Examples:
      | Test cases                                                 |
      | N-6110_EML_Seg_01_ExtTable_CAMPAIGN_CELL_CODE_FLAG_ne_S    |
      | N-6110_EML_Seg_01_ExtTable_CAMPAIGN_CELL_CODE_FLAG_eq_NULL |
      | N-6110_EML_Seg_01_ExtTable_CAMPAIGN_CODE_ne_RS23100        |
      | N-6110_EML_Seg_01_CUST_TP_CD_ne_PSNL                       |
      | N-6110_EML_Seg_01_DECEASED_F _ne_N                         |
      | N-6110_EML_Seg_01_DECEASED_F _eq_NULL                      |
      | N-6110_EML_Seg_01_DO_NOT_EMAIL_F _ne_N                     |
      | N-6110_EML_Seg_01_DO_NOT_EMAIL_F _eq_NULL                  |
      | N-6110_EML_Seg_01_ExtTable_EMAIL_CHANNEL_ne_Y              |
      | N-6110_EML_Seg_01_ExtTable_EMAIL_CHANNEL_eq_NULL           |
      | N-6110_EML_Seg_01_INDV_FRST_NM_eq_NULL                     |
      | N-6110_EML_Seg_01_INDV_LAST_NM _eq_NULL                    |
      | N-6110_EML_Seg_01_LANG_CD_eq_ka                            |
      | N-6110_EML_Seg_01_LANG_CD_eq_NULL                          |
      | N-6110_EML_Seg_01_MK_INSURANCE_EMAIL_F_eq_N                |
      | N-6110_EML_Seg_01_PRIM_CNTRY_CD_ne_CA                      |
      | N-6110_EML_Seg_01_PRIM_CNTRY_CD_eq_NULL                    |
      | N-6110_EML_Seg_01_PRIM_EMAIL_ADDR_eq_NULL                  |
      | N-6110_EML_Seg_01_VLD_EMAIL_F_ne_Y                         |
      | N-6110_EML_Seg_01_VLD_EMAIL_F_eq_NULL                      |
      | N-6110_EML_Seg_01_ExtTable_VALID_START_DATE_eq_2022-04-15  |
      | N-6110_EML_Seg_01_INDV_BRTH_DT_eq_NULL                     |
      | N-6110_EML_Seg_01_PRIM_ADDR_LINE_1_eq_NULL                 |
      | N-6110_EML_Seg_01_PRIM_PROV_CD_eq_NULL                     |
      | N-6110_EML_Seg_01_PRIM_POST_CD_eq_NULL                     |
