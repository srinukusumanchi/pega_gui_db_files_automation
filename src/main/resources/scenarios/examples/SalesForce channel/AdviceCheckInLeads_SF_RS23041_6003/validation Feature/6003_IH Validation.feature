@AdviceLeads_6003_IHValidation
Feature: Validation for 6003 REL1

  @AdviceLeads @AdviceLeads_SF_IH_Base_Validation_6003 @6003 @SF @RS23041 @validateREL1_IHValidation
  Scenario Outline: Advice Leads RS23041_6003_SF Validate IH details against database and pega for Base Line test cases
    Given load data from "Active_Leads" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then validate REL offer details against IH for "COS" Channel
    Examples:
      | Test cases                                  |
      | 6003_SF_Base_Creative_1_REL1_NoAdvicePlus   |
      | 6003_SF_Base_Creative_2_CVI1-2_NoAdvicePlus |
      | 6003_SF_Base_Creative_3_Mid_Career          |


  @AdviceLeads @AdviceLeads_SF_IH_Positive_Validation_6003 @6003 @SF @RS23041 @validateREL1_IHValidation_positive
  Scenario Outline: Advice Leads RS23041_6003_SF Validate IH details against database and pega for Positive test cases
    Given load data from "Active_Leads" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then validate REL offer details against IH for "COS" Channel
    Examples:
      | Test cases                                                               |
      | 6003_SF_CUST_AGE _eq_18                                                  |
      | 6003_SF_LANG_CD_eq_fr                                                    |
      | 6003_SF_DO_NOT_SOLICIT_F_ne_Y                                            |
      | 6003_SF_DO_NOT_SOLICIT_F_eq_NULL                                         |
      | 6003_SF_MRKTBLE_F_eq_Y                                                   |
      | 6003_SF_ASSIGNED_FA_TRANSIT_ne_NULL                                      |
      | 6003_SF_INDV_FRST_NM_eq_NULL                                             |
      | 6003_SF_INDV_LAST_NM_eq_NULL                                             |
      | 6003_SF_REL1_F_ne_Y                                                      |
      | 6003_SF_REL1_F_eq_NULL                                                   |
      | 6003_SF_REL1_F_ne_Y_And_MAPP_TMRRW_LAST_SESS_DT_eq_NULL                  |
      | 6003_SF_REL1_F_eq_NULL_And_MAPP_TMRRW_LAST_SESS_DT_eq_NULL               |
#     SF Channel Specific Positive Scenarioes
      | 6003_SF_DO_NOT_CALL_F_eq_N                                               |
      | 6003_SF_CVI_MULTIFACTOR_SEGMENT_eq_1                                     |
      | 6003_SF_CVI_MULTIFACTOR_SEGMENT_eq_2                                     |
#     Positive Priotization Scenarios
      | 6003_SF_Prioritize_Creative_1_IfBothCreativesareEligible_Over_Creative_2 |
      | 6003_SF_Creative_1_Curr_Dt-ADVISOR_LAST_CONTACT_DT_gt_180days            |
      | 6003_SF_Creative_1_Curr_Dt-ADVISOR_LAST_CONTACT_DT_eq_180days            |
      | 6003_SF_Creative_3_Segment_eq_Mid-Career                                 |
      | 6003_SF_Creative_1_Segment_eq_Affluent Retirees                          |
      | 6003_SF_Creative_1_Segment_eq_Small Business                             |
      | 6003_SF_Creative_1_Segment_eq_Else                                       |
      | 6003_SF_Creative_3_Curr_Dt-ADVISOR_LAST_CONTACT_DT_gt_180days            |
      | 6003_SF_Creative_2_Curr_Dt-ADVISOR_LAST_CONTACT_DT_eq_180days            |
      | 6003_SF_Creative_3_Segment_eq_Mid-Career                                 |
      | 6003_SF_Creative_2_Segment_eq_Affluent Retirees                          |
      | 6003_SF_Creative_2_Segment_eq_Small Business                             |
      | 6003_SF_Creative_2_Segment_eq_Else                                       |


    #Negative IH Validation
  @AdviceLeads @AdviceLeads_SF_IH_Negative_Validation_6003 @6003 @SF @RS23041 @validateREL1_IHValidation_negative
  Scenario Outline: Advice Leads RS23041_6003_SF Validate IH details against database and pega for Negative test cases
    Given load data from "Active_Leads" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then verify using IH API that offer is not returned
    Examples:
      | Test cases                                                                                |
      | N-6003_SF_CUST_AGE _eq_NULL                                                               |
      | N-6003_SF_LANG_CD_ne_en                                                                   |
      | N-6003_SF_LANG_CD_eq_NULL                                                                 |
      | N-6003_SF_DO_NOT_SOLICIT_F_eq_Y                                                           |
      | N-6003_SF_MRKTBLE_F_ne_Y                                                                  |
      | N-6003_SF_MRKTBLE_F_eq_NULL                                                               |
      | N-6003_SF_DECEASED_ne_N                                                                   |
      | N-6003_SF_DECEASED_eq_NULL                                                                |
      | N-6003_SF_CUST_TP_CD_ne_PSNL                                                              |
      | N-6003_SF_PRIM_CNTRY_CD _ne_CA                                                            |
      | N-6003_SF_PRIM_CNTRY_CD _eq_NULL                                                          |
#     SF Channel Specific Negative Scenarioes
      | N-6003_SF_DO_NOT_CALL_F_ne_N                                                              |
      | N-6003_SF_DO_NOT_CALL_F_eq_NULL                                                           |
      | N-6003_SF_MAPP_TMRRW_LAST_SESS_DT _ne_NULL                                                |
      | N-6003_SF_CVI_MULTIFACTOR_SEGMENT_ne_1_2                                                  |
      | N-6003_SF_CVI_MULTIFACTOR_SEGMENT_eq_NULL                                                 |
      | N-6003_SF_REL1_F_eq_Y_And_MAPP_TMRRW_LAST_SESS_DT_ne_NULL                                 |
      | N-6003_SF_CVI_MULTIFACTOR_SEGMENT_ne_1_And__MAPP_TMRRW_LAST_SESS_DT_eq_NULL               |
      | N-6003_SF_CVI_MULTIFACTOR_SEGMENT_ne_2_And__MAPP_TMRRW_LAST_SESS_DT_eq_NULL               |
      | N-6003_SF_CVI_MULTIFACTOR_SEGMENT_eq_1_And__MAPP_TMRRW_LAST_SESS_DT_ne_NULL               |
      | N-6003_SF_CVI_MULTIFACTOR_SEGMENT_eq_2_And__MAPP_TMRRW_LAST_SESS_DT_ne_NULL               |
      | N-6003_SF_CVI_MULTIFACTOR_SEGMENT_eq_NULL_And__MAPP_TMRRW_LAST_SESS_DT_eq_NULL            |
      | N_6003_SF_ASSIGNED_FA_TRANSIT_eq_NULL_RESP_TRNST_NUM_eq_NULL_AND_CLOSEST_TRANSIT_NUM_NULL |
      | N_6003_SF_ASSIGNED_FA_TRANSIT_eq_NULL_RESP_TRNST_NUM_ne_NULL_AND_CLOSEST_TRANSIT_NUM_NULL |






