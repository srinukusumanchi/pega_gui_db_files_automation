@LongTermInvAdvice_6065_MAT_IHValidation
Feature: Validation for 6065 LongTermInvestment Advice in MAT Channel

  @LongTermInvAdvice @LongTermInvAdvice_MAT_IH_Base_Validation_6065 @6065 @MAT @RS23078 @LongTermInvAdviceBase_IHValidation
  Scenario Outline: LongTermInvAdvice RS23078_6065_MAT Validate IH details against database and pega for Base Line test cases
    Given load data from "LongTermAdvice_MAT" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
#    When read cust Insights information details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then validate Long Term Investing Advice offer details against IH for "MAT" Channel
    Examples:
      | Test cases               |
      | 6065_MAT_Base_Creative_1 |


  @LongTermInvAdvice @LongTermInvAdvice_MAT_IH_Positive_Validation_6065 @6065 @MAT @RS23078 @LongTermInvAdviceBase_IHValidation
  Scenario Outline: LongTermInvAdvice RS23078_6065_MAT Validate IH details against database and pega for Positive test cases
    Given load data from "LongTermAdvice_MAT" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
#    When read cust Insights information details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then validate Long Term Investing Advice offer details against IH for "MAT" Channel
    Examples:
      | Test cases               |
      | 6065_MAT_CUST_AGE_eq_20  |
      | 6065_MAT_CUST_AGE_gt_20  |
      | 6065_MAT_CUST_AGE_eq_70  |
      | 6065_MAT_CUST_AGE_lt_70  |
      | 6065_MAT_LANG_CD_eq_fr                                                                                                          |
      | 6065_MAT_DO_NOT_SOLICIT_F_eq_NULL                                                                                               |
      | 6065_MAT_Creative_1_ADVISOR_LAST_CONTACT_DT_gt_30                                                                               |
      | 6065_MAT_GIVEN_NAME_ne_NULL_OR_INDV_TTL_NM_ne_NULL_OR_INDV_FRST_NM_ne_NULL_OR_INDV_LAST_NM_ne_NULL                              |
      | 6065_MAT_Creative_1_ExtTable_Curr_Dt_lt_VALID_START_DATE_Curr_Dt_lt_VALID_END_DATE                                              |
      | 6065_MAT_Creative_1_ExtTable_Curr_Dt_gt_VALID_START_DATE_Curr_Dt_gt_VALID_END_DATE                                              |
      | 6065_MAT_Creative_1_ExtTable_CAMPAIGN_CODE_ne_RS23078                                                                           |
      | 6065_MAT_Creative_1_ExtTable_CAMPAIGN_CELL_CODE_FLAG_ne_N                                                                       |
      | 6065_MAT_Creative_1_ExtTable_CAMPAIGN_CELL_CODE_FLAG_eq_NULL                                                                    |
#      |Added for july 06th 2023 rel|
      | 6065_MAT_PLN_ACCT_INVSTMNT_CAT_eq_Non-registered_and_SRC_SYS_PRD_DESC_eq_Non-Registered Savings - Personal                      |
      | 6065_MAT_PLN_ACCT_INVSTMNT_CAT_eq_Non-registered_and_SRC_SYS_PRD_DESC_eq_Non-Registered Savings Account  Personal               |
      | 6065_MAT_PLN_ACCT_INVSTMNT_CAT_eq_Non-registered_and_PLN_ACCT_INVSTMNT_CAT_eq_Registered                                        |
      | 6065_MAT_SRC_SYS_PRD_DESC_eq_Non-Registered Savings - Personal_and_SRC_SYS_PRD_DESC_eq_Non-Registered Savings Account  Personal |
#      |Added for Oct 12th 2023 rel|
      | 6065_NOT_AML_KYC_eq_NULL |



    #Negative IH Validation
  @LongTermInvAdvice @LongTermInvAdvice_MAT_IH_Negative_Validation_6065 @6065 @MAT @RS23078 @LongTermInvAdviceBase_IHValidation
  Scenario Outline: LongTermInvAdvice RS23078_6065_MAT Validate IH details against database and pega for Negative test cases
    Given load data from "LongTermAdvice_MAT" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    When read cust Insights information details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then verify using IH API that offer is not returned for "MAT" channel

    Examples:
      | Test cases                                                                                              |
      | N-6065_MAT_CUST_AGE_eq_NULL                                                                             |
      | N-6065_MAT_CUST_AGE_lt_20                                                                               |
      | N-6065_MAT_CUST_AGE_gt_70                                                                               |
      | N-6065_MAT_LANG_CD_ne_en                                                                                |
      | N-6065_MAT_LANG_CD_eq_NULL                                                                              |
      | N-6065_MAT_DO_NOT_SOLICIT_F_eq_Y                                                                        |
      | N-6065_MAT_MRKTBLE_F_ne_Y                                                                               |
      | N-6065_MAT_MRKTBLE_F_eq_NULL                                                                            |
      | N-6065_MAT_DECEASED_ne_N                                                                                |
      | N-6065_MAT_DECEASED_eq_NULL                                                                             |
      | N-6065_MAT_CUST_TP_CD_ne_PSNL                                                                           |
      | N-6065_MAT_PRIM_CNTRY_CD_ne_CA                                                                          |
      | N-6065_MAT_PRIM_CNTRY_CD_eq_NULL                                                                        |
      | N-6065_MAT_DO_NOT_CALL_F_ne_N                                                                           |
      | N-6065_MAT_DO_NOT_CALL_F_eq_NULL                                                                        |
      | N-6065_MAT_Creative_1_ADVISOR_LAST_CONTACT_DT_lt_30                                                     |
      | N-6065_MAT_Creative_1_ADVISOR_LAST_CONTACT_DT_eq_30                                                     |
      | N-6065_MAT_Creative_1_ADVISOR_LAST_CONTACT_DT_eq_NULL                                                   |
      | N-6065_MAT_GIVEN_NAME_eq_NULL_AND_INDV_TTL_NM_eq_NULL_AND_INDV_FRST_NM_eq_NULL_AND_INDV_LAST_NM_eq_NULL |
      | N-6065_MAT_ASSIGNED_FA_TRANSIT_eq_NULL_RESP_TRNST_NUM_eq_NULL_CLOSEST_TRANSIT_NUM_eq_NULL               |
      | N-6065_MAT_ASSIGNED_FA_TRANSIT_eq_NULL_RESP_TRNST_NUM_ne_NULL_Invalid_CLOSEST_TRANSIT_NUM_eq_NULL       |
      | N-6065_MAT_Creative_1_DEDICATED_INVSTMNT_ADVISOR_F_ne_Y                                                 |
      | N-6065_MAT_Creative_1_DEDICATED_INVSTMNT_ADVISOR_F_eq_NULL                                              |
      | N-6065_MAT_Creative_1_ASSIGNED_FA_ID_eq_NULL                                                            |
      | N-6065_MAT_Creative_1_ExtTable_Curr_Dt_gt_VALID_START_DATE_Curr_Dt_lt_VALID_END_DATE                    |
      | N-6065_MAT_Creative_1_ExtTable_Curr_Dt_eq_VALID_START_DATE_Curr_Dt_lt_VALID_END_DATE                    |
      | N-6065_MAT_Creative_1_ExtTable_Curr_Dt_gt_VALID_START_DATE_Curr_Dt_eq_VALID_END_DATE                    |
      | N-6065_MAT_Creative_1_ExtTable_Curr_Dt_eq_VALID_START_DATE_Curr_Dt_eq_VALID_END_DATE                    |
#      |Added for july 06th 2023 rel|
      | N_6065_MAT_ACCT_SUBSYS_ID_ne_UF                                                                         |
      | N_6065_MAT_ACCT_SUBSYS_ID_eq_NULL                                                                       |
      | N_6065_MAT_SRC_ACCT_STAT_CD_ne_Active                                                                   |
      | N_6065_MAT_SRC_ACCT_STAT_CD_eq_NULL                                                                     |
      | N_6065_MAT_PRIMARY_ACCT_HOLDER FLAG_ne_Y                                                                |
      | N_6065_MAT_PRIMARY_ACCT_HOLDER FLAG_eq_NULL                                                             |
      | N_6065_MAT_PLN_ACCT_INVSTMNT_CAT_ne_Registered                                                          |
      | N_6065_MAT_PLN_ACCT_INVSTMNT_CAT_eq_NULL                                                                |
      | N_6065_MAT_PLN_ACCT_INVSTMNT_CAT_eq_Non-registered_and_SRC_SYS_PRD_DESC_eq_NULL                         |
#      |Added for Oct 12th 2023 rel|
      | N-6065_NOT_AML_KYC_eq_Y                                                                                 |


