@Xsell_Sneak_Peak_Offer_EML_6185_IHValidation
Feature: Validation for 6185 Xsell Sneak Peak Offer in EML Channel

  @Xsell_Sneak_Peak_Offer_EML_IH_Base_Validation_6185_6186_6187_6188 @6185 @6186 @6187 @6188 @EML @RS23147
  Scenario Outline: NP D2D Bundle Xsell Sneak Peak Offer 6185 RS23147 Validate IH details against database and pega for Base Line test cases for EML Channel
    Given load data from "XsellSneakPeak_EML_6185_6186_6187_6188" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then validate Xsell Sneak Peak Offer details against IH for "EML" Channel with "Outbound" Direction having "IPT" Outcome

    Examples:
      | Test cases                |
      | 6185_EML_BASE_Creative_01 |
      | 6186_EML_BASE_Creative_01 |
      | 6187_EML_BASE_Creative_01 |
      | 6188_EML_BASE_Creative_01 |


  @Xsell_Sneak_Peak_Offer_EML_IH_Positive_Validation_6185_6186_6187_6188 @6185 @6186 @6187 @6188 @EML @RS23147
  Scenario Outline: NP D2D Bundle Xsell Sneak Peak Offer 6185 RS23147 Validate IH details against database and pega for Positive test cases for EML Channel
    Given load data from "XsellSneakPeak_EML_6185_6186_6187_6188" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then validate Xsell Sneak Peak Offer details against IH for "EML" Channel with "Outbound" Direction having "IPT" Outcome

    Examples:
      | Test cases                                                      |
      | 6185_EML_Seg_01_EMPLOYEE_STAFF_F_eq_NULL                        |
      | 6185_EML_Seg_01_NOT_AML_KYC_eq_NULL                             |
      | 6185_EML_Seg_01_DO_NOT_SOLICIT_F_eq_NULL                        |
      | 6185_EML_Seg_01_CC_VIP_IND_eq_NULL                              |
      | 6185_EML_Seg_01_HARDBOUNCE_EMAIL_F_eq_NULL                      |
      | 6185_EML_Seg_01_MK_BK_INFO_ACCTS_EMAIL_F _eq_NULL               |
      | 6185_EML_Seg_01_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_03           |
      | 6185_EML_Seg_01_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_07           |
      | 6185_EML_Seg_01_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_08           |
      | 6185_EML_Seg_01_SRC_PRD_CD_eq_23_SRC_SUB_PRD_CD_eq_01           |
      | 6185_EML_Seg_01_SRC_PRD_CD_eq_23_SRC_SUB_PRD_CD_eq_03           |
      | 6185_EML_Seg_01_CUST_AGE_eq_65                                  |
      | 6185_EML_Seg_01_CUST_AGE_gt_18                                  |
      | 6185_EML_Seg_01_PRIM_PROV_CD_eq_NULL                            |
      | 6110_EML_Seg_01_ExtTable_VALID_START_DATE_lt_Curr_Dt            |
      | 6110_EML_Seg_01_ExtTable_VALID_START_DATE_eq_Curr_Dt            |
      | 6110_EML_Seg_01_ExtTable_VALID_END_DATE_eq_Curr_Dt              |
      | 6110_EML_Seg_01_ExtTable_VALID_END_DATE_lt_Curr_Dt              |
      | 6185_EML_Seg_01_Scotia_Ultimate_ACCT_SUBSYS_ID_eq_BB            |
      | 6185_EML_Seg_01_Ultimate_ACCT_SUBSYS_ID_eq_BB                   |
      | 6185_EML_Seg_01_Scotia_ACCT_SUBSYS_ID_eq_BB                     |
      | 6185_EML_Seg_01_NPACC_FICO_SCORE_gt_700                         |
      | 6185_EML_Seg_01_NPACC_FICO_SCORE_eq_700                         |
      | 6185_EML_Seg_01_ACCT_ODT_gt_90                                  |
      | 6185_EML_Seg_01_CRNT_BAL_AMT_gt_100                             |
      | 6185_EML_Seg_01_CRNT_BAL_AMT_eq_100                             |
      | 6185_EML_Seg_01_Scotia_Ultimate_invalid_ACCT_SUBSYS_ID_eq_BB    |

#      |Positive Exclusion scenarios|
      | 6185_EML_Seg_01_Investment_CC_SRC_ACCT_STAT_CD_ne_Active        |
      | 6185_EML_Seg_01_Investment_CC_PLN_ACCT_CD_MASTER_ne_RESP        |
      | 6185_EML_Seg_01_Investment_CC_ACCT_SUBSYS_ID_ne_UF              |
      | 6185_EML_Seg_01_CC_Investment_PROD_HIER_LEVEL_3_ne_Credit Cards |
      | 6185_EML_Seg_01_Investment_MPSA_SRC_ACCT_STAT_CD_ne_Active      |
      | 6185_EML_Seg_01_Investment_MPSA_PLN_ACCT_CD_MASTER_ne_RESP      |
      | 6185_EML_Seg_01_Investment_MPSA_ACCT_SUBSYS_ID_ne_UF            |
      | 6185_EML_Seg_01_CC_MSPA_PROD_HIER_LEVEL_3_ne_Credit Cards       |
      | 6185_EML_Seg_01_MCB_IND_eq_N_ARRV_DT_eg_1000                    |


  @Xsell_Sneak_Peak_Offer_EML_IH_Negative_Validation_6185_6186_6187_6188 @6185 @6186 @6187 @6188 @EML @RS23147
  Scenario Outline: NP D2D Bundle Xsell Sneak Peak Offer 6185 RS23147 Validate IH details against database and pega for Negative test cases for EML Channel
    Given load data from "XsellSneakPeak_EML_6185_6186_6187_6188" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then verify using IH API that offer is not returned for "EML" channel

    Examples:
      | Test cases                                                                                 |
      | N-6185_EML_Seg_01_PRIM_EMAIL_ADDR_eq_NULL                                                  |
      | N-6185_EML_Seg_01_PRIM_EMAIL_ADDR_eq_BLANK                                                 |
      | N-6185_EML_Seg_01_INDV_FRST_NM_eq_NULL                                                     |
      | N-6185_EML_Seg_01_INDV_FRST_NM_eq_BLANK                                                    |
      | N-6185_EML_Seg_01_INDV_LAST_NM_eq_NULL                                                     |
      | N-6185_EML_Seg_01_LANG_CD_ne_en                                                            |
      | N-6185_EML_Seg_01_LANG_CD_eq_NULL                                                          |
      | N-6185_EML_Seg_01_DECEASED_F_eq_Y                                                          |
      | N-6185_EML_Seg_01_DECEASED_F _eq_NULL                                                      |
      | N-6185_EML_Seg_01_CUST_TP_CD_ne_PSNL                                                       |
      | N-6185_EML_Seg_01_CUST_TP_CD_eq_NULL                                                       |
      | N-6185_EML_Seg_01_PRIM_CNTRY_CD_ne_CA                                                      |
      | N-6185_EML_Seg_01_PRIM_CNTRY_CD_eq_NULL                                                    |
      | N-6185_EML_Seg_01_CUST_AGE_eq_18                                                           |
      | N-6185_EML_Seg_01_CUST_AGE_lt_18                                                           |
      | N-6185_EML_Seg_01_CUST_AGE_gt_65                                                           |
      | N-6185_EML_Seg_01_CUST_AGE_eq_NULL                                                         |
      | N-6185_EML_Seg_01_PRIM_PROV_CD_eq_QC                                                       |
      | N-6185_EML_Seg_01_EMPLOYEE_STAFF_F _eq_Y                                                   |
      | N-6185_EML_Seg_01_MRKTBLE_F_eq_N                                                           |
      | N-6185_EML_Seg_01_MRKTBLE_F_eq_NULL                                                        |
      | N-6185_EML_Seg_01_NOT_AML_KYC_eq_Y                                                         |
      | N-6185_EML_Seg_01_DO_NOT_SOLICIT_F _eq_Y                                                   |
      | N-6185_EML_Seg_01_CC_VIP_IND_eq_2                                                          |
      | N-6185_EML_Seg_01_CC_VIP_IND_eq_9                                                          |
      | N-6185_EML_Seg_01_PRIM_ACCT_HOLDER_F_eq_N                                                  |
      | N-6185_EML_Seg_01_PRIM_ACCT_HOLDER_F_eq_NULL                                               |
      | N-6185_EML_Seg_01_DO_NOT_EMAIL_F _eq_Y                                                     |
      | N-6185_EML_Seg_01_DO_NOT_EMAIL_F _eq_NULL                                                  |
      | N-6185_EML_Seg_01_HARDBOUNCE_EMAIL_F _eq_Y                                                 |
      | N-6185_EML_Seg_01_MK_BK_INFO_ACCTS_EMAIL_F_eq_N                                            |
      | N-6185_EML_Seg_01_SRC_ACCT_STAT_CD_ne_A                                                    |
      | N-6185_EML_Seg_01_SRC_ACCT_STAT_CD_eq_NULL                                                 |
      | N-6185_EML_Seg_01_ACCT_ODT_lt_90dys                                                        |
      | N-6185_EML_Seg_01_ACCT_ODT_eq_NULL                                                         |
      | N-6185_EML_Seg_01_CRNT_BAL_AMT_lt_90                                                       |
      | N-6185_EML_Seg_01_PAC_PAYRL_F _ne_1                                                        |
      | N-6185_EML_Seg_01_PAC_PAYRL_F _eq_NULL                                                     |
      | N-6185_EML_Seg_01_ACCT_SUBSYS_ID_ne_BB                                                     |
      | N-6185_EML_Seg_01_ACCT_SUBSYS_ID_eq_NULL                                                   |
      | N-6185_EML_Seg_01_SRC_PRD_CD_ne_13_SRC_SUB_PRD_CD_ne_01                                    |
      | N-6185_EML_Seg_01_Ext_CAMPAIGN_CODE _ne_ RS23147                                           |
      | N-6185_EML_Seg_01_Ext_CAMPAIGN_CELL_CODE _ne_CIE6185                                       |
      | N-6185_EML_Seg_01_Ext_CAMPAIGN_CELL_CODE _eq_NULL                                          |
      | N-6185_EML_Seg_01_Ext_CAMPAIGN_CELL_CODE_FLAG_ne_S                                         |
      | N-6185_EML_Seg_01_Ext_CAMPAIGN_CELL_CODE_FLAG_eq_NULL                                      |
      | N-6185_EML_Seg_01_Ext_VALID_START_DATE_gt_today                                            |
      | N-6185_EML_Seg_01_Ext_VALID_END_DATE_lt_today                                              |
      | N-6185_EML_Seg_01_Ext_EMAIL_CHANNEL_ne_Y                                                   |
      | N-6185_EML_Seg_01_Ext_EMAIL_CHANNEL_eq_NULL                                                |
      | N-6185_EML_Seg_01_VLD_EMAIL_F_eq_ N                                                        |
      | N-6185_EML_Seg_01_VLD_EMAIL_F_eq_NULL                                                      |
      | N-6185_EML_Seg_01_CRNT_BAL_AMT _lt_100                                                     |
      | N-6185_EML_Seg_01_CRNT_BAL_AMT_eq_NULL                                                     |
      | N-6185_EML_Seg_01_NPACC_FICO_SCORE_eq_NULL                                                 |
      | N-6185_EML_Seg_01_ACCT_ODT_eq_90                                                           |
      | N-6185_EML_Seg_01_PRIMARY_PREAPPROVED_START_DATE_ne_DSS                                    |
      | N-6185_EML_Seg_01_PRIMARY_PRODUCT_CODE_ne_AAA                                              |

#      |Exclusion scenarios|
      | N-6185_EML_Seg_01_Investment_CC_PLN_ACCT_CD_MASTER_eq_RESP_SRC_ACCT_STAT_CD_eq_Active      |
      | N-6185_EML_Seg_01_Investment_CC_PLN_ACCT_CD_MASTER_eq_RRSP_SRC_ACCT_STAT_CD_eq_A           |
      | N-6185_EML_Seg_01_Investment_CC_PLN_ACCT_CD_MASTER_eq_TFSA_SRC_ACCT_STAT_CD_eq_Open        |
      | N-6185_EML_Seg_01_Investment_CC_PLN_ACCT_CD_MASTER_eq_RRIF_SRC_ACCT_STAT_CD_eq_Active      |
      | N-6185_EML_Seg_01_Investment_CC_PLN_ACCT_CD_MASTER_eq_RDSP_SRC_ACCT_STAT_CD_eq_A           |
      | N-6185_EML_Seg_01_Investment_CC_PLN_ACCT_CD_MASTER_eq_NRS_SRC_ACCT_STAT_CD_eq_Open         |
      | N-6185_EML_Seg_01_Investment_MSPA_PLN_ACCT_CD_MASTER_eq_RESP_SRC_ACCT_STAT_CD_eq_Active    |
      | N-6185_EML_Seg_01_CC_MSPA_ACCT_SUBSYS_ID_eq_KS                                             |
      | N-6185_EML_Seg_01_Investment_CC_MSPA_PLN_ACCT_CD_MASTER_eq_RESP_SRC_ACCT_STAT_CD_eq_Active |
      | N-6185_EML_Seg_01_MCB_IND_eq_Y_ARRV_DT_eg_1000                                             |

