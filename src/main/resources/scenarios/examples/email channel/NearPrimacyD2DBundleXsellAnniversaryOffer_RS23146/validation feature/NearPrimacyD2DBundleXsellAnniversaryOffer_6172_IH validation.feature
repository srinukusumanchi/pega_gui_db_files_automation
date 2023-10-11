@Near_Primacy_D2D_Bundle_Xsell_Anniversary_Offer_EML_6172_IHValidation
Feature: Validation for 6172 Near Primacy D2D Bundle Xsell Anniversary Offer in EML Channel

  @Near_Primacy_D2D_Bundle_Xsell_Anniversary_Offer @Near_Primacy_D2D_Bundle_Xsell_Anniversary_Offer_EML_IH_Base_Validation_6172 @6172 @EML @RS23146 @EMOB_Notification_IHValidation
  Scenario Outline: Near_Primacy_D2D_Bundle_Xsell_Anniversary_Offer RS23146_6172_EML Validate IH details against database and pega for Base Line test cases
    Given load data from "Near_Primacy_D2D_Bundle_Xsell_Anniversary_Offer_6172" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then validate Xsell Anniversary Offer offer details against IH for "EML" Channel with "Outbound" Direction having "IPT" Outcome

    Examples:
      | Test cases                      |
      | 6172_EML_BASE_Creative_01_or_02 |

  @Near_Primacy_D2D_Bundle_Xsell_Anniversary_Offer @Near_Primacy_D2D_Bundle_Xsell_Anniversary_Offer_EML_IH_Positive_Validation_6172 @6172 @EML @RS23146 @EMOB_Notification_IHValidation
  Scenario Outline: Near_Primacy_D2D_Bundle_Xsell_Anniversary_Offer RS23146_6172_EML Validate IH details against database and pega for Positive Line test cases
    Given load data from "Near_Primacy_D2D_Bundle_Xsell_Anniversary_Offer_6172" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then validate Xsell Anniversary Offer offer details against IH for "EML" Channel with "Outbound" Direction having "IPT" Outcome

    Examples:
      | Test cases                                                                                  |
      | 6172_EML_Seg_01_or_02_EMPLOYEE_STAFF_F_eq_NULL                                              |
      | 6172_EML_Seg_01_or_02_NOT_AML_KYC_eq_NULL                                                   |
      | 6172_EML_Seg_01_or_02_DO_NOT_SOLICIT_F_eq_NULL                                              |
      | 6172_EML_Seg_01_or_02_CC_VIP_IND_eq_NULL                                                    |
      | 6172_EML_Seg_01_or_02_HARDBOUNCE_EMAIL_F_eq_NULL                                            |
      | 6172_EML_Seg_01_or_02_MK_BK_INFO_ACCTS_EMAIL_F _eq_NULL                                     |
      | 6172_EML_Seg_01_or_02_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_03                                 |
      | 6172_EML_Seg_01_or_02_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_07                                 |
      | 6172_EML_Seg_01_or_02_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_08                                 |
      | 6172_EML_Seg_01_or_02_SRC_PRD_CD_eq_23_SRC_SUB_PRD_CD_eq_01                                 |
      | 6172_EML_Seg_01_or_02_SRC_PRD_CD_eq_23_SRC_SUB_PRD_CD_eq_03                                 |
      | 6172_EML_Seg_01_or_02_CUST_AGE_eq_65                                                        |
      | 6172_EML_Seg_01_or_02_Scotia_Ultimate_ACCT_SUBSYS_ID_eq_BB                                  |
      | 6172_EML_Seg_01_or_02_Ultimate_ACCT_SUBSYS_ID_eq_BB                                         |
      | 6172_EML_Seg_01_or_02_PRIM_PROV_CD_eq_NULL                                                  |
      | 6172_EML_Seg_01_or_02_FICO_SCORE_eq_700                                                     |
      | 6172_EML_Seg_01_or_02_FICO_SCORE_gt_700                                                     |
      | 6172_EML_Seg_01_or_02_FICO_SCORE_lt_700                                                     |
      | 6172_EML_Seg_01_or_02_FICO_SCORE_eq_NULL                                                    |
      | 6172_EML_Seg_01_or_02_PAC_PAYRL_F_ne_1                                                      |
      | 6172_EML_Seg_01_or_02_PAC_PAYRL_F_eq_1                                                      |
#      |Positive Exclusion scenarios|
      | 6172_EML_Seg_01_or_02_Investment_CC_SRC_ACCT_STAT_CD_ne_Active                              |
      | 6172_EML_Seg_01_or_02_Investment_CC_PLN_ACCT_CD_MASTER_ne_RESP                              |
      | 6172_EML_Seg_01_or_02_Investment_CC_ACCT_SUBSYS_ID_ne_UF                                    |
      | 6172_EML_Seg_01_or_02_CC_Investment_PROD_HIER_LEVEL_3_ne_Credit Cards                       |
      | 6172_EML_Seg_01_or_02_Investment_MPSA_SRC_ACCT_STAT_CD_ne_Active                            |
      | 6172_EML_Seg_01_or_02_Investment_MPSA_PLN_ACCT_CD_MASTER_ne_RESP                            |
      | 6172_EML_Seg_01_or_02_Investment_MPSA_ACCT_SUBSYS_ID_ne_UF                                  |
      | 6172_EML_Seg_01_or_02_MPSA_Investment_SRC_ACCT_STAT_CD _ne_Active                           |
      | 6172_EML_Seg_01_or_02_MPSA_Investment_ACCT_SUBSYS_ID_ne_UF                                  |
      | 6172_EML_Seg_01_or_02_MPSA_Investment_SRC_SYS_PRD_CD_ne_BSAMP                               |
      | 6172_EML_Seg_01_or_02_CC_MSPA_PROD_HIER_LEVEL_3_ne_Credit Cards                             |
      | 6172_EML_Seg_01_or_02_MSPA_CC_SRC_ACCT_STAT_CD _ne_Active                                   |
      | 6172_EML_Seg_01_or_02_MSPA_CC_ACCT_SUBSYS_ID_ne_UF                                          |
      | 6172_EML_Seg_01_or_02_MSPA_CC_SRC_SYS_PRD_CD_ne_BSAMP                                       |
      | 6172_EML_Seg_01_or_02_Investment_CC_MSPA_PLN_ACCT_CD_MASTER_ne_RESP_SRC_SYS_PRD_CD_ne_BSAMP |


  @Near_Primacy_D2D_Bundle_Xsell_Anniversary_Offer @Near_Primacy_D2D_Bundle_Xsell_Anniversary_Offer_EML_IH_Negative_Validation_6172 @6172 @EML @RS23146 @EMOB_Notification_IHValidation
  Scenario Outline: Near_Primacy_D2D_Bundle_Xsell_Anniversary_Offer RS23146_6172_EML Validate IH details against database and pega for Negative Line test cases
    Given load data from "Near_Primacy_D2D_Bundle_Xsell_Anniversary_Offer_6172" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then verify using IH API that offer is not returned for "EML" channel
    Examples:
      | Test cases                                                                                       |
      | N-6172_EML_Seg_01_or_02_PRIM_EMAIL_ADDR_eq_NULL                                                  |
      | N-6172_EML_Seg_01_or_02_INDV_FRST_NM_eq_NULL                                                     |
      | N-6172_EML_Seg_01_or_02_INDV_LAST_NM_eq_NULL                                                     |
      | N-6172_EML_Seg_01_or_02_LANG_CD_ne_en                                                            |
      | N-6172_EML_Seg_01_or_02_LANG_CD_eq_NULL                                                          |
      | N-6172_EML_Seg_01_or_02_DECEASED_F_eq_Y                                                          |
      | N-6172_EML_Seg_01_or_02_DECEASED_F _eq_NULL                                                      |
      | N-6172_EML_Seg_01_or_02_CUST_TP_CD_ne_PSNL                                                       |
      | N-6172_EML_Seg_01_or_02_CUST_TP_CD_eq_NULL                                                       |
      | N-6172_EML_Seg_01_or_02_PRIM_CNTRY_CD_ne_CA                                                      |
      | N-6172_EML_Seg_01_or_02_PRIM_CNTRY_CD_eq_NULL                                                    |
      | N-6172_EML_Seg_01_or_02_CUST_AGE_eq_18                                                           |
      | N-6172_EML_Seg_01_or_02_CUST_AGE_gt_65                                                           |
      | N-6172_EML_Seg_01_or_02_CUST_AGE_eq_NULL                                                         |
      | N-6172_EML_Seg_01_or_02_LANG_CD _eq_ka                                                           |
      | N-6172_EML_Seg_01_or_02_EMPLOYEE_STAFF_F _eq_Y                                                   |
      | N-6172_EML_Seg_01_or_02_MRKTBLE_F_eq_N                                                           |
      | N-6172_EML_Seg_01_or_02_MRKTBLE_F_eq_NULL                                                        |
      | N-6172_EML_Seg_01_or_02_NOT_AML_KYC_eq_Y                                                         |
      | N-6172_EML_Seg_01_or_02_DO_NOT_SOLICIT_F _eq_Y                                                   |
      | N-6172_EML_Seg_01_or_02_CC_VIP_IND_eq_2                                                          |
      | N-6172_EML_Seg_01_or_02_CC_VIP_IND_eq_9                                                          |
      | N-6172_EML_Seg_01_or_02_PRIM_ACCT_HOLDER_F_eq_N                                                  |
      | N-6172_EML_Seg_01_or_02_PRIM_ACCT_HOLDER_F_eq_NULL                                               |
      | N-6172_EML_Seg_01_or_02_DO_NOT_EMAIL_F _eq_Y                                                     |
      | N-6172_EML_Seg_01_or_02_DO_NOT_EMAIL_F _eq_NULL                                                  |
      | N-6172_EML_Seg_01_or_02_HARDBOUNCE_EMAIL_F _eq_Y                                                 |
      | N-6172_EML_Seg_01_or_02_MK_BK_INFO_ACCTS_EMAIL_F_eq_N                                            |
      | N-6172_EML_Seg_01_or_02_SRC_ACCT_STAT_CD_ne_A                                                    |
      | N-6172_EML_Seg_01_or_02_SRC_ACCT_STAT_CD_eq_NULL                                                 |
      | N-6172_EML_Seg_01_or_02_ACCT_ODT_lt_90dys                                                        |
      | N-6172_EML_Seg_01_or_02_ACCT_ODT_gt_10yrs                                                        |
      | N-6172_EML_Seg_01_or_02_ACCT_ODT_eq_NULL                                                         |
      | N-6172_EML_Seg_01_or_02_CRNT_BAL_AMT_lt_90                                                       |
      | N-6172_EML_Seg_01_or_02_ACCT_SUBSYS_ID_ne_BB                                                     |
      | N-6172_EML_Seg_01_or_02_ACCT_SUBSYS_ID_eq_NULL                                                   |
      | N-6172_EML_Seg_01_or_02_SRC_PRD_CD_ne_13_SRC_SUB_PRD_CD_ne_01                                    |
      | N-6172_EML_Seg_01_or_02_SRC_PRD_CD_ne_13_SRC_SUB_PRD_CD_ne_03                                    |
      | N-6172_EML_Seg_01_or_02_SRC_PRD_CD_ne_13_SRC_SUB_PRD_CD_ne_07                                    |
      | N-6172_EML_Seg_01_or_02_SRC_PRD_CD_ne_13_SRC_SUB_PRD_CD_ne_08                                    |
      | N-6172_EML_Seg_01_or_02_SRC_PRD_CD_ne_23_SRC_SUB_PRD_CD_ne_01                                    |
      | N-6172_EML_Seg_01_or_02_SRC_PRD_CD_ne_23_SRC_SUB_PRD_CD_ne_03                                    |
      | N-6172_EML_Seg_01_or_02_CUST_OPND_DT_eq_0                                                        |
      | N-6172_EML_Seg_01_or_02_CUST_OPND_DT_eq_11                                                       |
      | N-6172_EML_Seg_01_PRIM_PROV_CD_eq_QC                                                             |
#      |Exclusion scenarios|
      | N-6172_EML_Seg_01_or_02_Investment_CC_PLN_ACCT_CD_MASTER_eq_RESP_SRC_ACCT_STAT_CD_eq_Active      |
      | N-6172_EML_Seg_01_or_02_Investment_CC_PLN_ACCT_CD_MASTER_eq_RRSP_SRC_ACCT_STAT_CD_eq_A           |
      | N-6172_EML_Seg_01_or_02_Investment_CC_PLN_ACCT_CD_MASTER_eq_TFSA_SRC_ACCT_STAT_CD_eq_Open        |
      | N-6172_EML_Seg_01_or_02_Investment_CC_PLN_ACCT_CD_MASTER_eq_RRIF_SRC_ACCT_STAT_CD_eq_Active      |
      | N-6172_EML_Seg_01_or_02_Investment_CC_PLN_ACCT_CD_MASTER_eq_RDSP_SRC_ACCT_STAT_CD_eq_A           |
      | N-6172_EML_Seg_01_or_02_Investment_CC_PLN_ACCT_CD_MASTER_eq_NRS_SRC_ACCT_STAT_CD_eq_Open         |
      | N-6172_EML_Seg_01_or_02_Investment_MSPA_PLN_ACCT_CD_MASTER_eq_RESP_SRC_ACCT_STAT_CD_eq_Active    |
      | N-6172_EML_Seg_01_or_02_CC_MSPA_ACCT_SUBSYS_ID_eq_KS                                             |
      | N-6172_EML_Seg_01_or_02_Investment_CC_MSPA_PLN_ACCT_CD_MASTER_eq_RESP_SRC_ACCT_STAT_CD_eq_Active |
      | N-6172_EML_Seg_01_or_02_Investment_CC_MSPA_PRIMARY_ACCT_HOLDER_FLAG_eq_N                         |
      | N-6172_EML_Seg_01_or_02_NTC_MCB_IND_eq_Y_ARRV_DT_lt_5_Yrs                                        |







