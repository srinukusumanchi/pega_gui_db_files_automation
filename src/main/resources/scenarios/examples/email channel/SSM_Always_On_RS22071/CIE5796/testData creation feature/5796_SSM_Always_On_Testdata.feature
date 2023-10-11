@SSM_Always_On_5796_EMAIL
Feature: Test data creation for EMail SSM Always On Engagement

  @SSM_Always_On_5796 @EMAIL @SSM_Always_On_5796_BASE_TESTDATA @RS22071 @5796
  Scenario Outline: SSM_Always_On_RS22071_5796_EMAIL Create test data for Base test cases
    Given load data from "SSM_AlwaysOn_EML" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" accounts
    And write Different Event Dates "<Event_Duration>" and "<Event_Duration_2>" values into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:
      | Test cases       | Acct_Cnt | Insight_Cnt | Event_Duration | Event_Duration_2 |
      | 5796_EML_BASE_01 | 1        | 1           | 46             | NULL             |


  @SSM_Always_On_5796 @EMAIL @SSM_Always_On_5796_Pos_TESTDATA @RS22071 @5796
  Scenario Outline: SSM_Always_On_RS22071_5796_EMAIL Create test data for Pos test cases
    Given load data from "SSM_AlwaysOn_EML" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" accounts
    And write Different Event Dates "<Event_Duration>" and "<Event_Duration_2>" values into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:
      | Test cases                                                                               | Acct_Cnt | Insight_Cnt | Event_Duration | Event_Duration_2 |
      | 5796_EML_Seg_01_LANG_CD_eq_fr                                                            | 1        | 1           | 46             | NULL             |
      | 5796_EML_CUST_AGE_eq_18                                                                  | 1        | 1           | 46             | NULL             |
      | 5796_EML_MK_BK_INFO_ACCTS_EMAIL_F_eq_NULL                                                | 1        | 1           | 46             | NULL             |
      | 5796_EML_DO_NOT_SOLICIT_F_eq_NULL                                                        | 1        | 1           | 46             | NULL             |
      | 5796_EML_ACCT_SUBSYS_ID_eq_KS_SRC_SYS_PRD_CD_eq_AXG_SRC_SYS_SUB_PRD_CD_eq_GC             | 1        | 1           | 46             | NULL             |
      | 5796_EML_ACCT_SUBSYS_ID_eq_BB_KS_SRC_SYS_PRD_CD_eq_01_VFB                                | 2        | 1           | 46             | NULL             |
      | 5796_EML_ACCT_SUBSYS_ID_eq_BB_KS_SRC_SYS_PRD_CD_eq_14_AXG                                | 2        | 1           | 46             | NULL             |
      | 5796_EML_INSIGHT_CD_eq_FLG_SSM_ENROLL_and_CURR_VAL_eq_1_CURRENTDATE-EVENT_DATE_eq_45     | 1        | 1           | 45             | NULL             |
      | 5796_EML_INSIGHT_CD_eq_FLG_SSM_ENROLL_and_CURR_VAL_eq_1_CURRENTDATE-EVENT_DATE_eq_50     | 1        | 1           | 50             | NULL             |
      | 5796_EML_INSIGHT_CD_eq_FLG_SSM_ENROLL_and_CURR_VAL_eq_1_CURRENTDATE-EVENT_DATE_gt_50     | 1        | 1           | 51             | NULL             |
      | 5796_EML_INSIGHT_CD_eq_FLG_SSM_ENROLL_and_CURR_VAL_eq_1_CURRENTDATE-EVENT_DATE_eq_365    | 1        | 1           | 365            | NULL             |
      | 5796_EML_INSIGHT_CD_eq_FLG_SSM_LAST_CLICK_and_CURR_VAL_eq_1_CURRENTDATE-EVENT_DATE_gt_45 | 1        | 2           | 55             | 46               |
      | 5796_EML_INSIGHT_CD_eq_FLG_SSM_LAST_CLICK_and_CURR_VAL_eq_1_CURRENTDATE-EVENT_DATE_eq_45 | 1        | 2           | 364            | 45               |
      | 5796_EML_INSIGHT_CD_eq_FLG_SSM_LAST_CLICK_and_CURR_VAL_ne_1_CURRENTDATE-EVENT_DATE_gt_45 | 1        | 2           | 46             | 45               |


  @SSM_Always_On_5796 @EMAIL @SSM_Always_On_5796_Neg_TESTDATA @RS22071 @5796
  Scenario Outline: SSM_Always_On_RS22071_5796_EMAIL Create test data for Neg test cases
    Given load data from "SSM_AlwaysOn_EML" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_Cnt>" accounts
    And write Different Event Dates "<Event_Duration>" and "<Event_Duration_2>" values into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    When write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "<Insight_Cnt>" accounts
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_Cnt>" accounts

    Examples:
      | Test cases                                                                                                   | Acct_Cnt | Insight_Cnt | Event_Duration | Event_Duration_2 |
      | N_5796_EML_ DECEASED_F_eq_Y                                                                                  | 1        | 1           | 46             | NULL             |
      | N_5796_EML_ DECEASED_F_eq_NULL                                                                               | 1        | 1           | 46             | NULL             |
      | N_5796_EML_CUST_TP_CD_not_PSNL                                                                               | 1        | 1           | 46             | NULL             |
      | N_5796_EML_CUST_TP_CD_eq_NULL                                                                                | 1        | 1           | 46             | NULL             |
      | N_5796_EML_Lang_CD_eq_bn                                                                                     | 1        | 1           | 46             | NULL             |
      | N_5796_EML_Lang_CD_eq_NULL                                                                                   | 1        | 1           | 46             | NULL             |
      | N_5796_EML_CUST_AGE_lt_18                                                                                    | 1        | 1           | 46             | NULL             |
      | N_5796_EML_CUST_AGE_eq_NULL                                                                                  | 1        | 1           | 46             | NULL             |
      | N_5796_EML_PRIM_CNTRY_CD_ne_CA                                                                               | 1        | 1           | 46             | NULL             |
      | N_5796_EML_PRIM_CNTRY_CD_eq_NULL                                                                             | 1        | 1           | 46             | NULL             |
      | N_5796_EML_MRKTBLE_F_eq_N                                                                                    | 1        | 1           | 46             | NULL             |
      | N_5796_EML_MRKTBLE_F_eq_NULL                                                                                 | 1        | 1           | 46             | NULL             |
      | N_5796_EML_VLD_EMAIL_eq_N                                                                                    | 1        | 1           | 46             | NULL             |
      | N_5796_EML_VLD_EMAIL_eq_NULL                                                                                 | 1        | 1           | 46             | NULL             |
      | N_5796_EML_PRIM_EMAIL_ADDR_eq_NULL                                                                           | 1        | 1           | 46             | NULL             |
      | N_5796_INDV_FRST_NM_eq_NULL                                                                                  | 1        | 1           | 46             | NULL             |
      | N_5796_INDV_LAST_NM_eq_NULL                                                                                  | 1        | 1           | 46             | NULL             |
      | N_5796_DO_NOT_EMAIL_F_eq_Y                                                                                   | 1        | 1           | 46             | NULL             |
      | N_5796_DO_NOT_EMAIL_F_eq_NULL                                                                                | 1        | 1           | 46             | NULL             |
      | N_5796_MK_BK_INFO_ACCTS_EMAIL_F_eq_N                                                                         | 1        | 1           | 46             | NULL             |
      | N_5796_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_14                                                         | 1        | 1           | 46             | NULL             |
      | N_5796_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_17                                                         | 1        | 1           | 46             | NULL             |
      | N_5796_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_VFB                                                        | 1        | 1           | 46             | NULL             |
      | N_5796_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_BLV                                                        | 1        | 1           | 46             | NULL             |
      | N_5796_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_Overdraft                                                  | 1        | 1           | 46             | NULL             |
      | N_5796_EML_ACCT_SUBSYS_ID_eq_BB_KS_SRC_SYS_PRD_CD_eq_17_BLV                                                  | 2        | 1           | 46             | NULL             |
      | N_5796_EML_CURR_VAL_not_eq_1                                                                                 | 1        | 1           | 46             | NULL             |
      | N_5796_EML_CURR_VAL_eq_NULL                                                                                  | 1        | 1           | 46             | NULL             |
      | N_5796_EML_DO_NOT_SOLICIT_F_eq_Y                                                                             | 1        | 1           | 46             | NULL             |
      | N_5796_EML_INSIGHT_CD_eq_FLG_SSM_ENROLL_CURR_VAL_eq_1_CURRENTDATE-EVENT_DATE_lt_45                           | 1        | 1           | 44             | NULL             |
      | N_5796_EML_INSIGHT_CD_eq_FLG_SSM_ENROLL_CURR_VAL_eq_1_CURRENTDATE-EVENT_DATE_gt_50                           | 1        | 1           | 51             | NULL             |
      | N_5796_EML_INSIGHT_CD_eq_FLG_SSM_ENROLL_CURR_VAL_eq_1_CURRENTDATE-EVENT_DATE_eq_50                           | 1        | 1           | 50             | NULL             |
      | N_5796_EML_INSIGHT_CD_eq_FLG_SSM_ENROLL_CURR_VAL_eq_1_CURRENTDATE-EVENT_DATE_gt_365                          | 1        | 1           | 366            | NULL             |
      | N_5796_EML_NSIGHT_CD_eq_FLG_SSM_LAST_CLICK                                                                   | 1        | 1           | 46             | NULL             |
      | N_5796_EML_INSIGHT_CD_eq_FLG_SSM_LAST_CLICK_CURR_VAL_eq_1_CURRENTDATE-EVENT_DATE_lt_45                       | 1        | 2           | 55             | 44               |
      | N_5796_EML_INSIGHT_CD_eq_FLG_SSM_ENROLL_EVENT_DATE_gt_45_INSIGHT_CD_eq_FLG_SSM_LAST_CLICK_EVENT_DATE_gt_45   | 1        | 2           | 46             | 46               |
      | N_5796_EML_INSIGHT_CD_eq_FLG_SSM_ENROLL_EVENT_DATE_gt_45_INSIGHT_CD_eq_FLG_SSM_LAST_CLICK_EVENT_DATE_lt_45   | 1        | 2           | 46             | 44               |
      | N_5796_EML_INSIGHT_CD_eq_FLG_SSM_ENROLL_EVENT_DATE_gt_45_INSIGHT_CD_eq_FLG_SSM_LAST_CLICK_EVENT_DATE_eq_NULL | 1        | 2           | 46             | NULL             |


