@Xsell_Sneak_Peak_Offer_EML_6185_Batch_File_Validation
Feature: Validation for 6185 Xsell Sneak Peak Offer in EML Channel Batch File Validation


  @Xsell_Sneak_Peak_Offer_EML @Xsell_Sneak_Peak_Offer_EML_EML_Batch_File_Base_Validation_6185 @6185 @EML @RS23147
  Scenario Outline: NP D2D Bundle Xsell Sneak Peak Offer 6185 RS23147 Validate Batch File against database and pega for Base Line test cases
    Given load data from "XsellSneakPeak_EML_6185_6186_6187_6188" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "XsellSneakPeakOffer_EML_Batch" extract file with batch "ProductCode;SubProductCode;CampaignNumber;CreditLimit;PAIndicator;PrioritySegment;BundleUpToValue;SavingCalculator;" Email Specific Text Header
    Then Validate Xsell Sneak Peak Offer details in batch file against database and pega
    Examples:
      | Test cases                |
      | 6185_EML_BASE_Creative_01 |
      | 6186_EML_BASE_Creative_01 |
      | 6187_EML_BASE_Creative_01 |
      | 6188_EML_BASE_Creative_01 |

  @Xsell_Sneak_Peak_Offer_EML @Xsell_Sneak_Peak_Offer_EML_EML_Batch_File_Positive_Validation_6185 @6185 @EML @RS23147
  Scenario Outline: NP D2D Bundle Xsell Sneak Peak Offer 6185 RS23147 Validate Batch File against database and pega for Positive Line test cases
    Given load data from "XsellSneakPeak_EML_6185_6186_6187_6188" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "XsellSneakPeakOffer_EML_Batch" extract file with batch "ProductCode;SubProductCode;CampaignNumber;CreditLimit;PAIndicator;PrioritySegment;BundleUpToValue;SavingCalculator;" Email Specific Text Header
    Then Validate Xsell Sneak Peak Offer details in batch file against database and pega
    Examples:
      | Test cases                                                      |
      | 6185_EML_Seg_01_EMPLOYEE_STAFF_F_eq_NULL                                                            |
      | 6185_EML_Seg_01_NOT_AML_KYC_eq_NULL                                                                 |
      | 6185_EML_Seg_01_CC_VIP_IND_eq_NULL                                                                  |
      | 6185_EML_Seg_01_HARDBOUNCE_EMAIL_F_eq_NULL                                                          |
      | 6185_EML_Seg_01_MK_BK_INFO_ACCTS_EMAIL_F _eq_NULL                                                   |
      | 6185_EML_Seg_01_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_03                                               |
      | 6185_EML_Seg_01_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_07                                               |
      | 6185_EML_Seg_01_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_08                                               |
      | 6185_EML_Seg_01_SRC_PRD_CD_eq_23_SRC_SUB_PRD_CD_eq_01                                               |
      | 6185_EML_Seg_01_SRC_PRD_CD_eq_23_SRC_SUB_PRD_CD_eq_03                                               |
      | 6185_EML_Seg_01_CUST_AGE_eq_65                                                                      |
      | 6185_EML_Seg_01_CUST_AGE_gt_18                                                                      |
      | 6185_EML_Seg_01_PRIM_PROV_CD_eq_NULL                                                                |
      | 6110_EML_Seg_01_ExtTable_VALID_START_DATE_lt_Curr_Dt                                                |
      | 6110_EML_Seg_01_ExtTable_VALID_START_DATE_eq_Curr_Dt                                                |
      | 6110_EML_Seg_01_ExtTable_VALID_END_DATE_eq_Curr_Dt                                                  |
      | 6110_EML_Seg_01_ExtTable_VALID_END_DATE_lt_Curr_Dt                                                  |
      | 6185_EML_Seg_01_Scotia_Ultimate_ACCT_SUBSYS_ID_eq_BB                                                |
      | 6185_EML_Seg_01_Ultimate_ACCT_SUBSYS_ID_eq_BB                                                       |
      | 6185_EML_Seg_01_Scotia_ACCT_SUBSYS_ID_eq_BB                                                         |
      | 6185_EML_Seg_01_NPACC_FICO_SCORE_gt_700                                                             |
      | 6185_EML_Seg_01_NPACC_FICO_SCORE_eq_700                                                             |
      | 6185_EML_Seg_01_ACCT_ODT_gt_90                                                                      |
      | 6185_EML_Seg_01_CRNT_BAL_AMT_gt_100                                                                 |
      | 6185_EML_Seg_01_CRNT_BAL_AMT_eq_100                                                                 |
      | 6185_EML_Seg_01_Scotia_Ultimate_invalid_ACCT_SUBSYS_ID_eq_BB                                        |
      | 6185_EML_Seg_01_PHYSICIANS_F_eq_ NULL                                                               |
      #Positive Exclusion scenarios
      | 6185_EML_Seg_01_Investment_CC_SRC_ACCT_STAT_CD_ne_Active                                            |
      | 6185_EML_Seg_01_Investment_CC_PLN_ACCT_CD_MASTER_ne_RESP                                            |
      | 6185_EML_Seg_01_Investment_CC_ACCT_SUBSYS_ID_ne_UF                                                  |
      | 6185_EML_Seg_01_CC_Investment_PROD_HIER_LEVEL_3_ne_Credit Cards                                     |
      | 6185_EML_Seg_01_Investment_MPSA_SRC_ACCT_STAT_CD_ne_Active                                          |
      | 6185_EML_Seg_01_Investment_MPSA_PLN_ACCT_CD_MASTER_ne_RESP                                          |
      | 6185_EML_Seg_01_Investment_MPSA_ACCT_SUBSYS_ID_ne_UF                                                |
      | 6185_EML_Seg_01_CC_MSPA_PROD_HIER_LEVEL_3_ne_Credit Cards                                           |
      | 6185_EML_Seg_01_MCB_IND_eq_N_ARRV_DT_eg_1000                                                        |
      | 6185_EML_Seg_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_gt_120 |
      | 6185_EML_Seg_01_ACCT_SUBSYS_ID_ne_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_120 |
      | 6185_EML_Seg_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_ne_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_120 |
      | 6185_EML_Seg_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_ne_9_ACCT_ODT_eq_120 |
