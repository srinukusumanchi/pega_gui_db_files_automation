@AdviceLeads_6003_SF
Feature: Test Data Creation For Advice Check in Leads for SF Channel


  @AdviceCheckInLeadsSF @AdviceCheckInLeadsSF_Base_TestData_6003 @6003 @SFM @RS23041
  Scenario Outline: Advice Check in Leads 6003 RS23041 SF Create test data for Base test cases

    Given load data from "Active_Leads" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "ADVISOR_LAST_CONTACT_DT" field with "<ADVISOR_LAST_CONTACT_DT_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

  # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    Examples:
      | Test cases                                  | Acct_Cnt | ADVISOR_LAST_CONTACT_DT_Val |
      | 6003_SF_Base_Creative_1_REL1_NoAdvicePlus   | 1        | 190                         |
      | 6003_SF_Base_Creative_2_CVI1-2_NoAdvicePlus | 1        | 190                         |
      | 6003_SF_Base_Creative_3_Mid_Career          | 1        | 190                         |


  @AdviceCheckInLeadsSF @AdviceCheckInLeadsSF_Positive_TestData_6003 @6003 @SFM @RS23041
  Scenario Outline: Advice Check in Leads 6003 RS23041 SF Create test data for Positive test cases

    Given load data from "Active_Leads" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "ADVISOR_LAST_CONTACT_DT" field with "<ADVISOR_LAST_CONTACT_DT_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

  # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    Examples:
      | Test cases                                                               | Acct_Cnt | ADVISOR_LAST_CONTACT_DT_Val |
      | 6003_SF_CUST_AGE _eq_18                                                  | 1        | 190                         |
      | 6003_SF_LANG_CD_eq_fr                                                    | 1        | 190                         |
      | 6003_SF_DO_NOT_SOLICIT_F_ne_Y                                            | 1        | 190                         |
      | 6003_SF_DO_NOT_SOLICIT_F_eq_NULL                                         | 1        | 190                         |
      | 6003_SF_MRKTBLE_F_eq_Y                                                   | 1        | 190                         |
      | 6003_SF_ASSIGNED_FA_TRANSIT_ne_NULL                                      | 1        | 190                         |
      | 6003_SF_INDV_FRST_NM_eq_NULL                                             | 1        | 190                         |
      | 6003_SF_INDV_LAST_NM_eq_NULL                                             | 1        | 190                         |
      | 6003_SF_REL1_F_ne_Y                                                      | 1        | 190                         |
      | 6003_SF_REL1_F_eq_NULL                                                   | 1        | 190                         |
      | 6003_SF_REL1_F_ne_Y_And_MAPP_TMRRW_LAST_SESS_DT_eq_NULL                  | 1        | 190                         |
      | 6003_SF_REL1_F_eq_NULL_And_MAPP_TMRRW_LAST_SESS_DT_eq_NULL               | 1        | 190                         |
#     SF Channel Specific Positive Scenarioes
      | 6003_SF_DO_NOT_CALL_F_eq_N                                               | 1        | 190                         |
      | 6003_SF_CVI_MULTIFACTOR_SEGMENT_eq_1                                     | 1        | 190                         |
      | 6003_SF_CVI_MULTIFACTOR_SEGMENT_eq_2                                     | 1        | 190                         |
#     Positive Priotization Scenarios
      | 6003_SF_Prioritize_Creative_1_IfBothCreativesareEligible_Over_Creative_2 | 1        | 190                         |
      | 6003_SF_Creative_1_Curr_Dt-ADVISOR_LAST_CONTACT_DT_gt_180days            | 1        | 181                         |
      | 6003_SF_Creative_1_Curr_Dt-ADVISOR_LAST_CONTACT_DT_eq_180days            | 1        | 180                         |
      | 6003_SF_Creative_3_Segment_eq_Mid-Career                                 | 1        | 190                         |
      | 6003_SF_Creative_1_Segment_eq_Affluent Retirees                          | 1        | 190                         |
      | 6003_SF_Creative_1_Segment_eq_Small Business                             | 1        | 190                         |
      | 6003_SF_Creative_1_Segment_eq_Else                                       | 1        | 190                         |
      | 6003_SF_Creative_3_Curr_Dt-ADVISOR_LAST_CONTACT_DT_gt_180days            | 1        | 181                         |
      | 6003_SF_Creative_2_Curr_Dt-ADVISOR_LAST_CONTACT_DT_eq_180days            | 1        | 180                         |
      | 6003_SF_Creative_3_Segment_eq_Mid-Career                                 | 1        | 190                         |
      | 6003_SF_Creative_2_Segment_eq_Affluent Retirees                          | 1        | 190                         |
      | 6003_SF_Creative_2_Segment_eq_Small Business                             | 1        | 190                         |
      | 6003_SF_Creative_2_Segment_eq_Else                                       | 1        | 190                         |

  @AdviceCheckInLeadsSF @AdviceCheckInLeadsSF_Negative_TestData_6003 @6003 @SFM @RS23041
  Scenario Outline: Advice Check in Leads 6003 RS23041 SF Create test data for Negative test cases

    Given load data from "Active_Leads" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "ADVISOR_LAST_CONTACT_DT" field with "<ADVISOR_LAST_CONTACT_DT_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

  # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    Examples:
      | Test cases                                                                                | Acct_Cnt | ADVISOR_LAST_CONTACT_DT_Val |
      | N-6003_SF_CUST_AGE _eq_NULL                                                               | 1        | 190                         |
      | N-6003_SF_LANG_CD_ne_en                                                                   | 1        | 190                         |
      | N-6003_SF_LANG_CD_eq_NULL                                                                 | 1        | 190                         |
      | N-6003_SF_DO_NOT_SOLICIT_F_eq_Y                                                           | 1        | 190                         |
      | N-6003_SF_MRKTBLE_F_ne_Y                                                                  | 1        | 190                         |
      | N-6003_SF_MRKTBLE_F_eq_NULL                                                               | 1        | 190                         |
      | N-6003_SF_DECEASED_ne_N                                                                   | 1        | 190                         |
      | N-6003_SF_DECEASED_eq_NULL                                                                | 1        | 190                         |
      | N-6003_SF_CUST_TP_CD_ne_PSNL                                                              | 1        | 190                         |
      | N-6003_SF_PRIM_CNTRY_CD _ne_CA                                                            | 1        | 190                         |
      | N-6003_SF_PRIM_CNTRY_CD _eq_NULL                                                          | 1        | 190                         |
#     SF Channel Specific Negative Scenarioes
      | N-6003_SF_DO_NOT_CALL_F_ne_N                                                              | 1        | 190                         |
      | N-6003_SF_DO_NOT_CALL_F_eq_NULL                                                           | 1        | 190                         |
      | N-6003_SF_MAPP_TMRRW_LAST_SESS_DT _ne_NULL                                                | 1        | 190                         |
      | N-6003_SF_CVI_MULTIFACTOR_SEGMENT_ne_1_2                                                  | 1        | 190                         |
      | N-6003_SF_CVI_MULTIFACTOR_SEGMENT_eq_NULL                                                 | 1        | 190                         |
      | N-6003_SF_REL1_F_eq_Y_And_MAPP_TMRRW_LAST_SESS_DT_ne_NULL                                 | 1        | 190                         |
      | N-6003_SF_CVI_MULTIFACTOR_SEGMENT_ne_1_And__MAPP_TMRRW_LAST_SESS_DT_eq_NULL               | 1        | 190                         |
      | N-6003_SF_CVI_MULTIFACTOR_SEGMENT_ne_2_And__MAPP_TMRRW_LAST_SESS_DT_eq_NULL               | 1        | 190                         |
      | N-6003_SF_CVI_MULTIFACTOR_SEGMENT_eq_1_And__MAPP_TMRRW_LAST_SESS_DT_ne_NULL               | 1        | 190                         |
      | N-6003_SF_CVI_MULTIFACTOR_SEGMENT_eq_2_And__MAPP_TMRRW_LAST_SESS_DT_ne_NULL               | 1        | 190                         |
      | N-6003_SF_CVI_MULTIFACTOR_SEGMENT_eq_NULL_And__MAPP_TMRRW_LAST_SESS_DT_eq_NULL            | 1        | 190                         |
      | N_6003_SF_ASSIGNED_FA_TRANSIT_eq_NULL_RESP_TRNST_NUM_eq_NULL_AND_CLOSEST_TRANSIT_NUM_NULL | 1        | 190                         |
      | N_6003_SF_ASSIGNED_FA_TRANSIT_eq_NULL_RESP_TRNST_NUM_ne_NULL_AND_CLOSEST_TRANSIT_NUM_NULL | 1        | 190                         |





#
#
#  @AdviceCheckInLeadsSF @AdviceCheckInLeadsSF_Positive_TestData_6003 @6003 @SFM @RS23041
#  Scenario Outline: Advice Check in Leads 6003 RS23041 SF Create test data for Loading data for positive test cases
#
#    Given load data from "Active_Leads" excel sheet
#    # CUST_DIM
#    Given write cid into "CUST_DIM" sheet for "<Test cases>"
#    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
#    Then insert customer information details in "CUST_DIM" table
#    # ACCT_DIM
#    When write account number into "ACCT_DIM" sheet for "<Test cases>"
#    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
#    Then insert customer account details in "ACCT_DIM" table
#  # CUST_ACCT_RLTNP_DIM
#    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
#    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
#    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
#    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
#
#    Examples:
#      | Test cases                                                               |
#      | 6003_SF_CUST_AGE _eq_18                                                  |
#      | 6003_SF_LANG_CD_eq_fr                                                    |
#      | 6003_SF_DO_NOT_SOLICIT_F_ne_Y                                            |
#      | 6003_SF_DO_NOT_SOLICIT_F_eq_NULL                                         |
#      | 6003_SF_MRKTBLE_F_eq_Y                                                   |
#      | 6003_SF_DO_NOT_CALL_F_eq_N                                               |
#      | 6003_SF_CVI_MULTIFACTOR_SEGMENT_eq_1                                     |
#      | 6003_SF_CVI_MULTIFACTOR_SEGMENT_eq_2                                     |
#      | 6003_SF_ASSIGNED_FA_TRANSIT_ne_NULL                                      |
#      | 6003_SF_INDV_FRST_NM_eq_NULL                                             |
#      | 6003_SF_INDV_LAST_NM_eq_NULL                                             |
#      | 6003_SF_REL1_F_ne_Y                                                      |
#      | 6003_SF_REL1_F_eq_NULL                                                   |
#      | 6003_SF_REL1_F_ne_Y_And_MAPP_TMRRW_LAST_SESS_DT_eq_NULL                  |
#      | 6003_SF_REL1_F_eq_NULL_And_MAPP_TMRRW_LAST_SESS_DT_eq_NULL               |
#      | 6003_SF_Prioritize_Creative_1_IfBothCreativesareEligible_Over_Creative_2 |
#
#
#
#
#  @AdviceCheckInLeadsSF @AdviceCheckInLeadsSF_Negative_TestData_6003 @6003 @SFM @RS23041
#  Scenario Outline: Advice Check in Leads 6003 RS23041 SF Create test data for Loading data for negative test cases
#
#    Given load data from "Active_Leads" excel sheet
#    # CUST_DIM
#    Given write cid into "CUST_DIM" sheet for "<Test cases>"
#    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
#    Then insert customer information details in "CUST_DIM" table
#    # ACCT_DIM
#    When write account number into "ACCT_DIM" sheet for "<Test cases>"
#    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
#    Then insert customer account details in "ACCT_DIM" table
#  # CUST_ACCT_RLTNP_DIM
#    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
#    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
#    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
#    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
#
#    Examples:
#      | Test cases                                                                                |
#      | N-6003_SF_CUST_AGE _eq_NULL                                                               |
#      | N-6003_SF_LANG_CD_ne_en                                                                   |
#      | N-6003_SF_LANG_CD_eq_NULL                                                                 |
#      | N-6003_SF_DO_NOT_SOLICIT_F_eq_Y                                                           |
#      | N-6003_SF_MRKTBLE_F_ne_Y                                                                  |
#      | N-6003_SF_MRKTBLE_F_eq_NULL                                                               |
#      | N-6003_SF_DECEASED_ne_N                                                                   |
#      | N-6003_SF_DECEASED_eq_NULL                                                                |
#      | N-6003_SF_CUST_TP_CD_ne_PSNL                                                              |
#      | N-6003_SF_PRIM_CNTRY_CD _ne_CA                                                            |
#      | N-6003_SF_PRIM_CNTRY_CD _eq_NULL                                                          |
#      | N-6003_SF_DO_NOT_CALL_F_ne_N                                                              |
#      | N-6003_SF_DO_NOT_CALL_F_eq_NULL                                                           |
#      | N-6003_SF_MAPP_TMRRW_LAST_SESS_DT _ne_NULL                                                |
#      | N-6003_SF_CVI_MULTIFACTOR_SEGMENT_ne_1_2                                                  |
#      | N-6003_SF_CVI_MULTIFACTOR_SEGMENT_eq_NULL                                                 |
#      | N-6003_SF_REL1_F_eq_Y_And_MAPP_TMRRW_LAST_SESS_DT_ne_NULL                                 |
#      | N-6003_SF_CVI_MULTIFACTOR_SEGMENT_ne_1_And__MAPP_TMRRW_LAST_SESS_DT_eq_NULL               |
#      | N-6003_SF_CVI_MULTIFACTOR_SEGMENT_ne_2_And__MAPP_TMRRW_LAST_SESS_DT_eq_NULL               |
#      | N-6003_SF_CVI_MULTIFACTOR_SEGMENT_eq_1_And__MAPP_TMRRW_LAST_SESS_DT_ne_NULL               |
#      | N-6003_SF_CVI_MULTIFACTOR_SEGMENT_eq_2_And__MAPP_TMRRW_LAST_SESS_DT_ne_NULL               |
#      | N-6003_SF_CVI_MULTIFACTOR_SEGMENT_eq_NULL_And__MAPP_TMRRW_LAST_SESS_DT_eq_NULL            |
#      | N_6003_SF_ASSIGNED_FA_TRANSIT_eq_NULL_RESP_TRNST_NUM_eq_NULL_AND_CLOSEST_TRANSIT_NUM_NULL |
#      | N_6003_SF_ASSIGNED_FA_TRANSIT_eq_NULL_RESP_TRNST_NUM_ne_NULL_AND_CLOSEST_TRANSIT_NUM_NULL |
#
#  @AdviceCheckInLeadsSF @AdviceCheckInLeadsSF_Positive_TestData_6003_Advisor_Last_Contact @6003 @SFM @RS23041
#  Scenario Outline: Advice Check in Leads 6003 RS23041 SF Create test data for Loading data for Advisor Last Contact positive test cases
#
#    Given load data from "Active_Leads" excel sheet
#    # CUST_DIM
#    Given write cid into "CUST_DIM" sheet for "<Test cases>"
#    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
#    And write Different Generic Dates in "ADVISOR_LAST_CONTACT_DT" field with "<ADVISOR_LAST_CONTACT_DT_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
#    Then insert customer information details in "CUST_DIM" table
#    # ACCT_DIM
#    When write account number into "ACCT_DIM" sheet for "<Test cases>"
#    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
#    Then insert customer account details in "ACCT_DIM" table
#    # CUST_ACCT_RLTNP_DIM
#    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
#    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
#    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
#    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
#
#    Examples:
#      | Test cases                                                    | Acct_Cnt | ADVISOR_LAST_CONTACT_DT_Val |
#      | 6003_SF_Creative_1_Curr_Dt-ADVISOR_LAST_CONTACT_DT_gt_180days | 1        | 181                         |
#      | 6003_SF_Creative_1_Curr_Dt-ADVISOR_LAST_CONTACT_DT_eq_180days | 1        | 180                         |
#      | 6003_SF_Creative_1_Segment_eq_Mid-Career                      | 1        | 182                         |
#      | 6003_SF_Creative_1_Segment_eq_Affluent Retirees               | 1        | 192                         |
#      | 6003_SF_Creative_1_Segment_eq_Small Business                  | 1        | 192                         |
#      | 6003_SF_Creative_1_Segment_eq_Else                            | 1        | 190                         |
#
#      | 6003_SF_Creative_2_Curr_Dt-ADVISOR_LAST_CONTACT_DT_gt_180days | 1        | 181                         |
#      | 6003_SF_Creative_2_Curr_Dt-ADVISOR_LAST_CONTACT_DT_eq_180days | 1        | 180                         |
#      | 6003_SF_Creative_2_Segment_eq_Mid-Career                      | 1        | 182                         |
#      | 6003_SF_Creative_2_Segment_eq_Affluent Retirees               | 1        | 192                         |
#      | 6003_SF_Creative_2_Segment_eq_Small Business                  | 1        | 192                         |
#      | 6003_SF_Creative_2_Segment_eq_Else                            | 1        | 190                         |
#
#  @AdviceCheckInLeadsSF @AdviceCheckInLeadsSF_Negative_TestData_6003_Advisor_Last_Contact @6003 @SFM @RS23041 @AdvisorContact_2023APR
#  Scenario Outline: Advice Check in Leads 6003 RS23041 SF Create test data for Loading data for Negative for AdvisorLast contact test cases
#
#    Given load data from "Active_Leads" excel sheet
#    # CUST_DIM
#    Given write cid into "CUST_DIM" sheet for "<Test cases>"
#    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
#    And write Different Generic Dates in "ADVISOR_LAST_CONTACT_DT" field with "<ADVISOR_LAST_CONTACT_DT_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
#    Then insert customer information details in "CUST_DIM" table
#    # ACCT_DIM
#    When write account number into "ACCT_DIM" sheet for "<Test cases>"
#    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
#    Then insert customer account details in "ACCT_DIM" table
#  # CUST_ACCT_RLTNP_DIM
#    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
#    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
#    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
#    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
#
#    Examples:
#      | Test cases                                                      | Acct_Cnt | ADVISOR_LAST_CONTACT_DT_Val |
#      | N-6003_SF_Creative_1_Curr_Dt-ADVISOR_LAST_CONTACT_DT_lt_180days | 1        | 179                         |
#      | N-6003_SF_Creative_1_Curr_Dt-ADVISOR_LAST_CONTACT_DT_eq_NULL    | 1        | NULL                        |
#      | N-6003_SF_Creative_2_Curr_Dt-ADVISOR_LAST_CONTACT_DT_lt_180days | 1        | 179                         |
#      | N-6003_SF_Creative_2_Curr_Dt-ADVISOR_LAST_CONTACT_DT_eq_NULL    | 1        | NULL                        |
