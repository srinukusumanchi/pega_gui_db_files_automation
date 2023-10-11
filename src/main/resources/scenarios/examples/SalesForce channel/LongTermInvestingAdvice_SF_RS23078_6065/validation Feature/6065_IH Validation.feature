@LongTermInvAdvice_6065_SF_IHValidation
Feature: Validation for 6065 LongTermInvestment Advice

  @LongTermInvAdvice @LongTermInvAdvice_SF_IH_Base_Validation_6065 @6065 @SF @RS23078 @LongTermInvAdviceBase_IHValidation
  Scenario Outline: LongTermInvAdvice RS23078_6065_SF Validate IH details against database and pega for Base Line test cases
    Given load data from "LongTermAdvice" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    When read cust Insights information details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then validate Long Term Investing Advice offer details against IH for "COS" Channel
    Examples:
      | Test cases              |
      | 6065_SF_Base_Creative_1 |


  @LongTermInvAdvice @LongTermInvAdvice_SF_IH_Positive_Validation_6003 @6065 @SF @RS23078 @LongTermInvAdvice_IHValidation_positive
  Scenario Outline: LongTermInvAdvice RS23078_6065_SF Validate IH details against database and pega for Positive test cases
    Given load data from "LongTermAdvice" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    When read cust Insights information details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then validate Long Term Investing Advice offer details against IH for "COS" Channel
    Examples:
      | Test cases                                                                                        |
      | 6065_SF_CUST_AGE_eq_20                                                                            |
      | 6065_SF_CUST_AGE_gt_20                                                                            |
      | 6065_SF_CUST_AGE_eq_70                                                                            |
      | 6065_SF_CUST_AGE_lt_70                                                                            |
      | 6065_SF_LANG_CD_eq_fr                                                                             |
      | 6065_SF_DO_NOT_SOLICIT_F_eq_NULL                                                                  |
      | 6065_SF_Creative_1_ADVISOR_LAST_CONTACT_DT_gt_30                                                  |
      | 6065_SF_GIVEN_NAME_ne_NULL_OR_INDV_TTL_NM_ne_NULL_OR_INDV_FRST_NM_ne_NULL_OR_INDV_LAST_NM_ne_NULL |
#      |Added for May 25th 2023 Release|
      | 6065_SF_Creative_1_EVENT_DATE_eq_30                                                               |
      | 6065_SF_Creative_1_EVENT_DATE_gt_30                                                               |
#      |Added for Oct 12th 2023 Release|
      | 6065_COS_Seg_01_NOT_AML_KYC_eq_NULL                                                               |
      | 6065_COS_Seg_01_Trig_02_INSIGHT_CD_eq_IDLE_IP_CASH_EVENT_DATE_gt_30                               |
      | 6065_COS_Seg_01_Trig_02_INSIGHT_CD_eq_IDLE_IP_CASH_EVENT_DATE_eq_30                               |
      | 6065_COS_Seg_01_ExtTable_VALID_START_DATE_lt_Curr_Dt                                              |
      | 6065_COS_Seg_01_ExtTable_VALID_START_DATE_eq_Curr_Dt                                              |
      | 6065_COS_Seg_01_ExtTable_VALID_END_DATE_gt_Curr_Dt                                                |
      | 6065_COS_Seg_01_ExtTable_VALID_END_DATE_eq_Curr_Dt                                                |


    #Negative IH Validation
  @LongTermInvAdviceBase @LongTermInvAdviceBase_SF_IH_Negative_Validation_6065 @6065 @SF @RS23078 @LongTermInvAdvice_IHValidation_negative
  Scenario Outline: LongTermInvAdvice RS23078_6065_SF Validate IH details against database and pega for Negative test cases
    Given load data from "LongTermAdvice" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    When read cust Insights information details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then verify using IH API that offer is not returned for "COS" channel

    Examples:
      | Test cases                                                                                             |
      | N-6065_SF_CUST_AGE_eq_NULL                                                                             |
      | N-6065_SF_CUST_AGE_lt_20                                                                               |
      | N-6065_SF_CUST_AGE_gt_70                                                                               |
      | N-6065_SF_LANG_CD_ne_en                                                                                |
      | N-6065_SF_LANG_CD_eq_NULL                                                                              |
      | N-6065_SF_DO_NOT_SOLICIT_F_eq_Y                                                                        |
      | N-6065_SF_MRKTBLE_F_ne_Y                                                                               |
      | N-6065_SF_MRKTBLE_F_eq_NULL                                                                            |
      | N-6065_SF_DECEASED_ne_N                                                                                |
      | N-6065_SF_DECEASED_eq_NULL                                                                             |
      | N-6065_SF_CUST_TP_CD_ne_PSNL                                                                           |
      | N-6065_SF_PRIM_CNTRY_CD_ne_CA                                                                          |
      | N-6065_SF_PRIM_CNTRY_CD_eq_NULL                                                                        |
      | N-6065_SF_DO_NOT_CALL_F_ne_N                                                                           |
      | N-6065_SF_DO_NOT_CALL_F_eq_NULL                                                                        |
      | N-6065_SF_Creative_1_ADVISOR_LAST_CONTACT_DT_lt_30                                                     |
      | N-6065_SF_Creative_1_ADVISOR_LAST_CONTACT_DT_eq_30                                                     |
      | N-6065_SF_Creative_1_ADVISOR_LAST_CONTACT_DT_eq_NULL                                                   |
      | N-6065_SF_INSIGHT_CD_eq_MF_TRANSFER_TO_CASH_and_Curr_Val_ne_1                                          |
      | N-6065_SF_INSIGHT_CD_ne_MF_TRANSFER_TO_CASH_and_Curr_Val_eq_1                                          |
      | N-6065_SF_INSIGHT_CD_eq_MF_TRANSFER_TO_CASH_and_Curr_Val_eq_NULL                                       |
      | N-6065_SF_GIVEN_NAME_eq_NULL_AND_INDV_TTL_NM_eq_NULL_AND_INDV_FRST_NM_eq_NULL_AND_INDV_LAST_NM_eq_NULL |
      | N-6065_SF_ASSIGNED_FA_TRANSIT_eq_NULL_RESP_TRNST_NUM_eq_NULL_CLOSEST_TRANSIT_NUM_eq_NULL               |
      | N-6065_SF_ASSIGNED_FA_TRANSIT_eq_NULL_RESP_TRNST_NUM_ne_NULL_Invalid_CLOSEST_TRANSIT_NUM_eq_NULL       |
#      | Added for May 25th 2023 Release                                                                        |
      | N-6065_SF_Creative_1_EVENT_DATE_lt_30                                                                  |
      | N-6065_SF_Creative_1_EVENT_DATE_eq_NULL                                                                |
      | N-6065_SF_Creative_1_DEDICATED_INVSTMNT_ADVISOR_F_eq_Y                                                 |
      | N-6065_SF_Creative_1_DEDICATED_INVSTMNT_ADVISOR_F_eq_NULL                                              |
#      | Added for July 06th 2023 Release                                                                       |
      | N_6065_SF_ASSIGNED_FA_ID_eq_NULL                                                                       |
      | N_6065_SF_ASSIGNED_FA_TRANSIT_eq_NULL                                                                  |
#      | Added for Oct 12th 2023 Release                                                                        |
      | N-6065_COS_Seg_01_NOT_AML_KYC_eq_Y                                                                     |
      | N-6065_COS_Seg_01_Trig_02_INSIGHT_CD_eq_IDLE_IP_CASH_EVENT_DATE_lt_30                                  |
      | N-6065_COS_Seg_01_Trig_02_INSIGHT_CD_eq_IDLE_IP_CASH_EVENT_DATE_eq_NULL                                |
      | N-6065_COS_Seg_01_Trig_02_INSIGHT_CD_eq_IDLE_IP_CASH_CURR_VAL_ne_1                                     |
      | N-6065_COS_Seg_01_Trig_02_INSIGHT_CD_eq_IDLE_IP_CASH_CURR_VAL_eq_NULL                                  |
      | N-6065_COS_Seg_01_ExtTable_VALID_START_DATE_gt_Curr_Dt                                                 |
      | N-6065_COS_Seg_01_ExtTable_VALID_END_DATE_lt_Curr_Dt                                                   |
      | N-6065_COS_Seg_01_ExtTable_CAMPAIGN_CODE_ne_RS23078                                                    |
      | N-6065_COS_Seg_01_ExtTable_CAMPAIGN_CELL_CODE_FLAG_ne_Y                                                |
      | N-6065_COS_Seg_01_ExtTable_CAMPAIGN_CELL_CODE_FLAG_eq_NULL                                             |
      | N-6065_COS_Seg_01_ExtTable_Branch_channel_ne_Y                                                         |
      | N-6065_COS_Seg_01_ExtTable_Branch_channel_eq_NULL                                                      |


