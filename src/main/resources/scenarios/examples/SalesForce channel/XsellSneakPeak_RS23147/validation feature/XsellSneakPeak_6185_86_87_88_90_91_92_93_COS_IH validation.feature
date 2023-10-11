@Xsell_Sneak_Peak_Offer_EML_6185_IHValidation
Feature: Validation for 6185 Xsell Sneak Peak Offer Offer in EML Channel

  @Xsell_Sneak_Peak_Offer_Offer @Xsell_Sneak_Peak_Offer_EML_IH_Base_Validation_6185 @6185 @EML @RS23147 @EMOB_Notification_IHValidation
  Scenario Outline: Xsell_Sneak_Peak_Offer_Offer RS23147_6185_EML Validate IH details against database and pega for Base Line test cases
    Given load data from "XsellSneakPeak_SF_6185_6186_6187_6188" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then validate Xsell Sneak Peak Offer details against IH for "COS" Channel with "Outbound" Direction having "IPT" Outcome

    Examples:
      | Test cases               |
      | 6185_SF_BASE_Creative_01 |
      | 6186_SF_BASE_Creative_01 |
      | 6187_SF_BASE_Creative_01 |
      | 6188_SF_BASE_Creative_01 |

  @Xsell_Sneak_Peak_Offer_Offer @Xsell_Sneak_Peak_Offer_EML_IH_Positive_Validation_6185 @6185 @EML @RS23147 @EMOB_Notification_IHValidation
  Scenario Outline: Xsell_Sneak_Peak_Offer_Offer RS23147_6185_EML Validate IH details against database and pega for Positive Line test cases
    Given load data from "XsellSneakPeak_SF_6185_6186_6187_6188" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then validate Xsell Sneak Peak Offer details against IH for "COS" Channel with "Outbound" Direction having "IPT" Outcome

    Examples:
      | Test cases                                                                                                        |
      |6185_SF_Seg_01_EMPLOYEE_STAFF_F_eq_NULL|
      |6185_SF_Seg_01_NOT_AML_KYC_eq_NULL|
      |6185_SF_Seg_01_CC_VIP_IND_eq_NULL|
      |6185_SF_Seg_01_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_03|
      |6185_SF_Seg_01_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_07|
      |6185_SF_Seg_01_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_08|
      |6185_SF_Seg_01_SRC_PRD_CD_eq_23_SRC_SUB_PRD_CD_eq_01|
      |6185_SF_Seg_01_SRC_PRD_CD_eq_23_SRC_SUB_PRD_CD_eq_03|
      |6185_SF_Seg_01_CUST_AGE_eq_65|
      |6185_SF_Seg_01_Scotia_Ultimate_ACCT_SUBSYS_ID_eq_BB|
      |6185_SF_Seg_01_Ultimate_ACCT_SUBSYS_ID_eq_BB|
      |6185_SF_Seg_01_ASSIGNED_FA_TRANSIT_eq_00018|
      |6185_SF_Seg_01_RESP_TRNST_NUM_eq_00018|
      |6185_SF_Seg_01_CLOSEST_TRANSIT_NUM_eq_00018|
      |6185_SF_Seg_01_ASSIGNED_FA_TRANSIT_eq_ NULL_RESP_TRNST_NUM_ne_00018_CLOSEST_TRANSIT_NUM_eq_00018|
      |6185_SF_Seg_01_ASSIGNED_FA_TRANSIT_eq_ NULL_RESP_TRNST_NUM_ne_00018_CLOSEST_TRANSIT_NUM_ne_00018|
      |6185_SF_Seg_01_CUSTOMER_PRIMARY_OFFER_eq_ NULL|
      |6185_SF_Seg_01_CUSTOMER_SECONDARY_OFFER_eq_ NULL|
      |6185_SF_Seg_01_CUSTOMER_TERTIARY_OFFER_eq_ NULL|
      |6185_SF_Seg_01_CUSTOMER_PRIMARY_OFFER_eq_ NULL_CUSTOMER_SECONDARY_OFFER_eq_ NULL_CUSTOMER_TERTIARY_OFFER_eq_ NULL|
      |6185_SF_Seg_01_PHYSICIANS_F_eq_ NULL|
      |6185_SF_Seg_01_NPACC_FICO_SCORE_gt_700|
      |6185_SF_Seg_01_NPACC_FICO_SCORE_eq_700|
      #Positive Exclusion scenarios
      |6185_SF_Seg_01_Investment_CC_SRC_ACCT_STAT_CD_ne_Active|
      |6185_SF_Seg_01_Investment_CC_PLN_ACCT_CD_MASTER_ne_RESP|
      |6185_SF_Seg_01_Investment_CC_ACCT_SUBSYS_ID_ne_UF|
      |6185_SF_Seg_01_CC_Investment_PROD_HIER_LEVEL_3_ne_Credit Cards|
      |6185_SF_Seg_01_Investment_MPSA_SRC_ACCT_STAT_CD_ne_Active|
      |6185_SF_Seg_01_Investment_MPSA_PLN_ACCT_CD_MASTER_ne_RESP|
      |6185_SF_Seg_01_Investment_MPSA_ACCT_SUBSYS_ID_ne_UF|
      |6185_SF_Seg_01_CC_MSPA_PROD_HIER_LEVEL_3_ne_Credit Cards|
      |6185_SF_Seg_01_MCB_IND_eq_N_ARRV_DT_eg_1000|
      |6185_SF_Seg_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_gt_120|
      |6185_SF_Seg_01_ACCT_SUBSYS_ID_ne_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_120|
      |6185_SF_Seg_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_ne_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_120|
      |6185_SF_Seg_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_ne_9_ACCT_ODT_eq_120|


  @Xsell_Sneak_Peak_Offer_Offer @Xsell_Sneak_Peak_Offer_EML_IH_Negative_Validation_6185 @6185 @EML @RS23147 @EMOB_Notification_IHValidation
  Scenario Outline: Xsell_Sneak_Peak_Offer_Offer RS23147_6185_EML Validate IH details against database and pega for Negative Line test cases
    Given load data from "XsellSneakPeak_SF_6185_6186_6187_6188" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then verify using IH API that offer is not returned for "COS" channel

    Examples:
      | Test cases                                                                                           |
      | N-6185_SF_Seg_01_LANG_CD_ne_en                                                                       |
      | N-6185_SF_Seg_01_LANG_CD_eq_NULL                                                                     |
      | N-6185_SF_Seg_01_DECEASED_F_eq_Y                                                                     |
      | N-6185_SF_Seg_01_DECEASED_F _eq_NULL                                                                 |
      | N-6185_SF_Seg_01_CUST_TP_CD_ne_PSNL                                                                  |
      | N-6185_SF_Seg_01_CUST_TP_CD_eq_NULL                                                                  |
      | N-6185_SF_Seg_01_PRIM_CNTRY_CD_ne_CA                                                                 |
      | N-6185_SF_Seg_01_PRIM_CNTRY_CD_eq_NULL                                                               |
      | N-6185_SF_Seg_01_CUST_AGE_eq_18                                                                      |
      | N-6185_SF_Seg_01_CUST_AGE_gt_65                                                                      |
      | N-6185_SF_Seg_01_CUST_AGE_eq_NULL                                                                    |
      | N-6185_SF_Seg_01_LANG_CD _eq_ka                                                                      |
      | N-6185_SF_Seg_01_EMPLOYEE_STAFF_F _eq_Y                                                              |
      | N-6185_SF_Seg_01_MRKTBLE_F_eq_N                                                                      |
      | N-6185_SF_Seg_01_MRKTBLE_F_eq_NULL                                                                   |
      | N-6185_SF_Seg_01_NOT_AML_KYC_eq_Y                                                                    |
      | N-6185_SF_Seg_01_CC_VIP_IND_eq_2                                                                     |
      | N-6185_SF_Seg_01_CC_VIP_IND_eq_9                                                                     |
      | N-6185_SF_Seg_01_PRIM_ACCT_HOLDER_F_eq_N                                                             |
      | N-6185_SF_Seg_01_PRIM_ACCT_HOLDER_F_eq_NULL                                                          |
      | N-6185_SF_Seg_01_SRC_ACCT_STAT_CD_ne_A                                                               |
      | N-6185_SF_Seg_01_SRC_ACCT_STAT_CD_eq_NULL                                                            |
      | N-6185_SF_Seg_01_ACCT_ODT_lt_90dys                                                                   |
      | N-6185_SF_Seg_01_ACCT_ODT_eq_NULL                                                                    |
      | N-6185_SF_Seg_01_CRNT_BAL_AMT_lt_90                                                                  |
      | N-6185_SF_Seg_01_ACCT_SUBSYS_ID_ne_BB                                                                |
      | N-6185_SF_Seg_01_ACCT_SUBSYS_ID_eq_NULL                                                              |
      | N-6185_SF_Seg_01_SRC_PRD_CD_ne_13_SRC_SUB_PRD_CD_ne_01                                               |
      | N-6185_SF_Seg_01_SRC_PRD_CD_ne_13_SRC_SUB_PRD_CD_ne_03                                               |
      | N-6185_SF_Seg_01_SRC_PRD_CD_ne_13_SRC_SUB_PRD_CD_ne_07                                               |
      | N-6185_SF_Seg_01_SRC_PRD_CD_ne_13_SRC_SUB_PRD_CD_ne_08                                               |
      | N-6185_SF_Seg_01_SRC_PRD_CD_ne_23_SRC_SUB_PRD_CD_ne_01                                               |
      | N-6185_SF_Seg_01_SRC_PRD_CD_ne_23_SRC_SUB_PRD_CD_ne_03                                               |
      | N-6185_SF_Seg_01_Ext_CAMPAIGN_CODE _ne_ RS23147                                                      |
      | N-6185_SF_Seg_01_Ext_CAMPAIGN_CELL_CODE _ne_CIE6185                                                  |
      | N-6185_SF_Seg_01_Ext_CAMPAIGN_CELL_CODE _eq_NULL                                                     |
      | N-6185_SF_Seg_01_Ext_CAMPAIGN_CELL_CODE_FLAG_ne_S                                                    |
      | N-6185_SF_Seg_01_Ext_CAMPAIGN_CELL_CODE_FLAG_eq_NULL                                                 |
      | N-6185_SF_Seg_01_Ext_VALID_START_DATE_gt_today                                                       |
      | N-6185_SF_Seg_01_Ext_VALID_END_DATE_lt_today                                                         |
      | N-6185_SF_Seg_01_Ext_BRANCH_CHANNEL_ne_Y                                                             |
      | N-6185_SF_Seg_01_Ext_BRANCH_CHANNEL_eq_NULL                                                          |
      | N-6185_SF_Seg_01_CRNT_BAL_AMT _lt_100                                                                |
      | N-6185_SF_Seg_01_CRNT_BAL_AMT_eq_NULL                                                                |
      | N-6185_SF_Seg_01_BRANCH_CHANNEL_TRANSIT_eq_35353                                                     |
      | N-6185_SF_Seg_01_DO_NOT_CALL_F_eq_Y                                                                  |
      | N-6185_SF_Seg_01_DO_NOT_CALL_F_eq_ NULL                                                              |
      | N-6185_SF_Seg_01_VLD_PH_F_eq_ N                                                                      |
      | N-6185_SF_Seg_01_VLD_PH_F_eq_ NULL                                                                   |
      | N-6185_SF_Seg_01_SRC_ACCT_STAT_CD _ne_A_ACCT_ODT_lt_90_CRNT_BAL_AMT_lt_1500                          |
      | N-6185_SF_Seg_01_CRNT_BAL_AMT _lt_100                                                                |
      | N-6185_SF_Seg_01_PRIMARY_PREAPPROVED_START_DATE_ne_DSS                                               |
      | N-6185_SF_Seg_01_PRIMARY_PRODUCT_CODE_ne_AAA                                                         |
      | N-6185_SF_Seg_01_ACCT_ODT_eq_90                                                                      |
      | N-6185_SF_Seg_01_PHYSICIANS_F_eq_Y                                                                   |
      #Exclusion scenarios
      | N-6185_SF_Seg_01_Investment_CC_PLN_ACCT_CD_MASTER_eq_RESP_SRC_ACCT_STAT_CD_eq_Active                 |
      | N-6185_SF_Seg_01_Investment_CC_PLN_ACCT_CD_MASTER_eq_RRSP_SRC_ACCT_STAT_CD_eq_A                      |
      | N-6185_SF_Seg_01_Investment_CC_PLN_ACCT_CD_MASTER_eq_TFSA_SRC_ACCT_STAT_CD_eq_Open                   |
      | N-6185_SF_Seg_01_Investment_CC_PLN_ACCT_CD_MASTER_eq_RRIF_SRC_ACCT_STAT_CD_eq_Active                 |
      | N-6185_SF_Seg_01_Investment_CC_PLN_ACCT_CD_MASTER_eq_RDSP_SRC_ACCT_STAT_CD_eq_A                      |
      | N-6185_SF_Seg_01_Investment_CC_PLN_ACCT_CD_MASTER_eq_NRS_SRC_ACCT_STAT_CD_eq_Open                    |
      | N-6185_SF_Seg_01_Investment_MSPA_PLN_ACCT_CD_MASTER_eq_RESP_SRC_ACCT_STAT_CD_eq_Active               |
      | N-6185_SF_Seg_01_CC_MSPA_ACCT_SUBSYS_ID_eq_KS                                                        |
      | N-6185_SF_Seg_01_Investment_CC_MSPA_PLN_ACCT_CD_MASTER_eq_RESP_SRC_ACCT_STAT_CD_eq_Active            |
      | N-6185_SF_Seg_01_MCB_IND_eq_Y_ARRV_DT_eg_1000                                                        |
      | N-6185_SF_Seg_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_120 |
      | N-6185_SF_Seg_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_lt_120 |

    #offers 6190,6191,6192 & 6193
  @Xsell_Sneak_Peak_Offer_Offer @Xsell_Sneak_Peak_Offer_EML_IH_Base_Validation_6190 @6190 @EML @RS23147 @EMOB_Notification_IHValidation
  Scenario Outline: Xsell_Sneak_Peak_Offer_Offer RS23147_6190_EML Validate IH details against database and pega for Base Line test cases
    Given load data from "XsellSneakPeak_SF_6190_6191_6192_6193" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then validate Xsell Sneak Peak Offer details against IH for "COS" Channel with "Outbound" Direction having "IPT" Outcome

    Examples:
      | Test cases               |
      | 6190_SF_BASE_Creative_01 |
      | 6191_SF_BASE_Creative_01 |
      | 6192_SF_BASE_Creative_01 |
      | 6193_SF_BASE_Creative_01 |

