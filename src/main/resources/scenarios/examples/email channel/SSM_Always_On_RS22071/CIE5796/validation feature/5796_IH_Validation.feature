Feature: IH Validation for SSM Always On Welcome_5795


  @SSM_Engagement_Email_5796_IH_PositiveTCs_Validation
  Scenario Outline: SSM Always On Engagement 5796_RS22071_EMAIL Validate IH details against database and pega for Positive test cases
    Given load data from "SSM_AlwaysOn_EML" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate SSM Always On offer details against IH
    Examples:
      | Test cases                                                                               |
      | 5796_EML_BASE_01                                                                         |
      | 5796_EML_Seg_01_LANG_CD_eq_fr                                                            |
      | 5796_EML_CUST_AGE_eq_18                                                                  |
      | 5796_EML_MK_BK_INFO_ACCTS_EMAIL_F_eq_NULL                                                |
      | 5796_EML_DO_NOT_SOLICIT_F_eq_NULL                                                        |
      | 5796_EML_ACCT_SUBSYS_ID_eq_KS_SRC_SYS_PRD_CD_eq_AXG_SRC_SYS_SUB_PRD_CD_eq_GC             |
      | 5796_EML_ACCT_SUBSYS_ID_eq_BB_KS_SRC_SYS_PRD_CD_eq_01_VFB                                |
      | 5796_EML_ACCT_SUBSYS_ID_eq_BB_KS_SRC_SYS_PRD_CD_eq_14_AXG                                |
      | 5796_EML_INSIGHT_CD_eq_FLG_SSM_ENROLL_and_CURR_VAL_eq_1_CURRENTDATE-EVENT_DATE_eq_45     |
      | 5796_EML_INSIGHT_CD_eq_FLG_SSM_ENROLL_and_CURR_VAL_eq_1_CURRENTDATE-EVENT_DATE_eq_50     |
      | 5796_EML_INSIGHT_CD_eq_FLG_SSM_ENROLL_and_CURR_VAL_eq_1_CURRENTDATE-EVENT_DATE_gt_50     |
      | 5796_EML_INSIGHT_CD_eq_FLG_SSM_ENROLL_and_CURR_VAL_eq_1_CURRENTDATE-EVENT_DATE_eq_365    |
      | 5796_EML_INSIGHT_CD_eq_FLG_SSM_LAST_CLICK_and_CURR_VAL_eq_1_CURRENTDATE-EVENT_DATE_gt_45 |
      | 5796_EML_INSIGHT_CD_eq_FLG_SSM_LAST_CLICK_and_CURR_VAL_eq_1_CURRENTDATE-EVENT_DATE_eq_45 |
      | 5796_EML_INSIGHT_CD_eq_FLG_SSM_LAST_CLICK_and_CURR_VAL_ne_1_CURRENTDATE-EVENT_DATE_gt_45 |


  @SSM_Engagement_Email_5796_IH_NegativeTCs_Validation
  Scenario Outline: SSM Always On Engagement 5796_RS22071_EMAIL Validate IH details against database and pega for Negative test cases
    Given load data from "SSM_AlwaysOn_EML" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then verify offer should not display
    Examples:
      | Test cases                                                                                                   |
      | N_5796_EML_ DECEASED_F_eq_Y                                                                                  |
      | N_5796_EML_ DECEASED_F_eq_NULL                                                                               |
      | N_5796_EML_CUST_TP_CD_not_PSNL                                                                               |
      | N_5796_EML_CUST_TP_CD_eq_NULL                                                                                |
      | N_5796_EML_Lang_CD_eq_bn                                                                                     |
      | N_5796_EML_Lang_CD_eq_NULL                                                                                   |
      | N_5796_EML_CUST_AGE_lt_18                                                                                    |
      | N_5796_EML_CUST_AGE_eq_NULL                                                                                  |
      | N_5796_EML_PRIM_CNTRY_CD_ne_CA                                                                               |
      | N_5796_EML_PRIM_CNTRY_CD_eq_NULL                                                                             |
      | N_5796_EML_MRKTBLE_F_eq_N                                                                                    |
      | N_5796_EML_MRKTBLE_F_eq_NULL                                                                                 |
      | N_5796_EML_VLD_EMAIL_eq_N                                                                                    |
      | N_5796_EML_VLD_EMAIL_eq_NULL                                                                                 |
      | N_5796_EML_PRIM_EMAIL_ADDR_eq_NULL                                                                           |
      | N_5796_INDV_FRST_NM_eq_NULL                                                                                  |
      | N_5796_INDV_LAST_NM_eq_NULL                                                                                  |
      | N_5796_DO_NOT_EMAIL_F_eq_Y                                                                                   |
      | N_5796_DO_NOT_EMAIL_F_eq_NULL                                                                                |
      | N_5796_MK_BK_INFO_ACCTS_EMAIL_F_eq_N                                                                         |
      | N_5796_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_14                                                         |
      | N_5796_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_17                                                         |
      | N_5796_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_VFB                                                        |
      | N_5796_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_BLV                                                        |
      | N_5796_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_Overdraft                                                  |
      | N_5796_EML_ACCT_SUBSYS_ID_eq_BB_KS_SRC_SYS_PRD_CD_eq_17_BLV                                                  |
      | N_5796_EML_CURR_VAL_not_eq_1                                                                                 |
      | N_5796_EML_CURR_VAL_eq_NULL                                                                                  |
      | N_5796_EML_DO_NOT_SOLICIT_F_eq_Y                                                                             |
      | N_5796_EML_INSIGHT_CD_eq_FLG_SSM_ENROLL_CURR_VAL_eq_1_CURRENTDATE-EVENT_DATE_lt_45                           |
      | N_5796_EML_INSIGHT_CD_eq_FLG_SSM_ENROLL_CURR_VAL_eq_1_CURRENTDATE-EVENT_DATE_gt_365                          |
      | N_5796_EML_NSIGHT_CD_eq_FLG_SSM_LAST_CLICK                                                                   |
      | N_5796_EML_INSIGHT_CD_eq_FLG_SSM_LAST_CLICK_CURR_VAL_eq_1_CURRENTDATE-EVENT_DATE_lt_45                       |
      | N_5796_EML_INSIGHT_CD_eq_FLG_SSM_ENROLL_EVENT_DATE_gt_45_INSIGHT_CD_eq_FLG_SSM_LAST_CLICK_EVENT_DATE_gt_45   |
      | N_5796_EML_INSIGHT_CD_eq_FLG_SSM_ENROLL_EVENT_DATE_gt_45_INSIGHT_CD_eq_FLG_SSM_LAST_CLICK_EVENT_DATE_lt_45   |
      | N_5796_EML_INSIGHT_CD_eq_FLG_SSM_ENROLL_EVENT_DATE_gt_45_INSIGHT_CD_eq_FLG_SSM_LAST_CLICK_EVENT_DATE_eq_NULL |

