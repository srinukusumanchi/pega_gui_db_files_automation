@5504_IH_Validation_Oct_27_2022
Feature: Validation for 5504 MPSA_Contribution Oct_27_2022 Release

    ## Set DSS Date to 70 Days from Current Date and Run the Following Scripts

  @MPSAContributionEmail_Oct_27_2022 @MPSAContributionEmail_IH_Base_Validation_Oct_27_2022 @5504 @EMAIL @RS21098
  Scenario Outline: MPSA Contribution_RS21098_5504_EMAIL Validate offer details against IH for Base test cases Oct_27_2022
    Given load data from "MPSAContributionFunds_Oct_27_2022" excel sheet

    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And read cust Insights information details from excel sheet "CUST_INSIGHTS" for "<Test cases>"

    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data

    Then validate MPSA Contribution Fund Oct 27 2022 Release Initial offer details against IH

    Examples:
      | Test cases                                                               |
#      | 5504_EML_Base_01_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus   |
#      | 5504_EML_Base_02_Scrio_1_PAGE_VISIT_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus |
#      | 5504_EML_Base_03_Scrio_2_Seg_03_MPSA_ODT_gt_X_With_MPSA_Bonus            |
#      | 5504_EML_Base_04_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus            |
#  # Added for FEB 02-2023 rls
#      | 5504_EML_INSIGHT_CD_eq_FLG_BALANCE_FUND_RS23010_and_CURR_VAL_eq_Null     |
#      | 5504_EML_INSIGHT_CD_eq_FLG_BALANCE_FUND_RS23010_and_CURR_VAL_ne_1        |

  @MPSAContributionEmail_Oct_27_2022 @MPSAContributionEmail_IH_Positive_Validation_Oct_27_2022 @5504 @EMAIL @RS21098
  Scenario Outline: MPSA Contribution_RS21098_5504_EMAIL Validate offer details against IH for Positive test cases Oct_27_2022
    Given load data from "MPSAContributionFunds_Oct_27_2022" excel sheet

    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And read cust Insights information details from excel sheet "CUST_INSIGHTS" for "<Test cases>"

#    And the user navigates to pega url
#    When the user enters user name, password and click on login in pega Login screen
#    And click on interaction History by customer link
#    And click on actions and run in interactions history By customer screen
#    When click on period link and clear today value
#    And enter customer id in ih by customer screen and get IH table data

    Then validate MPSA Contribution Fund Oct 27 2022 Release Initial offer details against IH

    Examples:
      | Test cases                                                      |
#      | 5504_EML_Scrio_1_TAX_REFUND_Event_Dt_lt_30_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus                                                                                                                |
#      | 5504_EML_Scrio_1_TAX_REFUND_Event_Dt_eq_30_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus                                                                                                                |
#      | 5504_EML_Scrio_1_PAGE_VISIT_Seg_02_MPSA_ODT_eq_X_With_MPSA_Bonus                                                                                                                             |
#      | 5504_EML_Scrio_1_PAGE_VISIT_Curr_Val_gt_1_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus                                                                                                               |
#      | 5504_EML_Scrio_1_PAYROLL_Seg_03_MPSA_ODT_eq_X_With_MPSA_Bonus                                                                                                                                |
#      | 5504_EML_Scrio_1_PAYROLL_Seg_03_MPSA_ODT_gt_X_With_MPSA_Bonus                                                                                                                                |
#      | 5504_EML_Scrio_1_TAX_REFUND_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus                                                                                                                             |
#      | 5504_EML_Scrio_1_PAGE_VISIT_Seg_04_MPSA_ODT_eq_X_With_MPSA_Bonus                                                                                                                             |
#      | 5504_EML_Scrio_1_TAX_REFUND_PAGE_VISIT_PAYROLL_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_No_BB                                                                                                      |
#      | 5504_EML_Scrio_1_TAX_REFUND_PAGE_VISIT_PAYROLL_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus_Ultimate                                                                                                 |
#      | 5504_EML_Scrio_1_TAX_REFUND_PAGE_VISIT_PAYROLL_Seg_03_MPSA_ODT_gt_X_With_MPSA_Bonus_Preferred                                                                                                |
#      | 5504_EML_Scrio_1_TAX_REFUND_PAGE_VISIT_PAYROLL_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_No_BB                                                                                                    |
#      | 5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_gt_X_No_MPSA_Bonus_Acct_ODT_gt_60                                                                                                                |
#      | 5504_EML_Scrio_1_PAGE_VISIT_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus_Acct_ODT_gt_60                                                                                                              |
#      | 5504_EML_Scrio_1_PAYROLL_Seg_03_MPSA_ODT_gt_X_With_MPSA_Bonus_Acct_ODT_gt_60                                                                                                                 |
#      | 5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_INSIGHT_CD_eq_FLG_MPSA_ENG_RS22022_TARGET_CONTROL_CURR_VAL_ne_1                                                               |
#      | 5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_INSIGHT_CD_eq_FLG_MPSA_ENG_RS22022_TARGET_CONTROL_CURR_VAL_eq_NULL                                                            |
#      | 5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_INSIGHT_CD_eq_FLG_MPSA_CONTRIBUTION_CURR_VAL_ne_1_EVENT_DATE_lt_60                                                            |
#      | 5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_INSIGHT_CD_eq_FLG_MPSA_CONTRIBUTION_CURR_VAL_eq_NULL_EVENT_DATE_lt_60                                                         |
#      | 5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_INSIGHT_CD_eq_FLG_MPSA_CONTRIBUTION_CURR_VAL_eq_1_EVENT_DATE_gt_60                                                            |
#      | 5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_INSIGHT_CD_eq_FLG_MPSA_CONTRIBUTION_CURR_VAL_eq_1_EVENT_DATE_eq_NULL                                                          |
#      | 5504_EML_Scrio_1_PAGE_VISIT_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_ACCT_SUBSYS_ID_ne_BB                                                                                                        |
#      | 5504_EML_Scrio_1_PAGE_VISIT_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_SYS_PRD_CD_eq_19_SRC_SYS_SUB_PRD_CD_eq_01                                                                               |
#      | 5504_EML_Scrio_1_PAGE_VISIT_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_04                                                                               |
#      | 5504_EML_Scrio_1_PAGE_VISIT_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_04                                                                               |
#      | 5504_EML_Scrio_1_PAGE_VISIT_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_ACCT_STAT_CD_ne_A_Ultimate                                                                                              |
#      | 5504_EML_Scrio_1_PAGE_VISIT_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_ACCT_STAT_CD_eq_NULL_Preferred                                                                                          |
#      | 5504_EML_Scrio_1_PAGE_VISIT_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_PRIMARY_ACCT_HOLDER_FLAG_ne_Y_Ultimate                                                                                      |
#      | 5504_EML_Scrio_1_PAGE_VISIT_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_PRIMARY_ACCT_HOLDER_FLAG_eq_NULL_Preferred                                                                                  |
#      | 5504_EML_Scrio_1_PAGE_VISIT_Curr_Val_gt_1_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus_Prioritize_Creative_02_Over_03                                                                                |
#      | 5504_EML_PAGE_VISIT_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus_Prioritize_Scenario_1_Cell_Group                                                                                                    |
#      | 5504_EML_PAGE_VISIT_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus_Prioritize_Scenario_1_Cell_Group_Insight_Pointing_to_Scenario_2                                                                     |
#
#      | 5504_EML_PAGE_VISIT_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus_Prioritize_Account_Pointed_by_Insight                                                                                               |
#      | 5504_EML_Scrio_1_Seg_01_CUST_AGE_eq_18_DO_NOT_SOLICIT_F_eq_NULL_NOT_AML_KYC_eq_NULL_PHYSICIANS_F_eq_NULL_MD_FINANCIAL_F_eq_NULL_ITRADE_MCLEOD_F_eq_NULL_DEDICATED_INVSTMNT_ADVISOR_F_eq_NULL |
#      | 5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_ITRADE_MCLEOD_F_eq_Y                                                                                                                   |
#
#      | 5504_EML_Scrio_1_PAGE_VISIT_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_PRD_CD_eq_01_SRC_SUB_PRD_CD_eq_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_91                                                  |
#      | 5504_EML_Scrio_2_Seg_03_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_PRD_CD_eq_19_SRC_SUB_PRD_CD_eq_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_91                                                             |
#      | 5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_91                                                             |
#      | 5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_SRC_PRD_CD_eq_07_SRC_SUB_PRD_CD_eq_11_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_91                                                    |
#      | 5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_SRC_PRD_CD_eq_23_SRC_SUB_PRD_CD_eq_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_91                                                    |
#      | 5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_eq_VGD_SRC_SUB_PRD_CD_eq_NF_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_91                           |
#      | 5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_UO_SRC_ACCT_STAT_CD_eq_Active_ACCT_ODT_eq_91                                                                |
#      | 5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_ACCT_ODT_gt_35                                                                                                                         |
#      | 5504_EML_Scrio_2_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus_ACCT_ODT_eq_35                                                                                                                         |
#      | 5504_EML_Scrio_2_Seg_03_MPSA_ODT_gt_X_With_MPSA_Bonus_ACCT_ODT_lt_49                                                                                                                         |
#      | 5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_ACCT_ODT_eq_49                                                                                                                         |
##	ADDED on 2022-10-19	#
#      | 5504_EML_Scrio_1_PAGE_VISIT_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus                                                                                                                               |
#      | 5504_EML_Scrio_1_PAYROLL_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus                                                                                                                                  |
#      | 5504_EML_Scrio_1_PAYROLL_Seg_04_MPSA_ODT_eq_X_With_MPSA_Bonus                                                                                                                                |
#      | 5504_EML_Scrio_1_PAGE_VISIT_Seg_03_MPSA_ODT_eq_X_With_MPSA_Bonus                                                                                                                             |
#      | 5504_EML_Scrio_1_TAX_REFUND_Seg_03_MPSA_ODT_gt_X_With_MPSA_Bonus                                                                                                                             |
#      | 5504_EML_Scrio_1_TAX_REFUND_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus

       ## Added for JUNE 22 2023 REL
#      | 5504_EML_Trigger3                                               |
#      | 5504_EML_Trigger3_Current Date_eq_VALID_START_DATE              |
#      | 5504_EML_Trigger3_Current Date_eq_VALID_END_DATE                |
      | 5504_EML_Trigger3_ExtTable_2_Records                            |
             ##Exclusion
#      | 5504_EML_Trigger3_ExtTable_CAMPAIGN_CELL_CODE_FLAG_ne_N         |
#      | 5504_EML_Trigger3_ExtTable_CAMPAIGN_CELL_CODE_FLAG_eq_NULL      |
#      | 5504_EML_Trigger3_ExtTable_VALID_END_DATE_lt_Curr_Dt            |
#      | 5504_EML_Trigger3_ExtTable_ExtTable_VALID_START_DATE_gt_Curr_Dt |
#      | 5504_EML_Trigger3_ExtTable_ExtTable_CAMPAIGN_CODE_ne_RS21098    |


  @MPSAContributionEmail_Oct_27_2022 @MPSAContributionEmail_IH_Negative_Validation_Oct_27_2022 @5504 @EMAIL @RS21098
  Scenario Outline: MPSA Contribution_RS21098_5504_EMAIL Validate offer details against IH for Negative test cases Oct_27_2022
    Given load data from "MPSAContributionFunds_Oct_27_2022" excel sheet

    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And read cust Insights information details from excel sheet "CUST_INSIGHTS" for "<Test cases>"

    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data

    Then verify offer should not display

    Examples:
      | Test cases                                                                                |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Event_Dt_gt_30_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus                                                                                      |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Curr_Val_ne_1_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus                                                                                       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Curr_Val_eq_NULL_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus                                                                                    |
#      | N_5504_EML_Scrio_1_PAYROLL_Curr_Val_ne_1_Seg_03_MPSA_ODT_gt_X_With_MPSA_Bonus                                                                                        |
#      | N_5504_EML_Scrio_1_PAYROLL_Curr_Val_eq_NULL_Seg_03_MPSA_ODT_gt_X_With_MPSA_Bonus                                                                                     |
#      | N_5504_EML_Scrio_1_PAGE_VISIT_Curr_Val_lt_1_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus                                                                                     |
#      | N_5504_EML_Scrio_1_PAGE_VISIT_Curr_Val_eq_NULL_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus                                                                                  |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_SRC_ACCT_STAT_CD_ne_Active                                                                          |
#      | N_5504_EML_Scrio_1_PAGE_VISIT_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_ACCT_STAT_CD_eq_NULL                                                                          |
#      | N_5504_EML_Scrio_1_PAYROLL_Seg_03_MPSA_ODT_gt_X_With_MPSA_Bonus_ACCT_SUBSYS_ID_ne_UF                                                                                 |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_NULL                                                                              |
#      | N_5504_EML_Scrio_1_PAGE_VISIT_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_SYS_PRD_CD_ne_BSAMP                                                                           |
#      | N_5504_EML_Scrio_1_PAYROLL_Seg_03_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_SYS_PRD_CD_eq_NULL                                                                               |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_PRIMARY_ACCT_HOLDER_FLAG_ne_Y                                                                       |
#      | N_5504_EML_Scrio_1_PAGE_VISIT_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus_PRIMARY_ACCT_HOLDER_FLAG_eq_NULL                                                                  |
#      | N_5504_EML_Scrio_1_PAYROLL_Seg_03_MPSA_ODT_gt_X_With_MPSA_Bonus_BUSINESS_SEGMENT_ne_Retail                                                                           |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_BUSINESS_SEGMENT_eq_NULL                                                                            |
#      | N_5504_EML_Scrio_1_PAGE_VISIT_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus_ACCT_ODT_eq_60                                                                                    |
#      | N_5504_EML_Scrio_1_PAYROLL_Seg_03_MPSA_ODT_gt_X_With_MPSA_Bonus_ACCT_ODT_lt_60                                                                                       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_ODT_eq_NULL                                                                                    |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_gt_X_No_MPSA_Bonus                                                                                                     |
#      | N_5504_EML_Scrio_1_PAGE_VISIT_Seg_01_MPSA_ODT_gt_X_With_MPSA_Bonus_Non_Matching_UF                                                                                   |
#      | N_5504_EML_Scrio_1_PAYROLL_Seg_01_MPSA_ODT_gt_X_With_MPSA_Bonus_Non_Matching_UF                                                                                      |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_gt_X_No_MPSA_Bonus_Ultimate                                                                                            |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_gt_X_With_MPSA_Bonus_Curr_Val_eq_NULL_Ultimate                                                                         |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_gt_X_No_MPSA_Bonus_Preferred                                                                                           |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_gt_X_With_MPSA_Bonus_Curr_Val_eq_NULL_Preferred                                                                        |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_INSIGHT_CD_eq_FLG_MPSA_ENG_RS22022_TARGET_CONTROL_CURR_VAL_eq_1                                     |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_INSIGHT_CD_eq_FLG_MPSA_CONTRIBUTION_CURR_VAL_eq_1_EVENT_DATE_lt_60                                  |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_INSIGHT_CD_eq_FLG_MPSA_CONTRIBUTION_CURR_VAL_eq_1_EVENT_DATE_eq_60                                  |
#      | N_5504_EML_Scrio_1_PAGE_VISIT_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_PRD_CD_eq_01_SRC_SUB_PRD_CD_eq_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_89                        |
#      | N_5504_EML_Scrio_1_PAGE_VISIT_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_PRD_CD_eq_01_SRC_SUB_PRD_CD_eq_02_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90                        |
#      | N_5504_EML_Scrio_1_PAGE_VISIT_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_PRD_CD_eq_01_SRC_SUB_PRD_CD_eq_03_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_89                        |
#      | N_5504_EML_Scrio_1_PAGE_VISIT_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_PRD_CD_eq_01_SRC_SUB_PRD_CD_eq_04_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90                        |
#      | N_5504_EML_Scrio_1_PAGE_VISIT_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_PRD_CD_eq_02_SRC_SUB_PRD_CD_eq_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_89                        |
#      | N_5504_EML_Scrio_1_PAGE_VISIT_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_PRD_CD_eq_02_SRC_SUB_PRD_CD_eq_02_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90                        |
#      | N_5504_EML_Scrio_1_PAGE_VISIT_Seg_02_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_PRD_CD_eq_02_SRC_SUB_PRD_CD_eq_03_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_89                        |
#      | N_5504_EML_Scrio_2_Seg_03_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_PRD_CD_eq_19_SRC_SUB_PRD_CD_eq_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_89                                   |
#      | N_5504_EML_Scrio_2_Seg_03_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_PRD_CD_eq_19_SRC_SUB_PRD_CD_eq_02_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90                                   |
#      | N_5504_EML_Scrio_2_Seg_03_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_PRD_CD_eq_19_SRC_SUB_PRD_CD_eq_03_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_89                                   |
#      | N_5504_EML_Scrio_2_Seg_03_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_PRD_CD_eq_19_SRC_SUB_PRD_CD_eq_04_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90                                   |
#      | N_5504_EML_Scrio_2_Seg_03_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_PRD_CD_eq_19_SRC_SUB_PRD_CD_eq_07_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_89                                   |
#      | N_5504_EML_Scrio_2_Seg_03_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_PRD_CD_eq_19_SRC_SUB_PRD_CD_eq_08_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90                                   |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_89                                   |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_03_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90                                   |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_07_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_89                                   |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_08_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90                                   |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_SRC_PRD_CD_eq_07_SRC_SUB_PRD_CD_eq_11_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_89                          |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_SRC_PRD_CD_eq_07_SRC_SUB_PRD_CD_eq_12_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90                          |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_SRC_PRD_CD_eq_23_SRC_SUB_PRD_CD_eq_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_89                          |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_SRC_PRD_CD_eq_23_SRC_SUB_PRD_CD_eq_03_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90                          |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_eq_VGD_SRC_SUB_PRD_CD_eq_NF_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_89 |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_eq_VCL_SRC_SUB_PRD_CD_eq_ZZ_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_90 |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_eq_VCL_SRC_SUB_PRD_CD_eq_SS_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_89 |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_eq_VLR_SRC_SUB_PRD_CD_eq_RG_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_90 |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_eq_VLR_SRC_SUB_PRD_CD_eq_NF_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_89 |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_eq_VCL_SRC_SUB_PRD_CD_eq_DM_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_90 |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_eq_VCL_SRC_SUB_PRD_CD_eq_RG_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_89 |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_eq_VCL_SRC_SUB_PRD_CD_eq_NF_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_90 |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_eq_VCL_SRC_SUB_PRD_CD_eq_SV_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_89 |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_eq_VFA_SRC_SUB_PRD_CD_eq_A1_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_90 |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_eq_VFF_SRC_SUB_PRD_CD_eq_F1_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_89 |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_eq_AXG_SRC_SUB_PRD_CD_eq_GC_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_90 |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_eq_AXS_SRC_SUB_PRD_CD_eq_SC_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_89 |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_eq_AXP_SRC_SUB_PRD_CD_eq_PC_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_90 |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_eq_VLR_SRC_SUB_PRD_CD_eq_RC_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_89 |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_eq_VFF_SRC_SUB_PRD_CD_eq_TR_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_90 |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_eq_VGD_SRC_SUB_PRD_CD_eq_RG_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_89 |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_ACCT_SUBSYS_ID_eq_UO_SRC_ACCT_STAT_CD_eq_Active_ACCT_ODT_eq_89                                      |
##	ADDED on 2022-10-19	#
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_eq_X_No_MPSA_Bonus                                                                                                     |
#      | N_5504_EML_Scrio_1_PAGE_VISIT_Seg_01_MPSA_ODT_eq_X_No_MPSA_Bonus                                                                                                     |
#      | N_5504_EML_Scrio_1_PAGE_VISIT_Seg_01_MPSA_ODT_gt_X_No_MPSA_Bonus                                                                                                     |
#      | N_5504_EML_Scrio_1_PAYROLL_Seg_01_MPSA_ODT_eq_X_No_MPSA_Bonus                                                                                                        |
#      | N_5504_EML_Scrio_1_PAYROLL_Seg_01_MPSA_ODT_gt_X_No_MPSA_Bonus                                                                                                        |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_No_MPSA_Bonus                                                                                                                |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_ACCT_ODT_gt_49                                                                                               |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_ACCT_ODT_lt_35                                                                                               |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_ACCT_STAT_CD_ne_Active                                                                                   |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_ACCT_STAT_CD_eq_NULL                                                                                     |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_ACCT_SUBSYS_ID_ne_UF                                                                                         |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_ACCT_SUBSYS_ID_eq_NULL                                                                                       |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_SYS_PRD_CD_ne_BSAMP                                                                                      |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_SRC_SYS_PRD_CD_eq_NULL                                                                                       |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_BUSINESS_SEGMENT_ne_Retail                                                                                   |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_BUSINESS_SEGMENT_eq_NULL                                                                                     |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_CRNT_BAL_AMT_ne_0                                                                                            |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_CRNT_BAL_AMT_eq_NULL                                                                                         |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_PRIMARY_ACCT_HOLDER_FLAG_ne_Y                                                                                |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_PRIMARY_ACCT_HOLDER_FLAG_eq_NULL                                                                             |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_CUST_TP_CD_ne_PSNL                                                                                  |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_PRIM_CNTRY_CD_ne_CA                                                                                 |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_PRIM_CNTRY_CD_eq_NULL                                                                               |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_CUST_AGE_lt_18                                                                                      |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_CUST_AGE_eq_NULL                                                                                    |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_LANG_CD_eq_bn                                                                                       |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_LANG_CD_eq_NULL                                                                                     |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_DO_NOT_SOLICIT_F_eq_Y                                                                               |
#      | N_5504_EML_Scrio_1_TAX_REFUND_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus_NOT_AML_KYC_eq_Y                                                                                    |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_PHYSICIANS_F_eq_Y                                                                                            |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_MD_FINANCIAL_F_eq_Y                                                                                          |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_DEDICATED_INVSTMNT_ADVISOR_F_eq_Y                                                                            |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_DECEASED_F_eq_Y                                                                                              |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_DECEASED_F_eq_NULL                                                                                           |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_DO_NOT_EMAIL_F_eq_Y                                                                                          |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_DO_NOT_EMAIL_F_eq_NULL                                                                                       |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_VLD_EMAIL_F_eq_N                                                                                             |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_VLD_EMAIL_F_eq_NULL                                                                                          |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_PRIM_EMAIL_ADDR_eq_NULL                                                                                      |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_INDV_FRST_NM_eq_NULL                                                                                         |
#      | N_5504_EML_Scrio_2_Seg_04_MPSA_ODT_gt_X_With_MPSA_Bonus_MK_BK_INFO_ACCTS_EMAIL_F_eq_N                                                                                |
#      #Added for FEB 02-2023 rls
#      | N_5504_EML_INSIGHT_CD_eq_FLG_BALANCE_FUND_RS23010_and_CURR_VAL_eq_1

             ## Added for JUNE 22 2023 REL
      | N_5504_EML_Trigger3_CAMPAIGN_CODE_ne_RS21098                                              |
      | N_5504_EML_Trigger3_CAMPAIGN_CELL_CODE_ne_5504                                            |
      | N_5504_EML_Trigger3_CAMPAIGN_CELL_CODE_eq_NULL                                            |
      | N_5504_EML_Trigger3_CAMPAIGN_CELL_CODE_FLAG_eq_N                                          |
      | N_5504_EML_Trigger3_CAMPAIGN_CELL_CODE_FLAG_eq_NULL                                       |
      | N_5504_EML_Trigger3_Current Date_lt_VALID_START_DATE                                      |
      | N_5504_EML_Trigger3_VALID_END_DATE_lt_Current Date                                        |
      | N_5504_EML_Trigger3_EMAIL_CHANNEL_eq_N                                                    |
      | N_5504_EML_Trigger3_EMAIL_CHANNEL_eq_NULL                                                 |
      | N_5504_EML_Trigger3_CAMPAIGN_CELL_DESC_eq_NULL                                            |

        ##Exlusion
      | N_5504_EML_Trigger3_ExtTable_VALID_END_DATE_gt_Curr_Dt_AND_CAMPAIGN_CELL_CODE_FLAG_ne_Y   |
      | N_5504_EML_Trigger3_ExtTable_VALID_END_DATE_eq_Curr_Dt_AND_CAMPAIGN_CELL_CODE_FLAG_ne_Y   |
      | N_5504_EML_Trigger3_ExtTable_VALID_START_DATE_lt_Curr_Dt_AND_CAMPAIGN_CELL_CODE_FLAG_ne_Y |
      | N_5504_EML_Trigger3_ExtTable_VALID_START_DATE_eq_Curr_Dt_AND_CAMPAIGN_CELL_CODE_FLAG_ne_Y |
      | N_5504_EML_Trigger3_ExtTable_2_Records                                                    |


     ## Set DSS Date to 37 Days from Current Date and Run the Following Scripts

  @MPSAContributionEmail_Oct_27_2022 @MPSAContributionEmail_IH_37_Days_Positive_Validation_Oct_27_2022 @5504 @EMAIL @RS21098
  Scenario Outline: MPSA Contribution_RS21098_5504_EMAIL Validate offer details against IH for DSS 37 Days Positive test cases Oct_27_2022
    Given load data from "MPSAContributionFunds_Oct_27_2022" excel sheet

    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And read cust Insights information details from excel sheet "CUST_INSIGHTS" for "<Test cases>"

    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data

    Then validate MPSA Contribution Fund Oct 27 2022 Release Initial offer details against IH

    Examples:
      | Test cases                                            |
#      | 5504_EML_Scrio_2_Seg_01_MPSA_ODT_lt_X_No_MPSA_Bonus   |
#      | 5504_EML_Scrio_2_Seg_02_MPSA_ODT_eq_X_With_MPSA_Bonus |


  @MPSAContributionEmail_Oct_27_2022 @MPSAContributionEmail_IH_37_Days_Negative_Validation_Oct_27_2022 @5504 @EMAIL @RS21098
  Scenario Outline: MPSA Contribution_RS21098_5504_EMAIL Validate offer details against IH for DSS 37 Days Negative test cases Oct_27_2022
    Given load data from "MPSAContributionFunds_Oct_27_2022" excel sheet

    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And read cust Insights information details from excel sheet "CUST_INSIGHTS" for "<Test cases>"

    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data

    Then verify offer should not display

    Examples:
      | Test cases                                            |
#      | N_5504_EML_Scrio_2_Seg_01_MPSA_ODT_eq_X_No_MPSA_Bonus |

