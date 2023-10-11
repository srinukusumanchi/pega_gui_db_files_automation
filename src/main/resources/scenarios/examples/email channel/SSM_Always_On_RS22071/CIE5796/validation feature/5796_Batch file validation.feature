Feature: Batch file validation for SSM Always On Engagement 5796


  @SSMAlwaysOnEngagement_Email_5796_Batch_PositiveTCs_Validation
  Scenario Outline: SSM Always On Engagement 5796_RS22071_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "SSM_AlwaysOn_EML" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "SSM" extract file with batch "" Email Specific Text Header
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then Validate SSM Always On offer details in batch file against database and pega
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
