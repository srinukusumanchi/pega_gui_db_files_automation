Feature: Batch file validation for SSM Always On Welcome 5795


  @SSMAlwaysOnWelcome_Email_5795_Batch_PositiveTCs_Validation
  Scenario Outline: SSM Always On Welcome 5795_RS22071_EMAIL Validate batch file details against database and pega for Positive test cases
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
      | Test cases                                                                   |
      | 5795_EML_BASE_01                                                             |
      | 5795_EML_Seg_01_LANG_CD_eq_fr                                                |
      | 5795_EML_CUST_AGE_eq_18                                                      |
      | 5795_EML_Seg_02_NOT_AML_KYC_eq_NULL                                          |
      | 5795_EML_DEDICATED_INVSTMNT_ADVISOR_F_NULL                                   |
      | 5795_EML_MK_BK_INFO_ACCTS_EMAIL_F_eq_NULL                                    |
      | 5795_EML_DO_NOT_SOLICIT_F_eq_NULL                                            |
      | 5795_EML_ACCT_SUBSYS_ID_eq_KS_SRC_SYS_PRD_CD_eq_AXG_SRC_SYS_SUB_PRD_CD_eq_GC |
      | 5795_EML_ACCT_SUBSYS_ID_eq_BB_KS_SRC_SYS_PRD_CD_eq_01_VFB                    |
      | 5795_EML_ACCT_SUBSYS_ID_eq_BB_KS_SRC_SYS_PRD_CD_eq_14_AXG                    |
      | 5795_EML_Event_Date_eq_7Days                                                 |
      | 5795_EML_Event_Date_eq_0Days                                                 |
      | 5795_EML_CURR_VAL_not_eq_1_where_INSIGHT_CD_eq_FLG_SSM_RS20051               |
      | 5795_EML_CURR_VAL_eq_NULL__where_INSIGHT_CD_eq_FLG_SSM_RS20051               |
