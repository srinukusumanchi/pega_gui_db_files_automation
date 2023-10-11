@International_Money_Transfer_EML_TestLoad
Feature: Test Data Creation For International Money Transfer Campaign for EML Channel

  @International_Money_Transfer_EML @International_Money_Transfer_EML_Base_TestData_6087 @6087 @EML @RS23094
  Scenario Outline: International Money Transfer 6087 RS23094 EML Create test data for Base Line test cases
    Given load data from "InternationalMoneyTransfer_EML" excel sheet
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

    # CUST_INSIGHTS
#    When write cid and account number into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts

    And write Different Generic Dates in "EVENT_DATE" field with "<EVENT_DATE_Val>" duration from current date into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" records
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:
      | Test cases                | Acct_Cnt | Insight_Cnt | EVENT_DATE_Val |
      | 6087_EML_BASE_Creative_01 | 1        | 1           | -9             |
      | 6087_EML_BASE_Creative_02 | 1        | 1           | -9             |
      | 6087_EML_BASE_Creative_03 | 1        | 1           | -9             |
      | 6087_EML_BASE_Creative_04 | 1        | 1           | -9             |
      | 6087_EML_BASE_Creative_05 | 1        | 1           | -9             |


    # Positive Scenarios
  @International_Money_Transfer_EML @International_Money_Transfer_EML_Positive_TestData_6087 @6087 @EML @RS23094
  Scenario Outline: International Money Transfer 6087 RS23094 EML Create test data for Positive test cases
    Given load data from "InternationalMoneyTransfer_EML" excel sheet
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

    # CUST_INSIGHTS
#    When write cid and account number into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts

    And write Different Generic Dates in "EVENT_DATE" field with "<EVENT_DATE_Val>" duration from current date into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" records
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:
      | Test cases                                                           | Acct_Cnt | Insight_Cnt | EVENT_DATE_Val |
      | 6087_EML_Creative_01_CUST_AGE_eq_18                                  | 1        | 1           | -9             |
      | 6087_EML_Creative_02_CUST_AGE_gt_18                                  | 1        | 1           | -9             |
      | 6087_EML_Creative_03_LANG_CD eq_fr                                   | 1        | 1           | -9             |
      | 6087_EML_Creative_01_Event_Dt_eq_-2                                  | 1        | 1           | -2             |
      | 6087_EML_Creative_01_Event_Dt_lt_-2                                  | 1        | 1           | -3             |
      | 6087_EML_Creative_01_Event_Dt_gt_-12                                 | 1        | 1           | -11            |
      | 6087_EML_Creative_01_Event_Dt_eq_-12                                 | 1        | 1           | -12            |
#     Segmentation Positive Scenarios
      | 6087_EML_Creative_01_IMMGRTN_CAT_CD_eq_0_HOUSEHOLD_LANG_CD_eq_PAN    | 1        | 1           | -9             |
      | 6087_EML_Creative_01_IMMGRTN_CAT_CD_eq_999_HOUSEHOLD_LANG_CD_eq_HIN  | 1        | 1           | -9             |
      | 6087_EML_Creative_01_IMMGRTN_CAT_CD_eq_C1_HOUSEHOLD_LANG_CD_eq_GUJ   | 1        | 1           | -9             |
      | 6087_EML_Creative_01_IMMGRTN_CAT_CD_eq_FC1_HOUSEHOLD_LANG_CD_eq_TAM  | 1        | 1           | -9             |
      | 6087_EML_Creative_01_IMMGRTN_CAT_CD_eq_FC2_HOUSEHOLD_LANG_CD_eq_PAN  | 1        | 1           | -9             |
      | 6087_EML_Creative_01_IMMGRTN_CAT_CD_eq_FC3_HOUSEHOLD_LANG_CD_eq_HIN  | 1        | 1           | -9             |
      | 6087_EML_Creative_01_IMMGRTN_CAT_CD_eq_EN2_HOUSEHOLD_LANG_CD_eq_GUJ  | 1        | 1           | -9             |
      | 6087_EML_Creative_01_IMMGRTN_CAT_CD_eq_PV1_HOUSEHOLD_LANG_CD_eq_TAM  | 1        | 1           | -9             |
      | 6087_EML_Creative_01_IMMGRTN_CAT_CD_eq_PV2_HOUSEHOLD_LANG_CD_eq_PAN  | 1        | 1           | -9             |
      | 6087_EML_Creative_01_IMMGRTN_CAT_CD_eq_SW1_HOUSEHOLD_LANG_CD_eq_HIN  | 1        | 1           | -9             |
      | 6087_EML_Creative_01_IMMGRTN_CAT_CD_eq_SW2_HOUSEHOLD_LANG_CD_eq_GUJ  | 1        | 1           | -9             |
      | 6087_EML_Creative_01_IMMGRTN_CAT_CD_eq_SW3_HOUSEHOLD_LANG_CD_eq_TAM  | 1        | 1           | -9             |
      | 6087_EML_Creative_01_IMMGRTN_CAT_CD_eq_SE2_HOUSEHOLD_LANG_CD_eq_PAN  | 1        | 1           | -9             |
      | 6087_EML_Creative_01_IMMGRTN_CAT_CD_eq_STP_HOUSEHOLD_LANG_CD_eq_HIN  | 1        | 1           | -9             |
      | 6087_EML_Creative_01_IMMGRTN_CAT_CD_eq_C2_HOUSEHOLD_LANG_CD_eq_GUJ   | 1        | 1           | -9             |
      | 6087_EML_Creative_01_IMMGRTN_CAT_CD_eq_FW_HOUSEHOLD_LANG_CD_eq_TAM   | 1        | 1           | -9             |
      | 6087_EML_Creative_01_IMMGRTN_CAT_CD_eq_FW0_HOUSEHOLD_LANG_CD_eq_PAN  | 1        | 1           | -9             |
      | 6087_EML_Creative_01_IMMGRTN_CAT_CD_eq_S_HOUSEHOLD_LANG_CD_eq_HIN    | 1        | 1           | -9             |
      | 6087_EML_Creative_01_IMMGRTN_CAT_CD_eq_S00_HOUSEHOLD_LANG_CD_eq_GUJ  | 1        | 1           | -9             |
      | 6087_EML_Creative_02_IMMGRTN_CAT_CD_eq_0_HOUSEHOLD_LANG_CD_eq_TGL    | 1        | 1           | -9             |
      | 6087_EML_Creative_02_IMMGRTN_CAT_CD_eq_999_HOUSEHOLD_LANG_CD_eq_TGL  | 1        | 1           | -9             |
      | 6087_EML_Creative_02_IMMGRTN_CAT_CD_eq_C1_HOUSEHOLD_LANG_CD_eq_TGL   | 1        | 1           | -9             |
      | 6087_EML_Creative_02_IMMGRTN_CAT_CD_eq_FC1_HOUSEHOLD_LANG_CD_eq_TGL  | 1        | 1           | -9             |
      | 6087_EML_Creative_02_IMMGRTN_CAT_CD_eq_FC2_HOUSEHOLD_LANG_CD_eq_TGL  | 1        | 1           | -9             |
      | 6087_EML_Creative_02_IMMGRTN_CAT_CD_eq_FC3_HOUSEHOLD_LANG_CD_eq_TGL  | 1        | 1           | -9             |
      | 6087_EML_Creative_02_IMMGRTN_CAT_CD_eq_EN2_HOUSEHOLD_LANG_CD_eq_TGL  | 1        | 1           | -9             |
      | 6087_EML_Creative_02_IMMGRTN_CAT_CD_eq_PV1_HOUSEHOLD_LANG_CD_eq_TGL  | 1        | 1           | -9             |
      | 6087_EML_Creative_02_IMMGRTN_CAT_CD_eq_PV2_HOUSEHOLD_LANG_CD_eq_TGL  | 1        | 1           | -9             |
      | 6087_EML_Creative_02_IMMGRTN_CAT_CD_eq_SW1_HOUSEHOLD_LANG_CD_eq_TGL  | 1        | 1           | -9             |
      | 6087_EML_Creative_02_IMMGRTN_CAT_CD_eq_SW2_HOUSEHOLD_LANG_CD_eq_TGL  | 1        | 1           | -9             |
      | 6087_EML_Creative_02_IMMGRTN_CAT_CD_eq_SW3_HOUSEHOLD_LANG_CD_eq_TGL  | 1        | 1           | -9             |
      | 6087_EML_Creative_02_IMMGRTN_CAT_CD_eq_SE2_HOUSEHOLD_LANG_CD_eq_TGL  | 1        | 1           | -9             |
      | 6087_EML_Creative_02_IMMGRTN_CAT_CD_eq_STP_HOUSEHOLD_LANG_CD_eq_TGL  | 1        | 1           | -9             |
      | 6087_EML_Creative_02_IMMGRTN_CAT_CD_eq_C2_HOUSEHOLD_LANG_CD_eq_TGL   | 1        | 1           | -9             |
      | 6087_EML_Creative_02_IMMGRTN_CAT_CD_eq_FW_HOUSEHOLD_LANG_CD_eq_TGL   | 1        | 1           | -9             |
      | 6087_EML_Creative_02_IMMGRTN_CAT_CD_eq_FW0_HOUSEHOLD_LANG_CD_eq_TGL  | 1        | 1           | -9             |
      | 6087_EML_Creative_02_IMMGRTN_CAT_CD_eq_S_HOUSEHOLD_LANG_CD_eq_TGL    | 1        | 1           | -9             |
      | 6087_EML_Creative_02_IMMGRTN_CAT_CD_eq_S00_HOUSEHOLD_LANG_CD_eq_TGL  | 1        | 1           | -9             |
      | 6087_EML_Creative_03_IMMGRTN_CAT_CD_eq_0_HOUSEHOLD_LANG_CD_eq_YUE    | 1        | 1           | -9             |
      | 6087_EML_Creative_03_IMMGRTN_CAT_CD_eq_999_HOUSEHOLD_LANG_CD_eq_CMN  | 1        | 1           | -9             |
      | 6087_EML_Creative_03_IMMGRTN_CAT_CD_eq_C1_HOUSEHOLD_LANG_CD_eq_YUE   | 1        | 1           | -9             |
      | 6087_EML_Creative_03_IMMGRTN_CAT_CD_eq_FC1_HOUSEHOLD_LANG_CD_eq_CMN  | 1        | 1           | -9             |
      | 6087_EML_Creative_03_IMMGRTN_CAT_CD_eq_FC2_HOUSEHOLD_LANG_CD_eq_YUE  | 1        | 1           | -9             |
      | 6087_EML_Creative_03_IMMGRTN_CAT_CD_eq_FC3_HOUSEHOLD_LANG_CD_eq_CMN  | 1        | 1           | -9             |
      | 6087_EML_Creative_03_IMMGRTN_CAT_CD_eq_EN2_HOUSEHOLD_LANG_CD_eq_YUE  | 1        | 1           | -9             |
      | 6087_EML_Creative_03_IMMGRTN_CAT_CD_eq_PV1_HOUSEHOLD_LANG_CD_eq_CMN  | 1        | 1           | -9             |
      | 6087_EML_Creative_03_IMMGRTN_CAT_CD_eq_PV2_HOUSEHOLD_LANG_CD_eq_YUE  | 1        | 1           | -9             |
      | 6087_EML_Creative_03_IMMGRTN_CAT_CD_eq_SW1_HOUSEHOLD_LANG_CD_eq_CMN  | 1        | 1           | -9             |
      | 6087_EML_Creative_03_IMMGRTN_CAT_CD_eq_SW2_HOUSEHOLD_LANG_CD_eq_YUE  | 1        | 1           | -9             |
      | 6087_EML_Creative_03_IMMGRTN_CAT_CD_eq_SW3_HOUSEHOLD_LANG_CD_eq_CMN  | 1        | 1           | -9             |
      | 6087_EML_Creative_03_IMMGRTN_CAT_CD_eq_SE2_HOUSEHOLD_LANG_CD_eq_YUE  | 1        | 1           | -9             |
      | 6087_EML_Creative_03_IMMGRTN_CAT_CD_eq_STP_HOUSEHOLD_LANG_CD_eq_CMN  | 1        | 1           | -9             |
      | 6087_EML_Creative_03_IMMGRTN_CAT_CD_eq_C2_HOUSEHOLD_LANG_CD_eq_YUE   | 1        | 1           | -9             |
      | 6087_EML_Creative_03_IMMGRTN_CAT_CD_eq_FW_HOUSEHOLD_LANG_CD_eq_CMN   | 1        | 1           | -9             |
      | 6087_EML_Creative_03_IMMGRTN_CAT_CD_eq_FW0_HOUSEHOLD_LANG_CD_eq_YUE  | 1        | 1           | -9             |
      | 6087_EML_Creative_03_IMMGRTN_CAT_CD_eq_S_HOUSEHOLD_LANG_CD_eq_CMN    | 1        | 1           | -9             |
      | 6087_EML_Creative_03_IMMGRTN_CAT_CD_eq_S00_HOUSEHOLD_LANG_CD_eq_YUE  | 1        | 1           | -9             |
      | 6087_EML_Creative_04_IMMGRTN_CAT_CD_eq_0_HOUSEHOLD_LANG_CD_eq_KAN    | 1        | 1           | -9             |
      | 6087_EML_Creative_04_IMMGRTN_CAT_CD_eq_999_HOUSEHOLD_LANG_CD_eq_KAN  | 1        | 1           | -9             |
      | 6087_EML_Creative_04_IMMGRTN_CAT_CD_eq_C1_HOUSEHOLD_LANG_CD_eq_KAN   | 1        | 1           | -9             |
      | 6087_EML_Creative_04_IMMGRTN_CAT_CD_eq_FC1_HOUSEHOLD_LANG_CD_eq_KAN  | 1        | 1           | -9             |
      | 6087_EML_Creative_04_IMMGRTN_CAT_CD_eq_FC2_HOUSEHOLD_LANG_CD_eq_KAN  | 1        | 1           | -9             |
      | 6087_EML_Creative_04_IMMGRTN_CAT_CD_eq_FC3_HOUSEHOLD_LANG_CD_eq_KAN  | 1        | 1           | -9             |
      | 6087_EML_Creative_04_IMMGRTN_CAT_CD_eq_EN2_HOUSEHOLD_LANG_CD_eq_KAN  | 1        | 1           | -9             |
      | 6087_EML_Creative_04_IMMGRTN_CAT_CD_eq_PV1_HOUSEHOLD_LANG_CD_eq_KAN  | 1        | 1           | -9             |
      | 6087_EML_Creative_04_IMMGRTN_CAT_CD_eq_PV2_HOUSEHOLD_LANG_CD_eq_KAN  | 1        | 1           | -9             |
      | 6087_EML_Creative_04_IMMGRTN_CAT_CD_eq_SW1_HOUSEHOLD_LANG_CD_eq_KAN  | 1        | 1           | -9             |
      | 6087_EML_Creative_04_IMMGRTN_CAT_CD_eq_SW2_HOUSEHOLD_LANG_CD_eq_KAN  | 1        | 1           | -9             |
      | 6087_EML_Creative_04_IMMGRTN_CAT_CD_eq_SW3_HOUSEHOLD_LANG_CD_eq_NULL | 1        | 1           | -9             |
      | 6087_EML_Creative_04_IMMGRTN_CAT_CD_eq_SE2_HOUSEHOLD_LANG_CD_eq_NULL | 1        | 1           | -9             |
      | 6087_EML_Creative_04_IMMGRTN_CAT_CD_eq_STP_HOUSEHOLD_LANG_CD_eq_NULL | 1        | 1           | -9             |
      | 6087_EML_Creative_04_IMMGRTN_CAT_CD_eq_C2_HOUSEHOLD_LANG_CD_eq_NULL  | 1        | 1           | -9             |
      | 6087_EML_Creative_04_IMMGRTN_CAT_CD_eq_FW_HOUSEHOLD_LANG_CD_eq_NULL  | 1        | 1           | -9             |
      | 6087_EML_Creative_04_IMMGRTN_CAT_CD_eq_FW0_HOUSEHOLD_LANG_CD_eq_NULL | 1        | 1           | -9             |
      | 6087_EML_Creative_04_IMMGRTN_CAT_CD_eq_S_HOUSEHOLD_LANG_CD_eq_NULL   | 1        | 1           | -9             |
      | 6087_EML_Creative_04_IMMGRTN_CAT_CD_eq_S00_HOUSEHOLD_LANG_CD_eq_NULL | 1        | 1           | -9             |
      | 6087_EML_Creative_05_IMMGRTN_CAT_CD_eq_NULL                          | 1        | 1           | -9             |
      | 6087_EML_Creative_05_IMMGRTN_CAT_CD_eq_SJR                           | 1        | 1           | -9             |






# Negative Scenarios
  @International_Money_Transfer_EML @International_Money_Transfer_EML_Negative_TestData_6087 @6087 @EML @RS23094
  Scenario Outline: International Money Transfer 6087 RS23094 EML Create test data for Negative test cases
    Given load data from "InternationalMoneyTransfer_EML" excel sheet
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

    # CUST_INSIGHTS
#    When write cid and account number into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts

    And write Different Generic Dates in "EVENT_DATE" field with "<EVENT_DATE_Val>" duration from current date into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" records
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:
      | Test cases                                     | Acct_Cnt | Insight_Cnt | EVENT_DATE_Val |
      | N-6087_EML_Creative_01_CUST_AGE_lt_18          | 1        | 1           | -9             |
      | N-6087_EML_Creative_01_CUST_AGE_eq_NULL        | 1        | 1           | -9             |
      | N-6087_EML_Creative_01_DECEASED_F_ne_N         | 1        | 1           | -9             |
      | N-6087_EML_Creative_01_DECEASED_F_eq_NULL      | 1        | 1           | -9             |
      | N-6087_EML_Creative_01_CUST_TP_CD_ne_PSNL      | 1        | 1           | -9             |
      | N-6087_EML_Creative_02_PRIM_CNTRY_CD_ne_CA     | 1        | 1           | -9             |
      | N-6087_EML_Creative_02_PRIM_CNTRY_CD_eq_NULL   | 1        | 1           | -9             |
      | N-6087_EML_Creative_02_LANG_CD_eq_bn           | 1        | 1           | -9             |
      | N-6087_EML_Creative_02_LANG_CD_ne_en           | 1        | 1           | -9             |
      | N-6087_EML_Creative_03_MRKTBLE_F_ne_Y          | 1        | 1           | -9             |
      | N-6087_EML_Creative_03_MRKTBLE_F_eq_NULL       | 1        | 1           | -9             |
      | N-6087_EML_Creative_04_INDV_FRST_NM_eq_NULL    | 1        | 1           | -9             |
      | N-6087_EML_Creative_04_INDV_LAST_NM_eq_NULL    | 1        | 1           | -9             |
      | N-6087_EML_Creative_05_VLD_EMAIL_F_ne_Y        | 1        | 1           | -9             |
      | N-6087_EML_Creative_05_VLD_EMAIL_F_eq_NULL     | 1        | 1           | -9             |
      | N-6087_EML_Creative_05_PRIM_EMAIL_ADDR_eq_NULL | 1        | 1           | -9             |
      | N-6087_EML_Creative_05_DO_NOT_EMAIL_F_ne_N     | 1        | 1           | -9             |
      | N-6087_EML_Creative_05_DO_NOT_EMAIL_F_eq_NULL  | 1        | 1           | -9             |
      | N-6087_EML_Creative_05_DO_NOT_SOLICIT_F_eq_Y   | 1        | 1           | -9             |
      | N-6087_EML_Creative_02_CURR_VAL_ne_1           | 1        | 1           | -9             |
      | N-6087_EML_Creative_02_CURR_VAL_eq_NULL        | 1        | 1           | -9             |
      | N-6087_EML_Creative_02_Event_Dt_gt_-2          | 1        | 1           | -1             |
      | N-6087_EML_Creative_02_Event_Dt_lt_-12         | 1        | 1           | -13            |
      | N-6087_EML_Creative_02_Event_Dt_eq_NULL        | 1        | 1           | NULL           |
