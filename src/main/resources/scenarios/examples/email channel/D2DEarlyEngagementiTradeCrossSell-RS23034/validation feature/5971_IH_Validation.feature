@5971_IHValidation
Feature: IH Validation for D2D Early Engagement iTrade Cross Sell


  @D2DEarlyEngagementiTradeCrossSell @D2DiTradeCrossSell_EML_IH_Base_Validation_5971 @5971 @EMAIL @RS23034
  Scenario Outline: D2DEarlyEngagementiTradeCrossSell_RS23034_5971_EMAIL Validate D2DEarlyEngagementiTradeCrossSell offer details against IH for Base test cases
    Given load data from "D2Ditrade_EML" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then validate D2D iTrade offer details against IH
    Examples:
      | Test cases       |
      | 5971_EML_BASE_01 |
      | 5971_EML_BASE_02 |
## Added for May 11 2023 REL
      | 5971_EML_BASE_03 |

  @D2DEarlyEngagementiTradeCrossSell @D2DEarlyEngagementiTradeCrossSell_Positive_Validation @5971 @EMAIL @RS23034
  Scenario Outline: D2DEarlyEngagementiTradeCrossSell_RS23034_5971_EMAIL Validate D2DEarlyEngagementiTradeCrossSell offer details against IH for Positive test cases
    Given load data from "D2Ditrade_EML" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then validate D2D iTrade offer details against IH
    Examples:
      | Test cases                                                                                                        |
      | 5971_EML_LANG_CD_eq_fr                                                                                            |
      | 5971_EML_DO_NOT_SOLICIT_F_eq_NULL                                                                                 |
      | 5971_EML_NOT_AML_KYC_eq_NULL                                                                                      |
      | 5971_EML_CUST_AGE_eq_18                                                                                           |
      | 5971_EML_IMMGRTN_CAT_CD_ne_S00                                                                                    |
      | 5971_EML_MK_BK_INFO_ACCTS_EMAIL_F_eq_NULL                                                                         |
      | 5971_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_03                                       |
      | 5971_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_07                                       |
      | 5971_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_08                                       |
      | 5971_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_07_SRC_SYS_SUB_PRD_CD_eq_12                                       |
      | 5971_EML_ACCT_ODT_eq_27days                                                                                       |
      | 5971_EML_ACCT_ODT_eq_30days                                                                                       |
## Added for May 11 2023 REL
      | 5971_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_02                                       |
   ##Exclusion positive
      | 5971_EML_ACCT_SUBSYS_ID_ne_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_lt_180days_AFIL            |
      | 5971_EML_ACCT_SUBSYS_ID_eq_NULL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_lt_180days_AFIL          |
      | 5971_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_ne_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_lt_180days_AFIL            |
      | 5971_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_NULL_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_lt_180days_AFIL              |
      | 5971_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_ne_09_ACCT_ODT_lt_180days_AFIL            |
      | 5971_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_NULL_ACCT_ODT_lt_180days_AFIL          |
      | 5971_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_gt_180days_AFIL            |
      | 5971_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_eq_NULL_AFIL               |

  #Prioritization Scenarios
      | 5971_EML_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_03_SRC_SYS_PRD_CD_eq_07_SRC_SYS_SUB_PRD_CD_eq_11_BB           |
      | 5971_EML_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_03_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_07_BB           |
      | 5971_EML_SRC_SYS_PRD_CD_eq_07_SRC_SYS_SUB_PRD_CD_eq_11_SRC_SYS_PRD_CD_eq_07_SRC_SYS_SUB_PRD_CD_eq_12_BB           |
## Added for May 11 2023 REL
      | 5971_EML_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_03_SRC_SYS_PRD_CD_eq_07_SRC_SYS_SUB_PRD_CD_eq_11_AND_23_01_BB |
      | 5971_EML_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_03_SRC_SYS_PRD_CD_eq_07_SRC_SYS_SUB_PRD_CD_eq_12_BB           |


  @D2DEarlyEngagementiTradeCrossSell @D2DEarlyEngagementiTradeCrossSell_Negative_Validation @5971 @EMAIL @RS23034
  Scenario Outline: D2DEarlyEngagementiTradeCrossSell_RS23034_5971_EMAIL Validate D2DEarlyEngagementiTradeCrossSell offer details against IH for Negative test cases
    Given load data from "D2Ditrade_EML" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then verify using IH API that offer is not returned

    Examples:
      | Test cases                                                                      |
      | N_5971_EML_DECEASED_F_eq_Y                                                                               |
      | N_5971_EML_DECEASED_F_eq_NULL                                                                            |
      | N_5971_EML_PRIM_CNTRY_CD_ne_CA                                                                           |
      | N_5971_EML_PRIM_CNTRY_CD_eq_NULL                                                                         |
      | N_5971_EML_CUST_TP_CD_ne_PSNL                                                                            |
      | N_5971_EML_LANG_CD_ne_en                                                                                 |
      | N_5971_EML_LANG_CD_ne_fr                                                                                 |
      | N_5971_EML_LANG_CD_eq_NULL                                                                               |
      | N_5971_EML_DO_NOT_SOLICIT_F_eq_Y                                                                         |
      | N_5971_EML_NOT_AML_KYC_eq_Y                                                                              |
      | N_5971_EML_CUST_AGE_lt_18                                                                                |
      | N_5971_EML_CUST_AGE_eq_NULL                                                                              |
      | N_5971_EML_ITRADE_MCLEOD_F_eq_Y                                                                          |
      | N_5971_EML_ITRADE_MCLEOD_F_eq_NULL                                                                       |
      | N_5971_EML_IMMGRTN_CAT_CD_eq_S                                                                           |
      | N_5971_EML_IMMGRTN_CAT_CD_eq_S00                                                                         |
      | N_5971_EML_DO_NOT_EMAIL_F_eq_Y                                                                           |
      | N_5971_EML_DO_NOT_EMAIL_F_eq_NULL                                                                        |
      | N_5971_EML_VLD_EMAIL_F_eq_N                                                                              |
      | N_5971_EML_VLD_EMAIL_F_eq_NULL                                                                           |
      | N_5971_EML_PRIM_EMAIL_ADDR_eq_NULL                                                                       |
      | N_5971_EML_INDV_FRST_NM_eq_NULL                                                                          |
      | N_5971_EML_INDV_LAST_NM_eq_NULL                                                                          |
      | N_5971_EML_MK_BK_INFO_ACCTS_EMAIL_F_eq_N                                                                 |
      | N_5971_EML_ACCT_SUBSYS_ID_ne_BB                                                                          |
      | N_5971_EML_ACCT_SUBSYS_ID_eq_NULL                                                                        |
      | N_5971_EML_SRC_ACCT_STAT_CD_ne_A                                                                         |
      | N_5971_EML_SRC_ACCT_STAT_CD_eq_NULL                                                                      |
      | N_5971_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_02                            |
      | N_5971_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_NULL                          |
      | N_5971_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_07_SRC_SYS_SUB_PRD_CD_eq_02                            |
      | N_5971_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_NULL_SRC_SYS_SUB_PRD_CD_eq_02                          |
      | N_5971_EML_PRIMARY_ACCT_HOLDER_FLAG_eq_N                                                                 |
      | N_5971_EML_PRIMARY_ACCT_HOLDER_FLAG_eq_NULL                                                              |
      | N_5971_EML_ACCT_ODT_lt_27days                                                                            |
      | N_5971_EML_ACCT_ODT_gt_30days                                                                            |
      | N_5971_EML_ACCT_ODT_eq_NULL                                                                              |
## Added for May 11 2023 REL
      | N_5971_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_02   |
      | N_5971_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_NULL |

#                     ##Exclusion Negative
      | N_5971_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_lt_180days_AFIL |
      | N_5971_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_eq_180days_AFIL |

