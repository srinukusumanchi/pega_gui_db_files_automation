Feature: Batch file validation for NTB_AdvicePlus 5822

  @NTB_AdvicePlus_Email_5822_Batch_BaseTCs_Validation
  Scenario Outline: NTB_AdvicePlus 5822_RS22111_EMAIL Validate batch file details against database and pega for Base test cases
    Given load data from "NTB_AdvicePlus_EML" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"

    And read "NTB_AdvicePlus" extract file with batch "CASL_CONSENT_F;" Email Specific Text Header

    Then Validate NTB_AdvicePlus offer details in batch file against database and pega
    Examples:
      | Test cases       |
      | 5822_EML_BASE_01 |
      | 5822_EML_BASE_02 |
      | 5822_EML_BASE_03 |
      | 5822_EML_BASE_04 |
      | 5822_EML_BASE_05 |
      | 5822_EML_BASE_06 |


  @NTB_AdvicePlus_Email_5822_Batch_PositiveTCs_Validation
  Scenario Outline: NTB_AdvicePlus 5822_RS22111_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "NTB_AdvicePlus_EML" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"

    And read "NTB_AdvicePlus" extract file with batch "CASL_CONSENT_F;" Email Specific Text Header

    Then Validate NTB_AdvicePlus offer details in batch file against database and pega
    Examples:
      | Test cases                                                    |
      | 5822_EML_LANG_CD_eq_fr                                                                                                                      |
      | 5822_EML_CUST_AGE_eq_18                                                                                                                     |
      | 5822_EML_CUST_OPND_DT_eq_120                                                                                                                |
      | 5822_EML_ARRV_DT_eq_1095 days                                                                                                               |
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
      | 5822_EML_MCB_IND_ne_Y                                                                                                                       |
      | 5822_EML_MCB_IND_eq_NULL                                                                                                                    |
      | 5822_EML_ARRV_DT_gt_1095 days                                                                                                               |
      | 5822_EML_ARRV_DT_eq_NULL                                                                                                                    |

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


# Prioritization Scenarios added for April 27th 2023 Release
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
