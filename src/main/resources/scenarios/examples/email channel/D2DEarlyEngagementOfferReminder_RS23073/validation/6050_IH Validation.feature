@D2D_Early_Engagement_OfferRemainder_6050_IHValidation
Feature: Validation for D2D_Early_Engagement_OfferRemainder 6050

  @D2D_Early_Engagement_OfferRemainder_6050 @D2D_EarlyEngagementOfferRemainder_6050_EML_IH_Base_Validation @6050 @EML @RS23073
  Scenario Outline: D2D_EarlyEngagementOfferRemainder_6050_IH_Base_Validation @RS23073_6001_EML Validate IH details against database and pega for Base Line test cases
    Given load data from "D2D_EarlyEngagement" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
#    Then validate D2D_EarlyEngagementOfferRemainder offer details against IH for "EML" Channel
    Then validate D2D Acquisition offer details against IH
    Examples:
      | Test cases       |
      | 6050_EML_BASE_01 |


  @D2D_Early_Engagement_OfferRemainder_6050 @D2D_EarlyEngagementOfferRemainder_6050_EML_IH_Positive_Validation @6050 @EML @RS23073
  Scenario Outline: D2D_EarlyEngagementOfferRemainder_6050_IH_Base_Validation @RS23073_6050_EML Validate IH details against database and pega for Positive test cases
    Given load data from "D2D_EarlyEngagement" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
#    Then validate D2D_EarlyEngagementOfferRemainder offer details against IH for "EML" Channel
    Then validate D2D Acquisition offer details against IH
    Examples:
      | Test cases                                                                         |
      | 6050_EML_LANG_CD_eq_fr                                                             |
      | 6050_EML_CUST_AGE_eq_18                                                            |
      | 6050_EML_EMPLOYEE_STAFF_F_eq_NULL                                                  |
      | 6050_EML_DO_NOT_SOLICIT_F_eq_NULL                                                  |
      | 6050_EML_MK_BK_INFO_ACCTS_EMAIL_eq_NULL                                            |
      | 6050_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_03        |
      | 6050_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_01        |
      | 6050_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_03        |
      | 6050_EML_ACCT_ODT_eq_44days                                                        |
      | 6050_EML_ACCT_ODT_eq_46days                                                        |
      | 6050_EML_HAS_CLOSED_CHQ_F_eq_NULL                                                  |
         #Single Insight
      | 6050_EML_INSIGHT_CD_eq_FLG_D2DOFRFULFIL_PAY                                        |
      | 6050_EML_INSIGHT_CD_eq_FLG_D2DOFRFULFIL_BILL                                       |
      | 6050_EML_INSIGHT_CD_eq_FLG_D2DOFRFULFIL_PAT_CURR_VAL_eq_0                          |
      | 6050_EML_INSIGHT_CD_eq_FLG_D2DOFRFULFIL_PAT_CURR_VAL_eq_1                          |
      | 6050_EML_INSIGHT_CD_eq_FLG_D2DOFRFULFIL_PAT_CURR_VAL_eq_2                          |
      | 6050_EML_INSIGHT_CD_eq_FLG_D2DOFRFULFIL_PAT_CURR_VAL_gt_2                          |
      | 6050_EML_INSIGHT_CD_eq_FLG_D2DOFRFULFIL_BILL_CURR_VAL_eq_0                         |
      | 6050_EML_INSIGHT_CD_eq_FLG_D2DOFRFULFIL_BILL_CURR_VAL_eq_1                         |
      | 6050_EML_INSIGHT_CD_eq_FLG_D2DOFRFULFIL_BILL_CURR_VAL_gt_1                         |
      | 6050_EML_INSIGHT_CD_eq_FLG_D2DOFRFULFIL_PAY_CURR_VAL_eq_0                          |
      | 6050_EML_INSIGHT_CD_eq_FLG_D2DOFRFULFIL_PAY_CURR_VAL_eq_1                          |
      | 6050_EML_INSIGHT_CD_eq_FLG_D2DOFRFULFIL_PAY_CURR_VAL_gt_1                          |
#Exclusion Negative
      | 6050_EML_Creative_1_ExtTable_Curr_Dt_lt_VALID_START_DATE_Curr_Dt_lt_VALID_END_DATE |
      | 6050_EML_Creative_1_ExtTable_Curr_Dt_gt_VALID_START_DATE_Curr_Dt_gt_VALID_END_DATE |
      | 6050_EML_Creative_1_ExtTable_CAMPAIGN_CODE_ne_RS23073                              |
      | 6050_EML_Creative_1_ExtTable_CAMPAIGN_CELL_CODE_FLAG_ne_N                          |
      | 6050_EML_Creative_1_ExtTable_CAMPAIGN_CELL_CODE_FLAG_eq_NULL                       |

    #Negative IH Validation
  @D2D_Early_Engagement_OfferRemainder_6050 @D2D_EarlyEngagementOfferRemainder_6050_EML_IH_Negative_Validation @6050 @EML @RS23073
  Scenario Outline: D2D_EarlyEngagementOfferRemainder_6050_IH_Base_Validation @RS23073_6050_EML Validate IH details against database and pega for Negative test cases
    Given load data from "D2D_EarlyEngagement" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then verify using IH API that offer is not returned
    Examples:
      | Test cases                                                                           |
      | N_6050_EML_DECEASED_F_eq_Y                                                           |
      | N_6050_EML_DECEASED_F_eq_NULL                                                        |
      | N_6050_EML_CUST_TP_CD_ne_PSNL                                                        |
      | N_6050_EML_PRIM_CNTRY_CD_ne_CA                                                       |
      | N_6050_EML_PRIM_CNTRY_CD_eq_NULL                                                     |
      | N_6050_EML_LANG_CD_ne_en                                                             |
      | N_6050_EML_LANG_CD_ne_fr                                                             |
      | N_6050_EML_LANG_CD_eq_NULL                                                           |
      | N_6050_EML_CUST_AGE_lt_18                                                            |
      | N_6050_EML_CUST_AGE_eq_NULL                                                          |
      | N_6050_EML_EMPLOYEE_STAFF_F_eq_Y                                                     |
      | N_6050_EML_PRV_BNK_IND_eq_Y                                                          |
      | N_6050_EML_PRV_BNK_IND_eq_NULL                                                       |
      | N_6050_EML_HAS_CLOSED_CHQ_F_eq_Y                                                     |
      | N_6050_EML_DO_NOT_EMAIL_F_eq_Y                                                       |
      | N_6050_EML_DO_NOT_EMAIL_F_eq_NULL                                                    |
      | N_6050_EML_VLD_EMAIL_F_eq_N                                                          |
      | N_6050_EML_VLD_EMAIL_F_eq_NULL                                                       |
      | N_6050_EML_PRIM_EMAIL_ADDR_eq_NULL                                                   |
      | N_6050_EML_INDV_FRST_NM_eq_NULL                                                      |
      | N_6050_EML_INDV_LAST_NM_eq_NULL                                                      |
      | N_6050_EML_DO_NOT_SOLICIT_F_eq_Y                                                     |
      | N_6050_EML_MK_BK_INFO_ACCTS_EMAIL_F_eq_N                                             |
      | N_6050_EML_ACCT_SUBSYS_ID_ne_BB                                                      |
      | N_6050_EML_ACCT_SUBSYS_ID_eq_NULL                                                    |
      | N_6050_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_04        |
      | N_6050_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_NULL      |
      | N_6050_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_02        |
      | N_6050_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_NULL      |
      | N_6050_EML_SRC_SYS_PRD_CD_eq_NULL                                                    |
      | N_6050_EML_SRC_ACCT_STAT_CD_ne_A                                                     |
      | N_6050_EML_SRC_ACCT_STAT_CD_eq_NULL                                                  |
      | N_6050_EML_ACCT_ODT_lt_44days                                                        |
      | N_6050_EML_ACCT_ODT_gt_46days                                                        |
      | N_6050_EML_ACCT_ODT_eq_NULL                                                          |
      | N_6050_EML_PRIMARY_ACCT_HOLDER_FLAG_eq_N                                             |
      | N_6050_EML_PRIMARY_ACCT_HOLDER_FLAG_eq_NULL                                          |
      | N_6050_EML_CUST_INSIGHT_ACCT_NUM_ne_TargerAccountNumber                              |
      | N_6050_EML_CUST_INSIGHT_ACCT_NUM_eq_NULL                                             |
      | N_6050_EML_INSIGHT_CD_ne_FLG_D2DOFRFULFIL_PAT                                        |
#Exclusion Positive
      | N-6050_EML_Creative_1_ExtTable_Curr_Dt_gt_VALID_START_DATE_Curr_Dt_lt_VALID_END_DATE |
      | N-6050_EML_Creative_1_ExtTable_Curr_Dt_eq_VALID_START_DATE_Curr_Dt_lt_VALID_END_DATE |
      | N-6050_EML_Creative_1_ExtTable_Curr_Dt_gt_VALID_START_DATE_Curr_Dt_eq_VALID_END_DATE |
      | N-6050_EML_Creative_1_ExtTable_Curr_Dt_eq_VALID_START_DATE_Curr_Dt_eq_VALID_END_DATE |


# June 22nd 2023 Release for AJO File

  @D2D_Early_Engagement_OfferRemainder_6050 @D2D_EarlyEngagementOfferRemainder_6050_EML_AJO_IH_Pos_Validation @6050 @EML @RS23073
  Scenario Outline: Validate RS23073_6001_EML IH details against database and pega for AJO Pos test cases
    Given load data from "D2D_EarlyEngagement" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then validate D2D_EarlyEngagementOfferRemainder offer details against IH for "EML" Channel
#    Then validate D2D Acquisition offer details against IH
    Examples:
      | Test cases                                                                                                                |
      | 6110_EML_Seg_01_INDV_TTL_NM_ne_NULL_PRIM_PROV_CD_ne_NULL                                                                  |
      | 6110_EML_Seg_01_FLG_D2DOFRFULFIL_PAT_CURR_VAL_eq_0_FLG_D2DOFRFULFIL_BILL_CURR_VAL_eq_1_FLG_D2DOFRFULFIL_PAY_CURR_VAL_eq_0 |
      | 6110_EML_Seg_01_FLG_D2DOFRFULFIL_PAT_CURR_VAL_eq_1_FLG_D2DOFRFULFIL_BILL_CURR_VAL_eq_0_FLG_D2DOFRFULFIL_PAY_CURR_VAL_eq_1 |
      | 6110_EML_Seg_01_FLG_D2DOFRFULFIL_PAT_CURR_VAL_eq_2_FLG_D2DOFRFULFIL_BILL_CURR_VAL_gt_1_FLG_D2DOFRFULFIL_PAY_CURR_VAL_gt_1 |
      | 6110_EML_Seg_01_FLG_D2DOFRFULFIL_PAT_CURR_VAL_gt_2_FLG_D2DOFRFULFIL_BILL_CURR_VAL_eq_0_FLG_D2DOFRFULFIL_PAY_CURR_VAL_eq_1 |
      | 6110_EML_Seg_01_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_01                                                                     |
      | 6110_EML_Seg_01_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_03                                                                     |
      | 6110_EML_Seg_01_SRC_PRD_CD_eq_23_SRC_SUB_PRD_CD_eq_01                                                                     |
      | 6110_EML_Seg_01_SRC_PRD_CD_eq_23_SRC_SUB_PRD_CD_eq_03                                                                     |
      | 6110_EML_Seg_01_Diff_ACCT_NUM                                                                                             |
      | 6110_EML_Seg_01_FLG_D2DOFRFULFIL_PAT_CURR_VAL_eq_0                                                                        |
      | 6110_EML_Seg_01_FLG_D2DOFRFULFIL_BILL_CURR_VAL_eq_1                                                                       |


  @D2D_Early_Engagement_OfferRemainder_6050 @D2D_EarlyEngagementOfferRemainder_6050_EML_AJO_IH_Neg_Validation @6050 @EML @RS23073
  Scenario Outline: Validate RS23073_6001_EML IH details against database and pega for AJO Neg test cases
    Given load data from "D2D_EarlyEngagement" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
#    Then verify using IH API that offer is not returned
    Then verify using IH API that offer is not returned for "EML" channel
    Examples:
      | Test cases                                                |
      | N-6110_EML_Seg_01_INDV_FRST_NM_eq_NULL                    |
      | N-6110_EML_Seg_01_INDV_LAST_NM_eq_NULL                    |
      | N-6110_EML_Seg_01_LANG_CD_eq_NULL                         |
      | N-6110_EML_Seg_01_PRIM_EMAIL_ADDR_eq_NULL                 |
      | N-6110_EML_Seg_01_SRC_PRD_CD_eq_NULL_SRC_SUB_PRD_CD_eq_01 |
      | N-6110_EML_Seg_01_SRC_PRD_CD_eq_23_SRC_SUB_PRD_CD_eq_NULL |
