@AccidentalDeathInsurance_EML_TestLoad
Feature: Test Data Creation For Accidental Death Insurance for EML Channel

  @AccidentalDeathInsurance_EML @AccidentalDeathInsurance_EML_Base_TestData_6110 @6110 @EML @RS23100
  Scenario Outline: Accidental Death Insurance 6110 RS23100 EML Create test data for Base Line test cases
    Given load data from "ADI_EML_6110" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # EXTERNAL_INPUT_FILE_LAYOUT
    When write cid into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>"  having "<EXT_TABLE_Cnt>" accounts
    Then insert customer details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<EXT_TABLE_Cnt>" accounts

    Examples:
      | Test cases           | Acct_Cnt | EXT_TABLE_Cnt |
      | 6110_EML_Base_Seg_01 | 1        | 1             |

  @AccidentalDeathInsurance_EML @AccidentalDeathInsurance_EML_Positive_TestData_6110 @6110 @EML @RS23100
  Scenario Outline: Accidental Death Insurance 6110 RS23100 EML Create test data for Positive test cases
    Given load data from "ADI_EML_6110" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # EXTERNAL_INPUT_FILE_LAYOUT
    When write cid into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>"  having "<EXT_TABLE_Cnt>" accounts
    Then insert customer details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<EXT_TABLE_Cnt>" accounts

    Examples:
      | Test cases                                   | Acct_Cnt | EXT_TABLE_Cnt |
      | 6110_EML_Seg_01_LANG_CD_eq_fr                | 1        | 1             |
      | 6110_EML_Seg_01_MK_INSURANCE_EMAIL_F_eq_NULL | 1        | 1             |
      | 6110_EML_Seg_01_INDV_TTL_NM_eq_NULL          | 1        | 1             |


  @AccidentalDeathInsurance_EML @AccidentalDeathInsurance_EML_Negative_TestData_6110 @6110 @EML @RS23100
  Scenario Outline: Accidental Death Insurance 6110 RS23100 EML Create test data for Negative test cases
    Given load data from "ADI_EML_6110" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # EXTERNAL_INPUT_FILE_LAYOUT
    When write cid into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>"  having "<EXT_TABLE_Cnt>" accounts
    Then insert customer details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<EXT_TABLE_Cnt>" accounts

    Examples:
      | Test cases                                                 | Acct_Cnt | EXT_TABLE_Cnt |
      | N-6110_EML_Seg_01_ExtTable_CAMPAIGN_CELL_CODE_FLAG_ne_S    | 1        | 1             |
      | N-6110_EML_Seg_01_ExtTable_CAMPAIGN_CELL_CODE_FLAG_eq_NULL | 1        | 1             |
      | N-6110_EML_Seg_01_ExtTable_CAMPAIGN_CODE_ne_RS23100        | 1        | 1             |
      | N-6110_EML_Seg_01_CUST_TP_CD_ne_PSNL                       | 1        | 1             |
      | N-6110_EML_Seg_01_DECEASED_F _ne_N                         | 1        | 1             |
      | N-6110_EML_Seg_01_DECEASED_F _eq_NULL                      | 1        | 1             |
      | N-6110_EML_Seg_01_DO_NOT_EMAIL_F _ne_N                     | 1        | 1             |
      | N-6110_EML_Seg_01_DO_NOT_EMAIL_F _eq_NULL                  | 1        | 1             |
      | N-6110_EML_Seg_01_ExtTable_EMAIL_CHANNEL_ne_Y              | 1        | 1             |
      | N-6110_EML_Seg_01_ExtTable_EMAIL_CHANNEL_eq_NULL           | 1        | 1             |
      | N-6110_EML_Seg_01_INDV_FRST_NM_eq_NULL                     | 1        | 1             |
      | N-6110_EML_Seg_01_INDV_LAST_NM _eq_NULL                    | 1        | 1             |
      | N-6110_EML_Seg_01_LANG_CD_eq_ka                            | 1        | 1             |
      | N-6110_EML_Seg_01_LANG_CD_eq_NULL                          | 1        | 1             |
      | N-6110_EML_Seg_01_MK_INSURANCE_EMAIL_F_eq_N                | 1        | 1             |
      | N-6110_EML_Seg_01_PRIM_CNTRY_CD_ne_CA                      | 1        | 1             |
      | N-6110_EML_Seg_01_PRIM_CNTRY_CD_eq_NULL                    | 1        | 1             |
      | N-6110_EML_Seg_01_PRIM_EMAIL_ADDR_eq_NULL                  | 1        | 1             |
      | N-6110_EML_Seg_01_VLD_EMAIL_F_ne_Y                         | 1        | 1             |
      | N-6110_EML_Seg_01_VLD_EMAIL_F_eq_NULL                      | 1        | 1             |
      | N-6110_EML_Seg_01_ExtTable_VALID_START_DATE_eq_2022-04-15  | 1        | 1             |
      | N-6110_EML_Seg_01_INDV_BRTH_DT_eq_NULL                     | 1        | 1             |
      | N-6110_EML_Seg_01_PRIM_ADDR_LINE_1_eq_NULL                 | 1        | 1             |
      | N-6110_EML_Seg_01_PRIM_PROV_CD_eq_NULL                     | 1        | 1             |
      | N-6110_EML_Seg_01_PRIM_POST_CD_eq_NULL                     | 1        | 1             |


