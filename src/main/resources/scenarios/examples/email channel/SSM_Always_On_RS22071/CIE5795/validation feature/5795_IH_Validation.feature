Feature: IH Validation for SSM Always On Welcome_5795

  @SSM_Welcome_Email_5795_IH_PositiveTCs_Validation
  Scenario Outline: SSM Always On Welcome 5795_RS22071_EMAIL Validate IH details against database and pega for Positive test cases
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


  @SSM_Welcome_Email_5795_IH_NegativeTCs_Validation
  Scenario Outline: SSM Always On Welcome 5795_RS22071_EMAIL Validate IH details against database and pega for Negative test cases
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
      | Test cases                                                  |
      | N_5795_EML_ DECEASED_F_eq_Y                                 |
      | N_5795_EML_ DECEASED_F_eq_NULL                              |
      | N_5795_EML_CUST_TP_CD_not_PSNL                              |
      | N_5795_EML_CUST_TP_CD_eq_NULL                               |
      | N_5795_EML_Lang_CD_eq_bn                                    |
      | N_5795_EML_Lang_CD_eq_NULL                                  |
      | N_5795_EML_CUST_AGE_lt_18                                   |
      | N_5795_EML_CUST_AGE_eq_NULL                                 |
      | N_5795_EML_PRIM_CNTRY_CD_eq_MA                              |
      | N_5795_EML_PRIM_CNTRY_CD_eq_NULL                            |
      | N_5795_EML_MRKTBLE_F_eq_N                                   |
      | N_5795_EML_MRKTBLE_F_eq_NULL                                |
      | N_5795_EML_NOT_AML_KYC_eq_Y                                 |
      | N_5795_EML_DEDICATED_INVSTMNT_ADVISOR_F_Y                   |
      | N_5795_EML_VLD_EMAIL_eq_N                                   |
      | N_5795_EML_VLD_EMAIL_eq_NULL                                |
      | N_5795_EML_PRIM_EMAIL_ADDR_eq_NULL                          |
      | N_5795_INDV_FRST_NM_eq_NULL                                 |
      | N_5795_INDV_LAST_NM_eq_NULL                                 |
      | N_5795_DO_NOT_EMAIL_F_eq_Y                                  |
      | N_5795_DO_NOT_EMAIL_F_eq_NULL                               |
      | N_5795_MK_BK_INFO_ACCTS_EMAIL_F_eq_N                        |
      | N_5795_MK_BK_INFO_ACCTS_EMAIL_F_gt_7                        |
      | N_5795_MK_BK_INFO_ACCTS_EMAIL_F_eq_NULL                     |
      | N_5795_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_14        |
      | N_5795_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_17        |
      | N_5795_EML_ACCT_SUBSYS_ID_eq_KS_SRC_SYS_PRD_CD_eq_VFB       |
      | N_5795_EML_ACCT_SUBSYS_ID_eq_KS_SRC_SYS_PRD_CD_eq_BLV       |
      | N_5795_EML_ACCT_SUBSYS_ID_eq_KS_SRC_SYS_PRD_CD_eq_Overdraft |
      | N_5795_EML_INSIGHT_CD_eq_FLG_SSM_ENROLL_CURR_VAL_not_eq_1   |
      | N_5795_EML__INSIGHT_CD_eq_FLG_SSM_ENROLL_CURR_VAL_eq_NULL   |
      | N_5795_EML_INSIGHT_CD_eq_FLG_SSM_RS20051_CURR_VAL_eq_1      |
      | N_5795_EML_ACCT_SUBSYS_ID_eq_BB_KS_SRC_SYS_PRD_CD_eq_17_BLV |
      | N_5795_DO_NOT_SOLICIT_F_eq_Y                                |

