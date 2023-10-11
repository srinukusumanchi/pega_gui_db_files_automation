Feature: IH Validation for NTB_AdvicePlus_5822

  @NTB_AdvicePlus_Email_5822_IH_Base_TCs_Validation
  Scenario Outline: NTB_AdvicePlus 5822_RS22111_EMAIL Validate IH details against database and pega for Base test cases
    Given load data from "NTB_AdvicePlus_EML" excel sheet

    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"

    Then validate NTB_AdvicePlus offer details against IH
    Examples:
      | Test cases       |
      | 5822_EML_BASE_01 |
      | 5822_EML_BASE_02 |
      | 5822_EML_BASE_03 |
      | 5822_EML_BASE_04 |
      | 5822_EML_BASE_05 |
      | 5822_EML_BASE_06 |


  @NTB_AdvicePlus_Email_5822_IH_Positive_TCs_Validation
  Scenario Outline: NTB_AdvicePlus 5822_RS22111_EMAIL Validate IH details against database and pega for Positive test cases
    Given load data from "NTB_AdvicePlus_EML" excel sheet

    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"

    Then validate NTB_AdvicePlus offer details against IH
    Examples:
      | Test cases                                                    |
      | 5822_EML_LANG_CD_eq_fr                                                                                                                      |
      | 5822_EML_CUST_AGE_eq_18                                                                                                                     |
      | 5822_EML_CUST_OPND_DT_eq_120                                                                                                                |
      | 5822_EML_ARRV_DT_eq_1825_days |
      | 5822_EML_DO_NOT_SOLICIT_F_eq_NULL                                                                                                           |
      | 5822_EML_NOT_AML_KYC_eq_NULL                                                                                                                |
      | 5822_EML_UNSUBSCRIBED_F_eq_NULL                                                                                                             |
      | 5822_EML_HARDBOUNCE_EMAIL_F_eq_NULL                                                                                                         |
      | 5822_EML_MK_NEWSLETTERS_EMAIL_F_eq_NULL                                                                                                     |
      | 5822_EML_ACCT_ODT_eq_50                                                                                                                     |
      | 5822_EML_ACCT_ODT_eq_51                                                                                                                     |
      | 5822_EML_ACCT_ODT_eq_59                                                                                                                     |
      | 5822_EML_ACCT_ODT_eq_60                                                                                                                     |
      | 5822_EML_PROD_HIER_LEVEL_3_eq_Credit_Cards                                                                                                  |
      | 5822_EML_PROD_HIER_LEVEL_3_eq_High_Interest_Savings_Accounts                                                                                |
      | 5822_EML_PROD_HIER_LEVEL_3_eq_Cash_Term_Deposit                                                                                             |
      | 5822_EML_PROD_HIER_LEVEL_3_eq_Cash_Demand_Deposit                                                                                           |
      | 5822_EML_PROD_HIER_LEVEL_3_eq_Unsecured_Lending                                                                                             |
      | 5822_EML_PROD_HIER_LEVEL_3_eq_Secure_Lines_Of_Credit                                                                                        |
      | 5822_EML_MCB_IND_ne_Y         |
      | 5822_EML_MCB_IND_eq_NULL      |
      | 5822_EML_ARRV_DT_gt_1825_days |
      | 5822_EML_ARRV_DT_gt_1826_days |
      | 5822_EML_ARRV_DT_eq_NULL      |

      | 5822_EML_ACCT_SUBSYS_ID_eq_KS_PROD_HIER_LEVEL_3_eq_CC_CTD_UL_SRC_ACCT_STAT_CD_eq_A_PRIMARY_ACCT_HOLDER_FLAG_ne_Y_Lending_Investing_Loans    |
      | 5822_EML_ACCT_SUBSYS_ID_eq_KS_PROD_HIER_LEVEL_3_eq_CC_CTD_UL_SRC_ACCT_STAT_CD_ne_A_PRIMARY_ACCT_HOLDER_FLAG_eq_Y_Lending_Investing_Loans    |
      | 5822_EML_ACCT_SUBSYS_ID_eq_KS_PROD_HIER_LEVEL_3_eq_CC_CTD_UL_SRC_ACCT_STAT_CD_eq_A_PRIMARY_ACCT_HOLDER_FLAG_eq_NULL_Lending_Investing_Loans |
      | 5822_EML_ACCT_SUBSYS_ID_ne_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_lt_180days_AFIL                                      |
      | 5822_EML_ACCT_SUBSYS_ID_eq_NULL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_lt_180days_AFIL                                    |
      | 5822_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_ne_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_lt_180days_AFIL                                      |
      | 5822_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_NULL_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_lt_180days_AFIL                                        |
      | 5822_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_ne_09_ACCT_ODT_lt_180days_AFIL                                      |
      | 5822_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_NULL_ACCT_ODT_lt_180days_AFIL                                    |
      | 5822_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_gt_180days_AFIL                                      |
      | 5822_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_eq_NULL_AFIL                                         |

## Positive Scenarios added for Aug 31st 2023 Release
      | 5822_EML_Seg_05_SRC_SYS_PRD_CD_eq_07_SRC_SYS_SUB_PRD_CD_eq_12 |
      | 5822_EML_Seg_06_SRC_SYS_PRD_CD_eq_07_SRC_SYS_SUB_PRD_CD_eq_12 |

## Prioritization Scenarios added for April 27th and Aug 31st 2023 Release
      | 5822_EML_Seg_02_SEGMENT_eq_Early_Career_with_NTC              |
      | 5822_EML_Seg_02_SEGMENT_eq_HENRY_with_NTC                     |
      | 5822_EML_Seg_03_SEGMENT_eq_Early_Career_without_NTC           |
      | 5822_EML_Seg_04_SEGMENT_eq_HENRY_without_NTC                  |
      | 5822_EML_Seg_01_SEGMENT_eq_NULL_without_NTC                   |
      | 5822_EML_Seg_05_SEGMENT_eq_Early-Career                       |
      | 5822_EML_Seg_05_SEGMENT_eq_HENRY                              |
      | 5822_EML_Seg_05_with_2_BB_Accounts                            |
      | 5822_EML_Seg_05_with_2_BB_Accounts_SEGMENT_eq_Early-Career    |
      | 5822_EML_Seg_05_with_2_BB_Accounts_SEGMENT_eq_HENRY           |


  @NTB_AdvicePlus_Email_5822_IH_NegativeTCs_Validation
  Scenario Outline: NTB_AdvicePlus 5822_RS22111_EMAIL Validate IH details against database and pega for Negative test cases
    Given load data from "NTB_AdvicePlus_EML" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"

    Then verify offer should not display
    Examples:
      | Test cases |
      | N_5822_EML_DECEASED_F_eq_Y                                                                                                                 |
      | N_5822_EML_DECEASED_F_eq_Null                                                                                                              |
      | N_5822_EML_CUST_TP_CD_ne_PSNL                                                                                                              |
      | N_5822_EML_CUST_TP_CD_eq_NULL                                                                                                              |
      | N_5822_EML_PRIM_CNTRY_CD_ne_CA                                                                                                             |
      | N_5822_EML_PRIM_CNTRY_CD_eq_NULL                                                                                                           |
      | N_5822_EML_CUST_AGE_lt_18                                                                                                                  |
      | N_5822_EML_CUST_AGE_eq_NULL                                                                                                                |
      | N_5822_EML_LANG_CD_eq_bn                                                                                                                   |
      | N_5822_EML_Lang_CD_eq_NULL                                                                                                                 |
      | N_5822_EML_DO_NOT_SOLICIT_F_eq_Y                                                                                                           |
      | N_5822_EML_NOT_AML_KYC_eq_Y                                                                                                                |
      | N_5822_EML_CUST_OPND_DT_gt_120_days                                                                                                        |
      | N_5822_EML_CUST_OPND_DT_eq_NULL                                                                                                            |
      | N_5822_EML_ASSIGNED_FA_TRANSIT_ne_NULL                                                                                                     |
      | N_5822_EML_MAPP_TMRRW_LAST_SESS_DT_ne_NULL                                                                                                 |
      | N_5822_EML_VLD_EMAIL_F_ne_Y                                                                                                                |
      | N_5822_EML_VLD_EMAIL_F_eq_NULL                                                                                                             |
      | N_5822_EML_PRIM_EMAIL_ADDR_eq_NULL                                                                                                         |
      | N_5822_EML_INDV_FRST_NM_eq_NULL                                                                                                            |
      | N_5822_EML_UNSUBSCRIBED_F_eq_Y                                                                                                             |
      | N_5822_EML_HARDBOUNCE_EMAIL_F_eq_Y                                                                                                         |
      | N_5822_EML_DO_NOT_EMAIL_F_ne_N                                                                                                             |
      | N_5822_EML_DO_NOT_EMAIL_F_eq_NULL                                                                                                          |
      | N_5822_EML_CASL_CONSENT_F_ne_Y                                                                                                             |
      | N_5822_EML_CASL_CONSENT_F_eq_NULL                                                                                                          |
      | N_5822_EML_MK_NEWSLETTERS_EMAIL_F_eq_N                                                                                                     |
      | N_5822_EML_ACCT_ODT_eq_49                                                                                                                  |
      | N_5822_EML_ACCT_ODT_eq_61                                                                                                                  |
      | N_5822_EML_ACCT_ODT_eq_NULL                                                                                                                |
      | N_5822_EML_ACCT_SUBSYS_ID_eq_KS_PROD_HIER_LEVEL_3_eq_CC_CTD_UL_SRC_ACCT_STAT_CD_eq_A_PRIMARY_ACCT_HOLDER_FLAG_eq_Y_Lending_Investing_Loans |
      | N_5822_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_lt_180days_AFIL                                   |
      | N_5822_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_eq_180days_AFIL                                   |

