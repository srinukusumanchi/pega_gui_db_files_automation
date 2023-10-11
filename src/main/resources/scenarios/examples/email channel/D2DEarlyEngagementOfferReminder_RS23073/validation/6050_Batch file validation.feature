Feature: Batch file validation for D2D_Early_Engagement_OfferRemainder_6050


  @D2D_Early_Engagement_OfferRemainder_6050_Batch_PositiveTCs_BatchValidation
  Scenario Outline:D2D_Early_Engagement_OfferRemainder_6050_EML Validation of Batch file details against database and pega for Base and Positive test cases
    Given load data from "D2D_EarlyEngagement" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "D2DEarlyEngRem" extract file with batch "Activity Setup Date;Account Product Code;PAT Completed;Bill Payment Completed;Payroll Completed;" Email Specific Text Header
    Then Validate D2DEarlyEngagementOfferRemainder offer details in batch file against database and pega
    Examples:
      | Test cases                                                                  |
      | 6050_EML_BASE_01                                                            |
      | 6050_EML_LANG_CD_eq_fr                                                      |
      | 6050_EML_LANG_CD_eq_fr                                                      |
      | 6050_EML_CUST_AGE_eq_18                                                     |
      | 6050_EML_EMPLOYEE_STAFF_F_eq_NULL                                           |
      | 6050_EML_DO_NOT_SOLICIT_F_eq_NULL                                           |
      | 6050_EML_MK_BK_INFO_ACCTS_EMAIL_eq_NULL                                     |
      | 6050_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_03 |
      | 6050_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_01 |
      | 6050_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_03 |
      | 6050_EML_ACCT_ODT_eq_44days                                                 |
      | 6050_EML_ACCT_ODT_eq_46days                                                 |
      | 6050_EML_HAS_CLOSED_CHQ_F_eq_NULL                                           |
##         #Single Insight
      | 6050_EML_INSIGHT_CD_eq_FLG_D2DOFRFULFIL_PAY                                 |
      | 6050_EML_INSIGHT_CD_eq_FLG_D2DOFRFULFIL_BILL                                |
      | 6050_EML_INSIGHT_CD_eq_FLG_D2DOFRFULFIL_PAT_CURR_VAL_eq_0                   |
      | 6050_EML_INSIGHT_CD_eq_FLG_D2DOFRFULFIL_PAT_CURR_VAL_eq_1                   |
      | 6050_EML_INSIGHT_CD_eq_FLG_D2DOFRFULFIL_PAT_CURR_VAL_eq_2                   |
      | 6050_EML_INSIGHT_CD_eq_FLG_D2DOFRFULFIL_PAT_CURR_VAL_gt_2                   |
      | 6050_EML_INSIGHT_CD_eq_FLG_D2DOFRFULFIL_BILL_CURR_VAL_eq_0                  |
      | 6050_EML_INSIGHT_CD_eq_FLG_D2DOFRFULFIL_BILL_CURR_VAL_eq_1                  |
      | 6050_EML_INSIGHT_CD_eq_FLG_D2DOFRFULFIL_BILL_CURR_VAL_gt_1                  |
      | 6050_EML_INSIGHT_CD_eq_FLG_D2DOFRFULFIL_PAY_CURR_VAL_eq_0                   |
      | 6050_EML_INSIGHT_CD_eq_FLG_D2DOFRFULFIL_PAY_CURR_VAL_eq_1                   |
      | 6050_EML_INSIGHT_CD_eq_FLG_D2DOFRFULFIL_PAY_CURR_VAL_gt_1                   |

      #External Table Exclusions
      | 6050_EML_Creative_1_ExtTable_Curr_Dt_lt_VALID_START_DATE_Curr_Dt_lt_VALID_END_DATE   |
      | 6050_EML_Creative_1_ExtTable_Curr_Dt_gt_VALID_START_DATE_Curr_Dt_gt_VALID_END_DATE   |
      | 6050_EML_Creative_1_ExtTable_CAMPAIGN_CODE_ne_RS23073                                |
      | 6050_EML_Creative_1_ExtTable_CAMPAIGN_CELL_CODE_FLAG_ne_N                            |
      | 6050_EML_Creative_1_ExtTable_CAMPAIGN_CELL_CODE_FLAG_eq_NULL                         |



