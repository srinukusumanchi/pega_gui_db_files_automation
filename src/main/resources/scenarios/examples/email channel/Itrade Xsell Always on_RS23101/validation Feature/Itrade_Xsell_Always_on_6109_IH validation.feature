@Itrade_Xsell_Always_on_EML_6109_IHValidation
Feature: Validation for 6109 Itrade Xsell Always on in EML Channel

  @Itrade_Xsell_Always_on @Itrade_Xsell_Always_on_EML_IH_Base_Validation_6109 @6109 @EML @RS23101 @Itrade_Xsell_Always_on_IHValidation
  Scenario Outline: Itrade_Xsell_Always_on RS23101_6109_EML Validate IH details against database and pega for Base Line test cases
    Given load data from "Itrade_Xsell_6109" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    When read cust Insights information details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then validate Itrade Xsell Always on offer details against IH for "EML" Channel with "Outbound" Direction having "IPT" Outcome

    Examples:
      | Test cases                |
      | 6109_EML_BASE_Creative_01 |
      | 6109_EML_BASE_Creative_02 |
      | 6109_EML_BASE_Creative_03 |
      | 6109_EML_BASE_Creative_04 |
      | 6109_EML_BASE_Creative_05 |
      | 6109_EML_BASE_Creative_06 |
      | 6109_EML_BASE_Creative_07 |

  @Itrade_Xsell_Always_on @Itrade_Xsell_Always_on_EML_IH_Positive_Validation_6109 @6109 @EML @RS23101 @Itrade_Xsell_Always_on_IHValidation
  Scenario Outline: Itrade_Xsell_Always_on RS23101_6109_EML Validate IH details against database and pega for Positive test cases
    Given load data from "Itrade_Xsell_6109" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    When read cust Insights information details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then validate Itrade Xsell Always on offer details against IH for "EML" Channel with "Outbound" Direction having "IPT" Outcome

    Examples:
      | Test cases                                                        |
      | 6109_EML_Seg_01_LANG_CD_eq_fr                                     |
      | 6109_EML_Seg_02_NOT_AML_KYC_eq_NULL                               |
      | 6109_EML_Seg_03_DO_NOT_SOLICIT_F_eq_NULL                          |
      | 6109_EML_Seg_04_MK_ITRADE_EMAIL_F_eq_NULL                         |
      | 6109_EML_Seg_06_INDV_TTL_NM_ne_NULL                               |
      #Positive exclusion scenarios
      | 6109_EML_Seg_01_CUST_OPND_DT_lt_120                               |
      | 6109_EML_Seg_01_CUST_OPND_DT_eq_120                               |
      | 6109_EML_Seg_01_CUST_OPND_DT_eq_NULL                              |
      | 6109_EML_Seg_01_SRC_ACCT_STAT_CD_ne_A                             |
      | 6109_EML_Seg_01_SRC_ACCT_STAT_CD_eq_NULL                          |
      | 6109_EML_Seg_01_ACCT_ODT_gt_91                                    |
      | 6109_EML_Seg_01_ACCT_ODT_gt_NULL                                  |
      | 6109_EML_Seg_01_ACCT_SUBSYS_ID_ne_BB                              |
      | 6109_EML_Seg_01_PRIMARY_ACCT_HOLDER_FLAG _ne_Y                    |
      | 6109_EML_Seg_01_PRIMARY_ACCT_HOLDER_FLAG _eq_NULL                 |
      | 6109_EML_Seg_01_SRC_SYS_PRD_CD_eq_01_SRC_SYS_SUB_PRD_CD_eq_01     |
      | 6109_EML_Seg_01_SRC_SYS_PRD_CD_eq_NULL_SRC_SYS_SUB_PRD_CD_eq_NULL |

  @Itrade_Xsell_Always_on @Itrade_Xsell_Always_on_EML_IH_Negative_Validation_6109 @6109 @EML @RS23101 @Itrade_Xsell_Always_on_IHValidation
  Scenario Outline: Itrade_Xsell_Always_on RS23101_6109_EML Validate IH details against database and pega for Negative test cases
    Given load data from "Itrade_Xsell_6109" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    When read cust Insights information details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then verify using IH API that offer is not returned for "EML" channel

    Examples:
      | Test cases                                                                                                |
      | N-6109_EML_Seg_01_PRIM_EMAIL_ADDR_eq_NULL                                                                 |
      | N-6109_EML_Seg_02_INDV_FRST_NM_eq_NULL                                                                    |
      | N-6109_EML_Seg_03_INDV_LAST_NM_eq_NULL                                                                    |
      | N-6109_EML_Seg_04_LANG_CD_eq_NULL                                                                         |
      | N-6109_EML_Seg_05_PRIM_CNTRY_CD_ne_CA                                                                     |
      | N-6109_EML_Seg_06_PRIM_CNTRY_CD_ne_NULL                                                                   |
      | N-6109_EML_Seg_07_CUST_TP_CD_ne_PSNL                                                                      |
      | N-6109_EML_Seg_01_LANG_CD_eq_ka                                                                           |
      | N-6109_EML_Seg_02_MRKTBLE_F _ne_Y                                                                         |
      | N-6109_EML_Seg_03_MRKTBLE_F _eq_NULL                                                                      |
      | N-6109_EML_Seg_04_NOT_AML_KYC_eq_Y                                                                        |
      | N-6109_EML_Seg_05_CUST_AGE_eq_18                                                                          |
      | N-6109_EML_Seg_06_CUST_AGE_eq_11                                                                          |
      | N-6109_EML_Seg_07_CUST_AGE_eq_NULL                                                                        |
      | N-6109_EML_Seg_01_ITRADE_MCLEOD_F _ne_N                                                                   |
      | N-6109_EML_Seg_02_ITRADE_MCLEOD_F _eq_NULL                                                                |
      | N-6109_EML_Seg_03_ITRADE_XSELL_DECILE_eq_NULL                                                             |
      | N-6109_EML_Seg_04_DO_NOT_EMAIL_F _ne_N                                                                    |
      | N-6109_EML_Seg_05_DO_NOT_EMAIL_F _eq_NULL                                                                 |
      | N-6109_EML_Seg_06_VLD_EMAIL_F_ne_Y                                                                        |
      | N-6109_EML_Seg_07_VLD_EMAIL_F_eq_NULL                                                                     |
      | N-6109_EML_Seg_01_DO_NOT_SOLICIT_F_eq_Y                                                                   |
      | N-6109_EML_Seg_02_MK_ITRADE_EMAIL_F _eq_N                                                                 |
      | N-6109_EML_Seg_03_INSIGHT_CD _ne_ITRADE_SEGMENT                                                           |
      | N-6109_EML_Seg_04_CURR_VAL _lt_1                                                                          |
      | N-6109_EML_Seg_05_CURR_VAL _gt_7                                                                          |
      | N-6109_EML_Seg_06_CURR_VAL _eq_NULL                                                                       |
      #Exclusion Scenarios
      | N-6109_EML_Seg_01_CUST_OPND_DT_gt_120_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_lt_90_PRIMARY_ACCT_HOLDER_FLAG _eq_Y |
      | N-6109_EML_Seg_01_ACCT_ODT_eq_90                                                                          |
      | N-6109_EML_Seg_01_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_07                                           |
      | N-6109_EML_Seg_01_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_08                                           |
      | N-6109_EML_Seg_01_SRC_SYS_PRD_CD_eq_07_SRC_SYS_SUB_PRD_CD_eq_11                                           |
      | N-6109_EML_Seg_01_SRC_SYS_PRD_CD_eq_07_SRC_SYS_SUB_PRD_CD_eq_12                                           |
      | N-6109_EML_Seg_01_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_01                                           |
      | N-6109_EML_Seg_01_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_03                                           |
