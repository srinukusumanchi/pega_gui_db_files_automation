@D2D_Early_Engagement_OfferRemainder_6050_EML
Feature: Test data creation for EML D2D Early Engagement Offer CIE6050

  @D2D_Early_Engagement_OfferRemainder_6050_EML_Base  @23073_Base_Line_TestDataLoad @6050 @EML @RS23073
  Scenario Outline: D2D Early Engagement - Offer Reminder in CIE6040 RS23073 EML Create test data for Loading data for D2D Early Engagement Offer Remainder for Base test cases

    Given load data from "D2D_EarlyEngagement" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

      # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # CUST_INSIGHTS
#    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" accounts
#    When write account number into sheet "CUST_INSIGHTS" for "<Test cases>" having "<Insight_Cnt>" accounts
#    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    When write cid and account number into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" account Insights
    Then insert customer and account details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts Insights

    Examples:
      | Test cases       | Acct_Cnt | ACCT_ODT_Val | Insight_Cnt |
      | 6050_EML_BASE_01 | 1        | 45           | 3           |


  @D2D_Early_Engagement_OfferRemainder_6050_EML_Positive  @23073_Positive_TestDataLoad @6050 @EML @RS23073
  Scenario Outline: D2D Early Engagement - Offer Reminder in CIE6040 RS23073 EML Create test data for Loading data for D2D Early Engagement Offer Remainder for Positive test cases

    Given load data from "D2D_EarlyEngagement" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

      # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # CUST_INSIGHTS
    When write cid and account number into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" account Insights
    Then insert customer and account details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts Insights

    Examples:
      | Test cases                                                                  | Acct_Cnt | ACCT_ODT_Val | Insight_Cnt |
      | 6050_EML_LANG_CD_eq_fr                                                      | 1        | 45           | 3           |
      | 6050_EML_CUST_AGE_eq_18                                                     | 1        | 45           | 3           |
      | 6050_EML_EMPLOYEE_STAFF_F_eq_NULL                                           | 1        | 45           | 3           |
      | 6050_EML_DO_NOT_SOLICIT_F_eq_NULL                                           | 1        | 45           | 3           |
      | 6050_EML_MK_BK_INFO_ACCTS_EMAIL_eq_NULL                                     | 1        | 45           | 3           |
      | 6050_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_03 | 1        | 45           | 3           |
      | 6050_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_01 | 1        | 45           | 3           |
      | 6050_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_03 | 1        | 45           | 3           |
      | 6050_EML_ACCT_ODT_eq_44days                                                 | 1        | 45           | 3           |
      | 6050_EML_ACCT_ODT_eq_46days                                                 | 1        | 45           | 3           |
      | 6050_EML_HAS_CLOSED_CHQ_F_eq_NULL                                           | 1        | 45           | 3           |
         #Single Insight
      | 6050_EML_INSIGHT_CD_eq_FLG_D2DOFRFULFIL_PAY                                 | 1        | 45           | 1           |
      | 6050_EML_INSIGHT_CD_eq_FLG_D2DOFRFULFIL_BILL                                | 1        | 45           | 1           |
      | 6050_EML_INSIGHT_CD_eq_FLG_D2DOFRFULFIL_PAT_CURR_VAL_eq_0                   | 1        | 45           | 1           |
      | 6050_EML_INSIGHT_CD_eq_FLG_D2DOFRFULFIL_PAT_CURR_VAL_eq_1                   | 1        | 45           | 1           |
      | 6050_EML_INSIGHT_CD_eq_FLG_D2DOFRFULFIL_PAT_CURR_VAL_eq_2                   | 1        | 45           | 1           |
      | 6050_EML_INSIGHT_CD_eq_FLG_D2DOFRFULFIL_PAT_CURR_VAL_gt_2                   | 1        | 45           | 1           |
      | 6050_EML_INSIGHT_CD_eq_FLG_D2DOFRFULFIL_BILL_CURR_VAL_eq_0                  | 1        | 45           | 1           |
      | 6050_EML_INSIGHT_CD_eq_FLG_D2DOFRFULFIL_BILL_CURR_VAL_eq_1                  | 1        | 45           | 1           |
      | 6050_EML_INSIGHT_CD_eq_FLG_D2DOFRFULFIL_BILL_CURR_VAL_gt_1                  | 1        | 45           | 1           |
      | 6050_EML_INSIGHT_CD_eq_FLG_D2DOFRFULFIL_PAY_CURR_VAL_eq_0                   | 1        | 45           | 1           |
      | 6050_EML_INSIGHT_CD_eq_FLG_D2DOFRFULFIL_PAY_CURR_VAL_eq_1                   | 1        | 45           | 1           |
      | 6050_EML_INSIGHT_CD_eq_FLG_D2DOFRFULFIL_PAY_CURR_VAL_gt_1                   | 1        | 45           | 1           |

  @D2D_Early_Engagement_OfferRemainder_6050_EML_Negative  @23073_Negative_TestDataLoad @6050 @EML @RS23073
  Scenario Outline: D2D Early Engagement - Offer Reminder in CIE6040 RS23073 EML Create test data for Loading data for D2D Early Engagement Offer Remainder for Negative test cases

    Given load data from "D2D_EarlyEngagement" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

      # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # CUST_INSIGHTS
    When write cid and account number into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" account Insights
    Then insert customer and account details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts Insights

    Examples:
      | Test cases                                                                      | Acct_Cnt | ACCT_ODT_Val | Insight_Cnt |
      | N_6050_EML_DECEASED_F_eq_Y                                                      | 1        | 45           | 3           |
      | N_6050_EML_DECEASED_F_eq_NULL                                                   | 1        | 45           | 3           |
      | N_6050_EML_CUST_TP_CD_ne_PSNL                                                   | 1        | 45           | 3           |
      | N_6050_EML_PRIM_CNTRY_CD_ne_CA                                                  | 1        | 45           | 3           |
      | N_6050_EML_PRIM_CNTRY_CD_eq_NULL                                                | 1        | 45           | 3           |
      | N_6050_EML_LANG_CD_ne_en                                                        | 1        | 45           | 3           |
      | N_6050_EML_LANG_CD_ne_fr                                                        | 1        | 45           | 3           |
      | N_6050_EML_LANG_CD_eq_NULL                                                      | 1        | 45           | 3           |
      | N_6050_EML_CUST_AGE_lt_18                                                       | 1        | 45           | 3           |
      | N_6050_EML_CUST_AGE_eq_NULL                                                     | 1        | 45           | 3           |
      | N_6050_EML_EMPLOYEE_STAFF_F_eq_Y                                                | 1        | 45           | 3           |
      | N_6050_EML_PRV_BNK_IND_eq_Y                                                     | 1        | 45           | 3           |
      | N_6050_EML_PRV_BNK_IND_eq_NULL                                                  | 1        | 45           | 3           |
      | N_6050_EML_HAS_CLOSED_CHQ_F_eq_Y                                                | 1        | 45           | 3           |
      | N_6050_EML_DO_NOT_EMAIL_F_eq_Y                                                  | 1        | 45           | 3           |
      | N_6050_EML_DO_NOT_EMAIL_F_eq_NULL                                               | 1        | 45           | 3           |
      | N_6050_EML_VLD_EMAIL_F_eq_N                                                     | 1        | 45           | 3           |
      | N_6050_EML_VLD_EMAIL_F_eq_NULL                                                  | 1        | 45           | 3           |
      | N_6050_EML_PRIM_EMAIL_ADDR_eq_NULL                                              | 1        | 45           | 3           |
      | N_6050_EML_INDV_FRST_NM_eq_NULL                                                 | 1        | 45           | 3           |
      | N_6050_EML_INDV_LAST_NM_eq_NULL                                                 | 1        | 45           | 3           |

      | N_6050_EML_DO_NOT_SOLICIT_F_eq_Y                                                | 1        | 45           | 3           |
      | N_6050_EML_MK_BK_INFO_ACCTS_EMAIL_F_eq_N                                        | 1        | 45           | 3           |
      | N_6050_EML_ACCT_SUBSYS_ID_ne_BB                                                 | 1        | 45           | 3           |
      | N_6050_EML_ACCT_SUBSYS_ID_eq_NULL                                               | 1        | 45           | 3           |
      | N_6050_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_04   | 1        | 45           | 3           |
      | N_6050_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_NULL | 1        | 45           | 3           |
      | N_6050_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_02   | 1        | 45           | 3           |
      | N_6050_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_NULL | 1        | 45           | 3           |
      | N_6050_EML_SRC_SYS_PRD_CD_eq_NULL                                               | 1        | 45           | 3           |
      | N_6050_EML_SRC_ACCT_STAT_CD_ne_A                                                | 1        | 45           | 3           |
      | N_6050_EML_SRC_ACCT_STAT_CD_eq_NULL                                             | 1        | 45           | 3           |
      | N_6050_EML_ACCT_ODT_lt_44days                                                   | 1        | 43           | 3           |
      | N_6050_EML_ACCT_ODT_gt_46days                                                   | 1        | 47           | 3           |
      | N_6050_EML_ACCT_ODT_eq_NULL                                                     | 1        | NULL         | 3           |
      | N_6050_EML_PRIMARY_ACCT_HOLDER_FLAG_eq_N                                        | 1        | 45           | 3           |
      | N_6050_EML_PRIMARY_ACCT_HOLDER_FLAG_eq_NULL                                     | 1        | 45           | 3           |
      | N_6050_EML_CUST_INSIGHT_ACCT_NUM_ne_TargerAccountNumber                         | 1        | 45           | 3           |
      | N_6050_EML_CUST_INSIGHT_ACCT_NUM_eq_NULL                                        | 1        | 45           | 3           |
      | N_6050_EML_INSIGHT_CD_ne_FLG_D2DOFRFULFIL_PAT                                   | 1        | 45           | 3           |

  @D2D_Early_Engagement_OfferRemainder_6050_EML_ExternalTable  @23073_Positive_TestDataLoad @6050 @EML @RS23073
  Scenario Outline: D2D Early Engagement - Offer Reminder in CIE6040 RS23073 EML Create test data for Loading data for D2D Early Engagement Offer Remainder for Positive test cases

    Given load data from "D2D_EarlyEngagement" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

      # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # CUST_INSIGHTS
    When write cid and account number into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" account Insights
    Then insert customer and account details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts Insights

    # EXTERNAL_INPUT_FILE_LAYOUT
    When write cid into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>"  having "<EXT_TABLE_Cnt>" accounts
    And write Different Generic Dates in "VALID_START_DATE" field with "<VALID_START_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    And write Different Generic Dates in "VALID_END_DATE" field with "<VALID_END_DATE_Val>" duration from current date into "EXTERNAL_INPUT_FILE_LAYOUT" sheet for "<Test cases>" having "<EXT_TABLE_Cnt>" records
    Then insert customer details in "EXTERNAL_INPUT_FILE_LAYOUT" table having "<EXT_TABLE_Cnt>" accounts

    Examples:
      | Test cases                                                                           | Acct_Cnt | Insight_Cnt | CUST_EV_EB_Cnt | EXT_TABLE_Cnt | ACCT_ODT_Val | EVENT_DATE_Val | VALID_START_DATE_Val | VALID_END_DATE_Val |
      | 6050_EML_Creative_1_ExtTable_Curr_Dt_lt_VALID_START_DATE_Curr_Dt_lt_VALID_END_DATE   | 1        | 3           | 1              | 1             | 45           | 45             | -1                   | -2                 |
      | 6050_EML_Creative_1_ExtTable_Curr_Dt_gt_VALID_START_DATE_Curr_Dt_gt_VALID_END_DATE   | 1        | 3           | 1              | 1             | 45           | 45             | 2                    | 1                  |
      | 6050_EML_Creative_1_ExtTable_CAMPAIGN_CODE_ne_RS23073                                | 1        | 3           | 1              | 1             | 45           | 45             | 1                    | -1                 |
      | 6050_EML_Creative_1_ExtTable_CAMPAIGN_CELL_CODE_FLAG_ne_N                            | 1        | 3           | 1              | 1             | 45           | 45             | 1                    | -1                 |
      | 6050_EML_Creative_1_ExtTable_CAMPAIGN_CELL_CODE_FLAG_eq_NULL                         | 1        | 3           | 1              | 1             | 45           | 45             | 1                    | -1                 |

#Negative TestCases
      | N-6050_EML_Creative_1_ExtTable_Curr_Dt_gt_VALID_START_DATE_Curr_Dt_lt_VALID_END_DATE | 1        | 3           | 1              | 1             | 45           | 45             | 1                    | -1                 |
      | N-6050_EML_Creative_1_ExtTable_Curr_Dt_eq_VALID_START_DATE_Curr_Dt_lt_VALID_END_DATE | 1        | 3           | 1              | 1             | 45           | 45             | 0                    | -1                 |
      | N-6050_EML_Creative_1_ExtTable_Curr_Dt_gt_VALID_START_DATE_Curr_Dt_eq_VALID_END_DATE | 1        | 3           | 1              | 1             | 45           | 45             | 1                    | 0                  |
      | N-6050_EML_Creative_1_ExtTable_Curr_Dt_eq_VALID_START_DATE_Curr_Dt_eq_VALID_END_DATE | 1        | 3           | 1              | 1             | 45           | 45             | 0                    | 0                  |


    # June 22nd 2023 Release - AJO File Scenarios
  #Positive Scenarios
  @D2D_Early_Engagement_OfferRemainder  @D2D_Early_Engagement_OfferRemainder_6050_EML_AJO_Pos @6050 @EML @RS23073
  Scenario Outline: D2D Early Engagement - Offer Reminder in CIE6040 RS23073 EML Create test data for Loading data for D2D Early Engagement Offer Remainder for AJO Positive test cases

    Given load data from "D2D_EarlyEngagement" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

      # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # CUST_INSIGHTS
    When write cid and account number into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" account Insights
    Then insert customer and account details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts Insights

    Examples:
      | Test cases                                                                                                                | Acct_Cnt | Insight_Cnt | ACCT_ODT_Val |
      | 6110_EML_Seg_01_INDV_TTL_NM_ne_NULL_PRIM_PROV_CD_ne_NULL                                                                  | 1        | 3           | 45           |
      | 6110_EML_Seg_01_FLG_D2DOFRFULFIL_PAT_CURR_VAL_eq_0_FLG_D2DOFRFULFIL_BILL_CURR_VAL_eq_1_FLG_D2DOFRFULFIL_PAY_CURR_VAL_eq_0 | 1        | 3           | 45           |
      | 6110_EML_Seg_01_FLG_D2DOFRFULFIL_PAT_CURR_VAL_eq_1_FLG_D2DOFRFULFIL_BILL_CURR_VAL_eq_0_FLG_D2DOFRFULFIL_PAY_CURR_VAL_eq_1 | 1        | 3           | 45           |
      | 6110_EML_Seg_01_FLG_D2DOFRFULFIL_PAT_CURR_VAL_eq_2_FLG_D2DOFRFULFIL_BILL_CURR_VAL_gt_1_FLG_D2DOFRFULFIL_PAY_CURR_VAL_gt_1 | 1        | 3           | 45           |
      | 6110_EML_Seg_01_FLG_D2DOFRFULFIL_PAT_CURR_VAL_gt_2_FLG_D2DOFRFULFIL_BILL_CURR_VAL_eq_0_FLG_D2DOFRFULFIL_PAY_CURR_VAL_eq_1 | 1        | 3           | 45           |
      | 6110_EML_Seg_01_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_01                                                                     | 1        | 3           | 45           |
      | 6110_EML_Seg_01_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_03                                                                     | 1        | 3           | 45           |
      | 6110_EML_Seg_01_SRC_PRD_CD_eq_23_SRC_SUB_PRD_CD_eq_01                                                                     | 1        | 3           | 45           |
      | 6110_EML_Seg_01_SRC_PRD_CD_eq_23_SRC_SUB_PRD_CD_eq_03                                                                     | 1        | 3           | 45           |
      | 6110_EML_Seg_01_Diff_ACCT_NUM                                                                                             | 2        | 3           | 44,45        |
      | 6110_EML_Seg_01_FLG_D2DOFRFULFIL_PAT_CURR_VAL_eq_0                                                                        | 1        | 1           | 45           |
      | 6110_EML_Seg_01_FLG_D2DOFRFULFIL_BILL_CURR_VAL_eq_1                                                                       | 1        | 1           | 45           |


  #Negative Scenarios
  @D2D_Early_Engagement_OfferRemainder  @D2D_Early_Engagement_OfferRemainder_6050_EML_AJO_Neg @6050 @EML @RS23073
  Scenario Outline: D2D Early Engagement - Offer Reminder in CIE6040 RS23073 EML Create test data for Loading data for D2D Early Engagement Offer Remainder for AJO Negative test cases

    Given load data from "D2D_EarlyEngagement" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

      # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    # CUST_INSIGHTS
    When write cid and account number into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" account Insights
    Then insert customer and account details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts Insights

    Examples:
      | Test cases                                                | Acct_Cnt | Insight_Cnt | ACCT_ODT_Val |
      | N-6110_EML_Seg_01_INDV_FRST_NM_eq_NULL                    | 1        | 3           | 45           |
      | N-6110_EML_Seg_01_INDV_LAST_NM_eq_NULL                    | 1        | 3           | 45           |
      | N-6110_EML_Seg_01_LANG_CD_eq_NULL                         | 1        | 3           | 45           |
      | N-6110_EML_Seg_01_PRIM_EMAIL_ADDR_eq_NULL                 | 1        | 3           | 45           |
      | N-6110_EML_Seg_01_SRC_PRD_CD_eq_NULL_SRC_SUB_PRD_CD_eq_01 | 1        | 3           | 45           |
      | N-6110_EML_Seg_01_SRC_PRD_CD_eq_23_SRC_SUB_PRD_CD_eq_NULL | 1        | 3           | 45           |

