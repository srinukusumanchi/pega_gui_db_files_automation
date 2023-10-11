@International_Money_Transfer_EML_6087_IHValidation
Feature: Validation for 6087 International Money Transfer in EML Channel

  @International_Money_Transfer @International_Money_Transfer_EML_IH_Base_Validation_6087 @6087 @EML @RS23094 @International_Money_Transfer_IHValidation
  Scenario Outline: International_Money_Transfer RS23094_6087_EML Validate IH details against database and pega for Base Line test cases
    Given load data from "InternationalMoneyTransfer_EML" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    When read cust Insights information details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then validate International Money Transfer offer details against IH for "EML" Channel with "Outbound" Direction having "IPT" Outcome

    Examples:
      | Test cases                |
      | 6087_EML_BASE_Creative_01 |
      | 6087_EML_BASE_Creative_02 |
      | 6087_EML_BASE_Creative_03 |
      | 6087_EML_BASE_Creative_04 |
      | 6087_EML_BASE_Creative_05 |


  @International_Money_Transfer @International_Money_Transfer_EML_IH_Positive_Validation_6087 @6087 @EML @RS23094 @International_Money_Transfer_IHValidation
  Scenario Outline: International_Money_Transfer RS23094_6087_EML Validate IH details against database and pega for Positive test cases
    Given load data from "InternationalMoneyTransfer_EML" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    When read cust Insights information details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then validate International Money Transfer offer details against IH for "EML" Channel with "Outbound" Direction having "IPT" Outcome

    Examples:
      | Test cases                                                           |
      | 6087_EML_Creative_01_CUST_AGE_eq_18                                  |
      | 6087_EML_Creative_02_CUST_AGE_gt_18                                  |
      | 6087_EML_Creative_03_LANG_CD eq_fr                                   |
      | 6087_EML_Creative_01_Event_Dt_eq_-2                                  |
      | 6087_EML_Creative_01_Event_Dt_lt_-2                                  |
      | 6087_EML_Creative_01_Event_Dt_gt_-12                                 |
      | 6087_EML_Creative_01_Event_Dt_eq_-12                                 |
#     Segmentation Positive Scenarios
      | 6087_EML_Creative_01_IMMGRTN_CAT_CD_eq_0_HOUSEHOLD_LANG_CD_eq_PAN    |
      | 6087_EML_Creative_01_IMMGRTN_CAT_CD_eq_999_HOUSEHOLD_LANG_CD_eq_HIN  |
      | 6087_EML_Creative_01_IMMGRTN_CAT_CD_eq_C1_HOUSEHOLD_LANG_CD_eq_GUJ   |
      | 6087_EML_Creative_01_IMMGRTN_CAT_CD_eq_FC1_HOUSEHOLD_LANG_CD_eq_TAM  |
      | 6087_EML_Creative_01_IMMGRTN_CAT_CD_eq_FC2_HOUSEHOLD_LANG_CD_eq_PAN  |
      | 6087_EML_Creative_01_IMMGRTN_CAT_CD_eq_FC3_HOUSEHOLD_LANG_CD_eq_HIN  |
      | 6087_EML_Creative_01_IMMGRTN_CAT_CD_eq_EN2_HOUSEHOLD_LANG_CD_eq_GUJ  |
      | 6087_EML_Creative_01_IMMGRTN_CAT_CD_eq_PV1_HOUSEHOLD_LANG_CD_eq_TAM  |
      | 6087_EML_Creative_01_IMMGRTN_CAT_CD_eq_PV2_HOUSEHOLD_LANG_CD_eq_PAN  |
      | 6087_EML_Creative_01_IMMGRTN_CAT_CD_eq_SW1_HOUSEHOLD_LANG_CD_eq_HIN  |
      | 6087_EML_Creative_01_IMMGRTN_CAT_CD_eq_SW2_HOUSEHOLD_LANG_CD_eq_GUJ  |
      | 6087_EML_Creative_01_IMMGRTN_CAT_CD_eq_SW3_HOUSEHOLD_LANG_CD_eq_TAM  |
      | 6087_EML_Creative_01_IMMGRTN_CAT_CD_eq_SE2_HOUSEHOLD_LANG_CD_eq_PAN  |
      | 6087_EML_Creative_01_IMMGRTN_CAT_CD_eq_STP_HOUSEHOLD_LANG_CD_eq_HIN  |
      | 6087_EML_Creative_01_IMMGRTN_CAT_CD_eq_C2_HOUSEHOLD_LANG_CD_eq_GUJ   |
      | 6087_EML_Creative_01_IMMGRTN_CAT_CD_eq_FW_HOUSEHOLD_LANG_CD_eq_TAM   |
      | 6087_EML_Creative_01_IMMGRTN_CAT_CD_eq_FW0_HOUSEHOLD_LANG_CD_eq_PAN  |
      | 6087_EML_Creative_01_IMMGRTN_CAT_CD_eq_S_HOUSEHOLD_LANG_CD_eq_HIN    |
      | 6087_EML_Creative_01_IMMGRTN_CAT_CD_eq_S00_HOUSEHOLD_LANG_CD_eq_GUJ  |
      | 6087_EML_Creative_02_IMMGRTN_CAT_CD_eq_0_HOUSEHOLD_LANG_CD_eq_TGL    |
      | 6087_EML_Creative_02_IMMGRTN_CAT_CD_eq_999_HOUSEHOLD_LANG_CD_eq_TGL  |
      | 6087_EML_Creative_02_IMMGRTN_CAT_CD_eq_C1_HOUSEHOLD_LANG_CD_eq_TGL   |
      | 6087_EML_Creative_02_IMMGRTN_CAT_CD_eq_FC1_HOUSEHOLD_LANG_CD_eq_TGL  |
      | 6087_EML_Creative_02_IMMGRTN_CAT_CD_eq_FC2_HOUSEHOLD_LANG_CD_eq_TGL  |
      | 6087_EML_Creative_02_IMMGRTN_CAT_CD_eq_FC3_HOUSEHOLD_LANG_CD_eq_TGL  |
      | 6087_EML_Creative_02_IMMGRTN_CAT_CD_eq_EN2_HOUSEHOLD_LANG_CD_eq_TGL  |
      | 6087_EML_Creative_02_IMMGRTN_CAT_CD_eq_PV1_HOUSEHOLD_LANG_CD_eq_TGL  |
      | 6087_EML_Creative_02_IMMGRTN_CAT_CD_eq_PV2_HOUSEHOLD_LANG_CD_eq_TGL  |
      | 6087_EML_Creative_02_IMMGRTN_CAT_CD_eq_SW1_HOUSEHOLD_LANG_CD_eq_TGL  |
      | 6087_EML_Creative_02_IMMGRTN_CAT_CD_eq_SW2_HOUSEHOLD_LANG_CD_eq_TGL  |
      | 6087_EML_Creative_02_IMMGRTN_CAT_CD_eq_SW3_HOUSEHOLD_LANG_CD_eq_TGL  |
      | 6087_EML_Creative_02_IMMGRTN_CAT_CD_eq_SE2_HOUSEHOLD_LANG_CD_eq_TGL  |
      | 6087_EML_Creative_02_IMMGRTN_CAT_CD_eq_STP_HOUSEHOLD_LANG_CD_eq_TGL  |
      | 6087_EML_Creative_02_IMMGRTN_CAT_CD_eq_C2_HOUSEHOLD_LANG_CD_eq_TGL   |
      | 6087_EML_Creative_02_IMMGRTN_CAT_CD_eq_FW_HOUSEHOLD_LANG_CD_eq_TGL   |
      | 6087_EML_Creative_02_IMMGRTN_CAT_CD_eq_FW0_HOUSEHOLD_LANG_CD_eq_TGL  |
      | 6087_EML_Creative_02_IMMGRTN_CAT_CD_eq_S_HOUSEHOLD_LANG_CD_eq_TGL    |
      | 6087_EML_Creative_02_IMMGRTN_CAT_CD_eq_S00_HOUSEHOLD_LANG_CD_eq_TGL  |
      | 6087_EML_Creative_03_IMMGRTN_CAT_CD_eq_0_HOUSEHOLD_LANG_CD_eq_YUE    |
      | 6087_EML_Creative_03_IMMGRTN_CAT_CD_eq_999_HOUSEHOLD_LANG_CD_eq_CMN  |
      | 6087_EML_Creative_03_IMMGRTN_CAT_CD_eq_C1_HOUSEHOLD_LANG_CD_eq_YUE   |
      | 6087_EML_Creative_03_IMMGRTN_CAT_CD_eq_FC1_HOUSEHOLD_LANG_CD_eq_CMN  |
      | 6087_EML_Creative_03_IMMGRTN_CAT_CD_eq_FC2_HOUSEHOLD_LANG_CD_eq_YUE  |
      | 6087_EML_Creative_03_IMMGRTN_CAT_CD_eq_FC3_HOUSEHOLD_LANG_CD_eq_CMN  |
      | 6087_EML_Creative_03_IMMGRTN_CAT_CD_eq_EN2_HOUSEHOLD_LANG_CD_eq_YUE  |
      | 6087_EML_Creative_03_IMMGRTN_CAT_CD_eq_PV1_HOUSEHOLD_LANG_CD_eq_CMN  |
      | 6087_EML_Creative_03_IMMGRTN_CAT_CD_eq_PV2_HOUSEHOLD_LANG_CD_eq_YUE  |
      | 6087_EML_Creative_03_IMMGRTN_CAT_CD_eq_SW1_HOUSEHOLD_LANG_CD_eq_CMN  |
      | 6087_EML_Creative_03_IMMGRTN_CAT_CD_eq_SW2_HOUSEHOLD_LANG_CD_eq_YUE  |
      | 6087_EML_Creative_03_IMMGRTN_CAT_CD_eq_SW3_HOUSEHOLD_LANG_CD_eq_CMN  |
      | 6087_EML_Creative_03_IMMGRTN_CAT_CD_eq_SE2_HOUSEHOLD_LANG_CD_eq_YUE  |
      | 6087_EML_Creative_03_IMMGRTN_CAT_CD_eq_STP_HOUSEHOLD_LANG_CD_eq_CMN  |
      | 6087_EML_Creative_03_IMMGRTN_CAT_CD_eq_C2_HOUSEHOLD_LANG_CD_eq_YUE   |
      | 6087_EML_Creative_03_IMMGRTN_CAT_CD_eq_FW_HOUSEHOLD_LANG_CD_eq_CMN   |
      | 6087_EML_Creative_03_IMMGRTN_CAT_CD_eq_FW0_HOUSEHOLD_LANG_CD_eq_YUE  |
      | 6087_EML_Creative_03_IMMGRTN_CAT_CD_eq_S_HOUSEHOLD_LANG_CD_eq_CMN    |
      | 6087_EML_Creative_03_IMMGRTN_CAT_CD_eq_S00_HOUSEHOLD_LANG_CD_eq_YUE  |
      | 6087_EML_Creative_04_IMMGRTN_CAT_CD_eq_0_HOUSEHOLD_LANG_CD_eq_KAN    |
      | 6087_EML_Creative_04_IMMGRTN_CAT_CD_eq_999_HOUSEHOLD_LANG_CD_eq_KAN  |
      | 6087_EML_Creative_04_IMMGRTN_CAT_CD_eq_C1_HOUSEHOLD_LANG_CD_eq_KAN   |
      | 6087_EML_Creative_04_IMMGRTN_CAT_CD_eq_FC1_HOUSEHOLD_LANG_CD_eq_KAN  |
      | 6087_EML_Creative_04_IMMGRTN_CAT_CD_eq_FC2_HOUSEHOLD_LANG_CD_eq_KAN  |
      | 6087_EML_Creative_04_IMMGRTN_CAT_CD_eq_FC3_HOUSEHOLD_LANG_CD_eq_KAN  |
      | 6087_EML_Creative_04_IMMGRTN_CAT_CD_eq_EN2_HOUSEHOLD_LANG_CD_eq_KAN  |
      | 6087_EML_Creative_04_IMMGRTN_CAT_CD_eq_PV1_HOUSEHOLD_LANG_CD_eq_KAN  |
      | 6087_EML_Creative_04_IMMGRTN_CAT_CD_eq_PV2_HOUSEHOLD_LANG_CD_eq_KAN  |
      | 6087_EML_Creative_04_IMMGRTN_CAT_CD_eq_SW1_HOUSEHOLD_LANG_CD_eq_KAN  |
      | 6087_EML_Creative_04_IMMGRTN_CAT_CD_eq_SW2_HOUSEHOLD_LANG_CD_eq_KAN  |
      | 6087_EML_Creative_04_IMMGRTN_CAT_CD_eq_SW3_HOUSEHOLD_LANG_CD_eq_NULL |
      | 6087_EML_Creative_04_IMMGRTN_CAT_CD_eq_SE2_HOUSEHOLD_LANG_CD_eq_NULL |
      | 6087_EML_Creative_04_IMMGRTN_CAT_CD_eq_STP_HOUSEHOLD_LANG_CD_eq_NULL |
      | 6087_EML_Creative_04_IMMGRTN_CAT_CD_eq_C2_HOUSEHOLD_LANG_CD_eq_NULL  |
      | 6087_EML_Creative_04_IMMGRTN_CAT_CD_eq_FW_HOUSEHOLD_LANG_CD_eq_NULL  |
      | 6087_EML_Creative_04_IMMGRTN_CAT_CD_eq_FW0_HOUSEHOLD_LANG_CD_eq_NULL |
      | 6087_EML_Creative_04_IMMGRTN_CAT_CD_eq_S_HOUSEHOLD_LANG_CD_eq_NULL   |
      | 6087_EML_Creative_04_IMMGRTN_CAT_CD_eq_S00_HOUSEHOLD_LANG_CD_eq_NULL |
      | 6087_EML_Creative_05_IMMGRTN_CAT_CD_eq_NULL                          |
      | 6087_EML_Creative_05_IMMGRTN_CAT_CD_eq_SJR                           |



    #Negative IH Validation
  @International_Money_Transfer @International_Money_Transfer_EML_IH_Negative_Validation_6087 @6087 @EML @RS23094 @International_Money_Transfer_IHValidation
  Scenario Outline: International_Money_Transfer RS23094_6087_EML Validate IH details against database and pega for Negative test cases
    Given load data from "InternationalMoneyTransfer_EML" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    When read cust Insights information details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then verify using IH API that offer is not returned for "EML" channel

    Examples:
      | Test cases                                     |
      | N-6087_EML_Creative_01_CUST_AGE_lt_18          |
      | N-6087_EML_Creative_01_CUST_AGE_eq_NULL        |
      | N-6087_EML_Creative_01_DECEASED_F_ne_N         |
      | N-6087_EML_Creative_01_DECEASED_F_eq_NULL      |
      | N-6087_EML_Creative_01_CUST_TP_CD_ne_PSNL      |
      | N-6087_EML_Creative_02_PRIM_CNTRY_CD_ne_CA     |
      | N-6087_EML_Creative_02_PRIM_CNTRY_CD_eq_NULL   |
      | N-6087_EML_Creative_02_LANG_CD_eq_bn           |
      | N-6087_EML_Creative_02_LANG_CD_ne_en           |
      | N-6087_EML_Creative_03_MRKTBLE_F_ne_Y          |
      | N-6087_EML_Creative_03_MRKTBLE_F_eq_NULL       |
      | N-6087_EML_Creative_04_INDV_FRST_NM_eq_NULL    |
      | N-6087_EML_Creative_04_INDV_LAST_NM_eq_NULL    |
      | N-6087_EML_Creative_05_VLD_EMAIL_F_ne_Y        |
      | N-6087_EML_Creative_05_VLD_EMAIL_F_eq_NULL     |
      | N-6087_EML_Creative_05_PRIM_EMAIL_ADDR_eq_NULL |
      | N-6087_EML_Creative_05_DO_NOT_EMAIL_F_ne_N     |
      | N-6087_EML_Creative_05_DO_NOT_EMAIL_F_eq_NULL  |
      | N-6087_EML_Creative_05_DO_NOT_SOLICIT_F_eq_Y   |
      | N-6087_EML_Creative_02_CURR_VAL_ne_1           |
      | N-6087_EML_Creative_02_CURR_VAL_eq_NULL        |
      | N-6087_EML_Creative_02_Event_Dt_gt_-2          |
      | N-6087_EML_Creative_02_Event_Dt_lt_-12         |
      | N-6087_EML_Creative_02_Event_Dt_eq_NULL        |


