@SSI_Investment_Funds_EML_6233_IHValidation
Feature: Validation for 6233 SSI Investment Funds in EML Channel

  @SSI_Investment_Funds_EML_IH_Base_Validation_6233 @6233 @EML @RS23174
  Scenario Outline: SSI Investment Funds 6233 RS23174 Validate IH details against database and pega for Base Line test cases for EML Channel
    Given load data from "SSIFunds_EML_6233" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then validate SSI Investment Funds details against IH for "EML" Channel with "Outbound" Direction having "IPT" Outcome

    Examples:
      | Test cases           |
      | 6233_EML_BASE_Seg_01 |

  @SSI_Investment_Funds_EML_IH_Positive_Validation_6233 @6233 @EML @RS23174
  Scenario Outline: SSI Investment Funds 6233 RS23174 Validate IH details against database and pega for Positive Line test cases for EML Channel
    Given load data from "SSIFunds_EML_6233" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then validate SSI Investment Funds details against IH for "EML" Channel with "Outbound" Direction having "IPT" Outcome

    Examples:
      | Test cases                                                                                               |
      #Positive Scenarios
      | 6233_EML_Creative_01_LANG_CD_eq_EN                                                                       |
      | 6233_EML_Creative_01_LANG_CD_eq_F                                                                        |
      | 6233_EML_Creative_01_LANG_CD_eq_FR                                                                       |
      | 6233_EML_Creative_01_ITRADE_MCLEOD_F_eq_NULL                                                             |
      | 6233_EML_Creative_01_DEDICATED_INVSTMNT_ADVISOR_F_eq_NULL                                                |
      | 6233_EML_Creative_01_MK_INVESTING_EMAIL_F_eq_NULL                                                        |
      | 6233_EML_Creative_01_DO_NOT_SOLICIT_eq_NULL                                                              |
      | 6233_EML_Creative_01_PLN_ACCT_CD_MASTER_eq_RRSP_SRC_SYS_SUB_PRD_CD_BNSCSVRG_eq_SRC_SYS_PRD_CD_eq_RRS     |
      | 6233_EML_Creative_01_PLN_ACCT_CD_MASTER_eq_RRSP_SRC_SYS_SUB_PRD_CD_BNSCSVRG_eq_SRC_SYS_PRD_CD_eq_RSS     |
      | 6233_EML_Creative_01_PLN_ACCT_CD_MASTER_eq_RESP_SRC_SYS_SUB_PRD_CD_BNSCSVRX_eq_SRC_SYS_PRD_CD_eq_REF     |
      | 6233_EML_Creative_01_PLN_ACCT_CD_MASTER_eq_RESP_SRC_SYS_SUB_PRD_CD_BNSCSVRX_eq_SRC_SYS_PRD_CD_eq_REI     |
      | 6233_EML_Creative_01_PLN_ACCT_CD_MASTER_eq_TFSA_SRC_SYS_SUB_PRD_CD_BNSCSVTF_eq_SRC_SYS_PRD_CD_eq_TFS     |
      | 6233_EML_Creative_01_ACCT_ODT_eq_10                                                                      |
      | 6233_EML_Creative_01_NRS_RRSP                                                                            |
      | 6233_EML_Creative_01_NRS_RRSP_RRSP                                                                       |
      | 6233_EML_Creative_01_NRS_RRSP_RRSP_RESP                                                                  |
      | 6233_EML_Creative_01_NRS_RRSP_RRSP_RESP_RESP                                                             |
      | 6233_EML_Creative_01_NRS_RRSP_RRSP_RESP_RESP_TFSA                                                        |
      | 6233_EML_Creative_01_INDV_LAST_NM_eq_NULL                                                                |
      #Positive Exclusion Scenarios
      | 6233_EML_Creative_01_ACCT_SUBSYS_ID_ne_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_180 |
      | 6233_EML_Creative_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_ne_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_180 |
      | 6233_EML_Creative_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_ne_9_ACCT_ODT_eq_180 |
      | 6233_EML_Creative_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_181 |


  @SSI_Investment_Funds_EML_IH_Negative_Validation_6233 @6233 @EML @RS23174
  Scenario Outline: SSI Investment Funds 6233 RS23174 Validate IH details against database and pega for Negative Line test cases for EML Channel
    Given load data from "SSIFunds_EML_6233" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then verify using IH API that offer is not returned for "EML" channel

    Examples:
      | Test cases                                                                                                 |
      #Negative Scenarios
      | N-6233_EML_Creative_01_DECEASED_F_eq_Y                                                                     |
      | N-6233_EML_Creative_01_DECEASED_F_eq_NULL                                                                  |
      | N-6233_EML_Creative_01_CUST_TP_CD_eq_ABCD                                                                  |
      | N-6233_EML_Creative_01_PRIM_CNTRY_CD_eq_IN                                                                 |
      | N-6233_EML_Creative_01_PRIM_CNTRY_CD_eq_NULL                                                               |
      | N-6233_EML_Creative_01_CUST_AGE_eq_NULL                                                                    |
      | N-6233_EML_Creative_01_LANG_CD_eq_KA                                                                       |
      | N-6233_EML_Creative_01_MRKTBLE_F_eq_N                                                                      |
      | N-6233_EML_Creative_01_MRKTBLE_F_eq_NULL                                                                   |
      | N-6233_EML_Creative_01_ITRADE_MCLEOD_F_eq_Y                                                                |
      | N-6233_EML_Creative_01_DEDICATED_INVSTMNT_ADVISOR_F_eq_Y                                                   |
      | N-6233_EML_Creative_01_PRIM_EMAIL_ADDR _eq_NULL                                                            |
      | N-6233_EML_Creative_01_INDV_FRST_NM_eq_NULL                                                                |
      | N-6233_EML_Creative_01_DO_NOT_EMAIL_F_eq_Y                                                                 |
      | N-6233_EML_Creative_01_VLD_EMAIL_F_eq_N                                                                    |
      | N-6233_EML_Creative_01_MK_INVESTING_EMAIL_F_eq_N                                                           |
      | N-6233_EML_Creative_01_DO_NOT_SOLICIT_eq_Y                                                                 |
      | N-6233_EML_Creative_01_PLN_ACCT_DLR_ne_SSI                                                                 |
      | N-6233_EML_Creative_01_PLN_ACCT_DLR_eq_NULL                                                                |
      | N-6233_EML_Creative_01_ACCT_SUBSYS_ID_ne_UF                                                                |
      | N-6233_EML_Creative_01_ACCT_SUBSYS_ID_eq_NULL                                                              |
      | N-6233_EML_Creative_01_SRC_ACCT_STAT_CD_ne_Active                                                          |
      | N-6233_EML_Creative_01_SRC_ACCT_STAT_CD_eq_NULL                                                            |
      | N-6233_EML_Creative_01_PLAN_SPOT_BALANCE_eq_1                                                              |
      | N-6233_EML_Creative_01_ACCT_ODT_gt_10                                                                      |
      | N-6233_EML_Creative_01_ACCT_ODT_eq_NULL                                                                    |
      | N-6233_EML_Creative_01_PLN_ACCT_CD_MASTER_eq_LIF_SRC_SYS_SUB_PRD_CD_eq_BNSCSVRG_SRC_SYS_PRD_CD_eq_BNSCSVRG |
      | N-6233_EML_Creative_01_PRIMARY_ACCT_HOLDER_FLAG_eq_N                                                       |
      | N-6233_EML_Creative_01_PRIMARY_ACCT_HOLDER_FLAG_eq_NULL                                                    |
      | N-6233_EML_Creative_01_IP_AR_RELATN_TYPE_CD_ne_ANN_or_OWN                                                         |
      | N-6233_EML_Creative_01_IP_AR_RELATN_TYPE_CD_eq_NULL                                                        |
      #Exclusion Scenarios
      | N-6233_EML_Creative_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_180 |
      | N-6233_EML_Creative_01_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_9_ACCT_ODT_eq_179 |
