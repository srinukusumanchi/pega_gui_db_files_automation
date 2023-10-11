@Xsell_Reminder_Offer_EML_6214_IHValidation
Feature: Validation for 6214 Xsell Reminder Offer in EML Channel

  @Xsell_Reminder_Offer_EML_IH_Base_Validation_6214 @6214 @EML @RS23148
  Scenario Outline: NP D2D Bundle Xsell Reminder Offer 6214 RS23148 Validate IH details against database and pega for Base Line test cases for EML Channel
    Given load data from "XsellReminder_EML_6214" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then validate Xsell Reminder Offer details against IH for "EML" Channel with "Outbound" Direction having "IPT" Outcome

    Examples:
      | Test cases           |
      | 6214_EML_BASE_Seg_01 |
      | 6214_EML_BASE_Seg_02 |
      | 6214_EML_BASE_Seg_03 |

  @Xsell_Reminder_Offer_EML_IH_Positive_Validation_6214 @6214 @EML @RS23148
  Scenario Outline: NP D2D Bundle Xsell Reminder Offer 6214 RS23148 Validate IH details against database and pega for Positive Line test cases for EML Channel
    Given load data from "XsellReminder_EML_6214" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then validate Xsell Reminder Offer details against IH for "EML" Channel with "Outbound" Direction having "IPT" Outcome

    Examples:
      | Test cases                                                                                          |
      | 6214_EML_Seg_01_FICO_SCORE_eq_700                                                                   |
      | 6214_EML_Seg_02_FICO_SCORE_eq_700                                                                   |
      | 6214_EML_Seg_03_FICO_SCORE_eq_700                                                                   |
      | 6214_EML_Seg_01_FICO_SCORE_gt_700                                                                   |
      | 6214_EML_Seg_02_FICO_SCORE_gt_700                                                                   |
      | 6214_EML_Seg_03_FICO_SCORE_gt_700                                                                   |
      | 6214_EML_Seg_01_CUST_AGE_gt_18                                                                      |
      | 6214_EML_Seg_02_CUST_AGE_eq_65                                                                      |
      | 6214_EML_Seg_03_EMPLOYEE_STAFF_F_eq_NULL                                                            |
      | 6214_EML_Seg_01_NOT_AML_KYC_eq_NULL                                                                 |
      | 6214_EML_Seg_02_PRIM_PROV_CD_eq_NULL                                                                |
      | 6214_EML_Seg_03_PHYSICIANS_F_eq_NULL                                                                |
      | 6214_EML_Seg_01_HARDBOUNCE_EMAIL_F_eq_NULL                                                          |
      | 6214_EML_Seg_02_MK_BK_INFO_ACCTS_EMAIL_F_eq_NULL                                                    |
      | 6214_EML_Seg_03_CRNT_BAL_AMT_eq_100                                                                 |
      | 6214_EML_Seg_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_DM                                      |
      | 6214_EML_Seg_01_SRC_SYS_PRD_CD_eq_VFF_SRC_SYS_SUB_PRD_CD_eq_TR                                      |
      | 6214_EML_Seg_01_SRC_SYS_PRD_CD_eq_VLR_SRC_SYS_SUB_PRD_CD_eq_RG                                      |
      | 6214_EML_Seg_03_SRC_SYS_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_03                                           |
      | 6214_EML_Seg_03_SRC_SYS_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_07                                           |
      | 6214_EML_Seg_03_SRC_SYS_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_08                                           |
      | 6214_EML_Seg_03_SRC_SYS_PRD_CD_eq_23_SRC_SUB_PRD_CD_eq_01                                           |
      | 6214_EML_Seg_03_SRC_SYS_PRD_CD_eq_23_SRC_SUB_PRD_CD_eq_03                                           |
      | 6214_EML_Seg_03_Scotia Acct_Ultimate Acct                                                           |
      | 6214_EML_Seg_03_Ultimate Acct_Ultimate Acct                                                         |
      #Positive Exclusion Scenarios
      | 6214_EML_Seg_01_ACCT_SUBSYS_ID_ne_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_lt_120 |
      | 6214_EML_Seg_02_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_ne_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_lt_120 |
      | 6214_EML_Seg_03_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_ne_9_ACCT_ODT_lt_120 |
      | 6214_EML_Seg_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_gt_120 |
      | 6214_EML_Seg_02_MCB_IND_ne_Y_ARRV_DT_eq_1400                                                        |
      | 6214_EML_Seg_03_MCB_IND_eq_Y_ARRV_DT_eq_2000                                                        |


  @Xsell_Reminder_Offer_EML_IH_Negative_Validation_6214 @6214 @EML @RS23148
  Scenario Outline: NP D2D Bundle Xsell Reminder Offer 6214 RS23148 Validate IH details against database and pega for Negative Line test cases for EML Channel
    Given load data from "XsellReminder_EML_6214" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then verify using IH API that offer is not returned for "EML" channel

    Examples:
      | Test cases                                                                                            |
      | N-6214_EML_Seg_03_DECEASED_F _eq_Y                                                                    |
      | N-6214_EML_Seg_03_DECEASED_F _eq_NULL                                                                 |
      | N-6214_EML_Seg_03_CUST_TP_CD_eq_ABCD                                                                  |
      | N-6214_EML_Seg_03_CUST_TP_CD_eq_NULL                                                                  |
      | N-6214_EML_Seg_03_PRIM_CNTRY_CD_ne_CA                                                                 |
      | N-6214_EML_Seg_03_PRIM_CNTRY_CD_eq_NULL                                                               |
      | N-6214_EML_Seg_03_CUST_AGE_lt_18                                                                      |
      | N-6214_EML_Seg_03_CUST_AGE_gt_65                                                                      |
      | N-6214_EML_Seg_03_LANG_CD_ne_en                                                                       |
      | N-6214_EML_Seg_03_LANG_CD_eq_NULL                                                                     |
      | N-6214_EML_Seg_03_EMPLOYEE_STAFF_F_eq_Y                                                               |
      | N-6214_EML_Seg_03_MRKTBLE_F_ne_Y                                                                      |
      | N-6214_EML_Seg_03_MRKTBLE_F_eq_NULL                                                                   |
      | N-6214_EML_Seg_03_NOT_AML_KYC_eq_Y                                                                    |
      | N-6214_EML_Seg_03_CC_VIP_IND_eq_2                                                                     |
      | N-6214_EML_Seg_03_CC_VIP_IND_eq_9                                                                     |
      | N-6214_EML_Seg_03_PRIM_PROV_CD_eq_QC                                                                  |
      | N-6214_EML_Seg_03_PHYSICIANS_F_eq_Y                                                                   |
      | N-6214_EML_Seg_03_PRIM_EMAIL_ADDR_eq_NULL                                                             |
      | N-6214_EML_Seg_03_INDV_FRST_NM_eq_NULL                                                                |
      | N-6214_EML_Seg_03_INDV_LAST_NM _eq_NULL                                                               |
      | N-6214_EML_Seg_03_DO_NOT_EMAIL_F_eq_Y                                                                 |
      | N-6214_EML_Seg_03_DO_NOT_EMAIL_F_eq_NULL                                                              |
      | N-6214_EML_Seg_03_HARDBOUNCE_EMAIL_F_eq_Y                                                             |
      | N-6214_EML_Seg_03_VLD_EMAIL_F_eq_N                                                                    |
      | N-6214_EML_Seg_03_VLD_EMAIL_F_eq_NULL                                                                 |
      | N-6214_EML_Seg_03_MK_BK_INFO_ACCTS_EMAIL_F_eq_N                                                       |
      | N-6214_EML_Seg_03_SRC_ACCT_STAT_CD_ne_A                                                               |
      | N-6214_EML_Seg_03_SRC_ACCT_STAT_CD_eq_NULL                                                            |
      | N-6214_EML_Seg_03_ACCT_ODT_lt_90                                                                      |
      | N-6214_EML_Seg_03_ACCT_ODT_eq_NULL                                                                    |
      | N-6214_EML_Seg_03_CRNT_BAL_AMT_lt_100                                                                 |
      | N-6214_EML_Seg_03_CRNT_BAL_AMT_eq_NULL                                                                |
      | N-6214_EML_Seg_03_ACCT_SUBSYS_ID_ne_BB                                                                |
      #Exclusion Scenarios
      | N-6214_EML_Seg_03_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_lt_120 |
      | N-6214_EML_Seg_03_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_120 |
      | N-6214_EML_Seg_03_MCB_IND_eq_Y_ARRV_DT_eq_1400                                                        |
