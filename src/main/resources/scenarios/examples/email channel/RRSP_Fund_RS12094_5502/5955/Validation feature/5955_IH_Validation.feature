@RRSP_Remainder_IHVALIDATION
Feature: Validation for 5955 RRSP Fund

  @RRSPFundEmail @RRSPFundEmailRemainder_IH_Positive_Validation_5955 @5955 @EMAIL @RS21094
  Scenario Outline: RRSPContributionEmailRemainder_RS21094_5955_EMAIL Validate offer details against IH for Positive test cases
    Given load data from "RRSPFund" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
#    And the user navigates to pega url
#    When the user enters user name, password and click on login in pega Login screen
#    And click on interaction History by customer link
#    And click on actions and run in interactions history By customer screen
#    When click on period link and clear today value
#    And enter customer id in ih by customer screen and get IH table data
    Then validate TFSA RRSP Fund remainder offer details against IH
    Examples:
      | Test cases                                                                                     |
      | 5955_BASE_01                                                                                   |
      | 5955_BASE_02                                                                                   |
      | 5955_CUST_AGE_eq_18                                                                            |
      | 5955_LANG_CD_eq_e                                                                              |
      | 5955_LANG_CD_eq_en                                                                             |
      | 5955_LANG_CD_eq_f                                                                              |
      | 5955_LANG_CD_eq_fr                                                                             |
      | 5955_LANG_CD_eq_capital_E                                                                      |
      | 5955_LANG_CD_eq_capital_EN                                                                     |
      | 5955_LANG_CD_eq_capital_F                                                                      |
      | 5955_LANG_CD_eq_capital_FR                                                                     |
      | 5955_DO_NOT_SOLICIT_F_eq_NULL                                                                  |
      | 5955_NOT_AML_KYC_eq_NULL                                                                       |
      | 5955_MD_FINANCIAL_F_eq_NULL                                                                    |
      | 5955_ITRADE_MCLEOD_F_eq_NULL                                                                   |
      | 5955_DEDICATED_INVSTMNT_ADVISOR_F_eq_NULL                                                      |
      | 5955_PLN_ACCT_CD_MASTER_eq_RRSP_ACCT_SUBSYS_ID_eq_UF_SRC_ACCT_STAT_CD_eq_Active_PIC_PAC_F_eq_0 |
      | 5955_Currentdate-ACCT_ODT=BusinessDSS1                                                         |
      | 5955_Currentdate-ACCT_ODT>BusinessDSS1                                                         |
      | 5955_Currentdate-ACCT_ODT=BusinessDSS2                                                         |
      | 5955_Currentdate-ACCT_ODT<BusinessDSS2                                                         |
      | 5955_PRIMARY_ACCT_HOLDER_FLAG_eq_Y                                                             |
      | 5955_DO_NOT_EMAIL_F_eq_N                                                                       |
      | 5955_VLD_EMAIL_F_eq_Y                                                                          |
      | 5955_PRIM_EMAIL_ADDR_ne_NULL                                                                   |
      | 5955_INDV_FRST_NM_ne_NULL                                                                      |
      | 5955_MK_INVESTING_EMAIL_ne_N                                                                   |
      | 5955_MK_INVESTING_EMAIL_eq_NULL                                                                |
      | 5955_5955012302_5955032303_prioritise_5955012302                                               |
      | 5502_5955_ifeligibleforbothoffersthen prioritise5955                                           |


  @RRSPFundEmail @RRSPFundEmailRemainder_IH_NegExc_Positive_Validation_5955 @5955 @EMAIL @RS21094
  Scenario Outline: RRSPContributionEmailRemainder_RS21094_5955_EMAIL Validate offer details against IH for Positive test cases derived from exclusion scenarios
    Given load data from "RRSPFund" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
#    And the user navigates to pega url
#    When the user enters user name, password and click on login in pega Login screen
#    And click on interaction History by customer link
#    And click on actions and run in interactions history By customer screen
#    When click on period link and clear today value
#    And enter customer id in ih by customer screen and get IH table data
    Then validate TFSA RRSP Fund remainder offer details against IH
    Examples:
      | Test cases                                                                                                |
      | 5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_01_SRC_SUB_PRD_CD_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        |
      | 5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_01_SRC_SUB_PRD_CD_02_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        |
      | 5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_01_SRC_SUB_PRD_CD_03_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        |
      | 5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_01_SRC_SUB_PRD_CD_04_SRC_ACCT_STAT_CD_eq_NA_ACCT_ODT_lt_90days       |
      | 5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_02_SRC_SUB_PRD_CD_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        |
      | 5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_02_SRC_SUB_PRD_CD_02_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        |
      | 5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_02_SRC_SUB_PRD_CD_03_SRC_ACCT_STAT_CD_eq_NA_ACCT_ODT_lt_90days       |
      | 5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_19_SRC_SUB_PRD_CD_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        |
      | 5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_19_SRC_SUB_PRD_CD_02_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        |
      | 5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_19_SRC_SUB_PRD_CD_03_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        |
      | 5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_19_SRC_SUB_PRD_CD_04_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        |
      | 5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_19_SRC_SUB_PRD_CD_07_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        |
      | 5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_19_SRC_SUB_PRD_CD_08_SRC_ACCT_STAT_CD_eq_NA_ACCT_ODT_lt_90days       |
      | 5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_13_SRC_SUB_PRD_CD_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        |
      | 5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_13_SRC_SUB_PRD_CD_03_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        |
      | 5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_13_SRC_SUB_PRD_CD_07_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        |
      | 5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_13_SRC_SUB_PRD_CD_08_SRC_ACCT_STAT_CD_eq_NA_ACCT_ODT_Lt_90days       |
      | 5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_07_SRC_SUB_PRD_CD_11_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        |
      | 5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_07_SRC_SUB_PRD_CD_12_SRC_ACCT_STAT_CD_eq_NA_ACCT_ODT_lt_90days       |
      | 5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_23_SRC_SUB_PRD_CD_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        |
      | 5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_23_SRC_SUB_PRD_CD_03_SRC_ACCT_STAT_CD_eq_NA_ACCT_ODT_lt_90days       |
      | 5955_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VGD_SRC_SUB_PRD_CD_NF_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_gt_90days    |
      | 5955_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VCL_SRC_SUB_PRD_CD_ZZ_SRC_ACCT_STAT_CD_eq_NotOpen_ACCT_ODT_lt_90days |
      | 5955_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VCL_SRC_SUB_PRD_CD_SS_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_gt_90days    |
      | 5955_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VLR_SRC_SUB_PRD_CD_RG_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_gt_90days    |
      | 5955_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VLR_SRC_SUB_PRD_CD_NF_SRC_ACCT_STAT_CD_eq_NotOpen_ACCT_ODT_lt_90days |
      | 5955_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VCL_SRC_SUB_PRD_CD_DM_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_gt_90days    |
      | 5955_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VCL_SRC_SUB_PRD_CD_RG_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_gt_90days    |
      | 5955_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VCL_SRC_SUB_PRD_CD_NF_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_gt_90days    |
      | 5955_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VCL_SRC_SUB_PRD_CD_SV_SRC_ACCT_STAT_CD_eq_NotOpen_ACCT_ODT_lt_90days |
      | 5955_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VFA_SRC_SUB_PRD_CD_A1_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_gt_90days    |
      | 5955_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VFF_SRC_SUB_PRD_CD_F1_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_gt_90days    |
      | 5955_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_AXG_SRC_SUB_PRD_CD_GC_SRC_ACCT_STAT_CD_eq_NotOpen_ACCT_ODT_lt_90days |
      | 5955_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_AXS_SRC_SUB_PRD_CD_SC_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_gt_90days    |
      | 5955_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_AXP_SRC_SUB_PRD_CD_PC_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_gt_90days    |
      | 5955_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VLR_SRC_SUB_PRD_CD_RC_SRC_ACCT_STAT_CD_eq_NotOpen_ACCT_ODT_lt_90days |
      | 5955_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VFF_SRC_SUB_PRD_CD_TR_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_gt_90days    |
      | 5955_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VGD_SRC_SUB_PRD_CD_RG_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_gt_90days    |


  @RRSPFundEmail @RRSPFundEmailRemainder_IH_Negative_Validation_5955 @5955 @EMAIL @RS21094
  Scenario Outline: RRSPContributionEmailRemainder_RS21094_5955_EMAIL Validate offer details against IH for negative test cases
    Given load data from "RRSPFund" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
#    And the user navigates to pega url
#    When the user enters user name, password and click on login in pega Login screen
#    And click on interaction History by customer link
#    And click on actions and run in interactions history By customer screen
#    When click on period link and clear today value
#    And enter customer id in ih by customer screen and get IH table data
    Then verify offer should not display
    Examples:
      | Test cases                                                                                               |
      | N-5955_CUST_TP_CD_ne_PSNL                                                                                |
      | N-5955_CUST_TP_CD_eq_NULL                                                                                |
      | N-5955_PRIM_CNTRY_CD_ne_CA                                                                               |
      | N-5955_PRIM_CNTRY_CD_eq_NULL                                                                             |
      | N-5955_DECEASED_F_ne_N                                                                                   |
      | N-5955_DECEASED_F_eq_NULL                                                                                |
      | N-5955_CUST_AGE_eq_NULL                                                                                  |
      | N-5955_CUST_AGE_lt_18                                                                                    |
      | N-5955_LANG_CD_ne_e_en_f_fr_E_EN_F_FR                                                                    |
      | N-5955_LANG_CD_eq_NULL                                                                                   |
      | N-5955_DO_NOT_SOLICIT_F_eq_Y                                                                             |
      | N-5955_MRKTBLE_F_ne_Y                                                                                    |
      | N-5955_MRKTBLE_F_eq_NULL                                                                                 |
      | N-5955_NOT_AML_KYC_eq_Y                                                                                  |
      | N-5955_MD_FINANCIAL_F_eq_Y                                                                               |
      | N-5955_ITRADE_MCLEOD_F_eq_Y                                                                              |
      | N-5955_DEDICATED_INVSTMNT_ADVISOR_F_eq_Y                                                                 |
      | N-5955_PLN_ACCT_CD_MASTER_ne_RRSP                                                                        |
      | N-5955_PLN_ACCT_CD_MASTER_eq_NULL                                                                        |
      | N-5955_ACCT_SUBSYS_ID_ne_UF                                                                              |
      | N-5955_ACCT_SUBSYS_ID_eq_NULL                                                                            |
      | N-5955_SRC_ACCT_STAT_CD_ne_Active                                                                        |
      | N-5955_SRC_ACCT_STAT_CD_eq_NULL                                                                          |
      | N-5955_PIC_PAC_F_ne_0                                                                                    |
      | N-5955_PIC_PAC_F_eq_NULL                                                                                 |
      | N-5955_ACCT_ODT_eq_NULL                                                                                  |
      | N-5955_Currentdate-ACCT_ODT<BusinessDSS1                                                                 |
      | N-5955_Currentdate-ACCT_ODT>BusinessDSS2                                                                 |
      | N-5955_PRIMARY_ACCT_HOLDER_FLAG_ne_Y                                                                     |
      | N-5955_PRIMARY_ACCT_HOLDER_FLAG_eq_NULL                                                                  |
      | N-5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_01_SRC_SUB_PRD_CD_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_lt_90days     |
      | N-5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_01_SRC_SUB_PRD_CD_02_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90days     |
      | N-5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_01_SRC_SUB_PRD_CD_03_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_lt_90days     |
      | N-5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_01_SRC_SUB_PRD_CD_04_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90days     |
      | N-5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_02_SRC_SUB_PRD_CD_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_lt_90days     |
      | N-5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_02_SRC_SUB_PRD_CD_02_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90days     |
      | N-5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_02_SRC_SUB_PRD_CD_03_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_lt_90days     |
      | N-5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_19_SRC_SUB_PRD_CD_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90days     |
      | N-5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_19_SRC_SUB_PRD_CD_02_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_lt_90days     |
      | N-5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_19_SRC_SUB_PRD_CD_03_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90days     |
      | N-5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_19_SRC_SUB_PRD_CD_04_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_lt_90days     |
      | N-5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_19_SRC_SUB_PRD_CD_07_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90days     |
      | N-5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_19_SRC_SUB_PRD_CD_08_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_lt_90days     |
      | N-5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_13_SRC_SUB_PRD_CD_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90days     |
      | N-5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_13_SRC_SUB_PRD_CD_03_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_lt_90days     |
      | N-5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_13_SRC_SUB_PRD_CD_07_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90days     |
      | N-5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_13_SRC_SUB_PRD_CD_08_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_lt_90days     |
      | N-5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_07_SRC_SUB_PRD_CD_11_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90days     |
      | N-5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_07_SRC_SUB_PRD_CD_12_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_lt_90days     |
      | N-5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_23_SRC_SUB_PRD_CD_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90days     |
      | N-5955_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_23_SRC_SUB_PRD_CD_03_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_lt_90days     |
      | N-5955_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VGD_SRC_SUB_PRD_CD_NF_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_lt_90days |
      | N-5955_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VCL_SRC_SUB_PRD_CD_ZZ_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_90days |
      | N-5955_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VCL_SRC_SUB_PRD_CD_SS_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_lt_90days |
      | N-5955_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VLR_SRC_SUB_PRD_CD_RG_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_90days |
      | N-5955_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VLR_SRC_SUB_PRD_CD_NF_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_lt_90days |
      | N-5955_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VCL_SRC_SUB_PRD_CD_DM_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_90days |
      | N-5955_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VCL_SRC_SUB_PRD_CD_RG_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_lt_90days |
      | N-5955_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VCL_SRC_SUB_PRD_CD_NF_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_90days |
      | N-5955_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VCL_SRC_SUB_PRD_CD_SV_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_lt_90days |
      | N-5955_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VFA_SRC_SUB_PRD_CD_A1_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_90days |
      | N-5955_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VFF_SRC_SUB_PRD_CD_F1_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_lt_90days |
      | N-5955_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_AXG_SRC_SUB_PRD_CD_GC_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_90days |
      | N-5955_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_AXS_SRC_SUB_PRD_CD_SC_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_lt_90days |
      | N-5955_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_AXP_SRC_SUB_PRD_CD_PC_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_90days |
      | N-5955_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VLR_SRC_SUB_PRD_CD_RC_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_lt_90days |
      | N-5955_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VFF_SRC_SUB_PRD_CD_TR_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_90days |
      | N-5955_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VGD_SRC_SUB_PRD_CD_RG_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_lt_90days |
      | N-5955_DO_NOT_EMAIL_F_ne_N                                                                               |
      | N-5955_DO_NOT_EMAIL_F_eq_NULL                                                                            |
      | N-5955_VLD_EMAIL_F_ne_Y                                                                                  |
      | N-5955_VLD_EMAIL_F_eq_NULL                                                                               |
      | N-5955_PRIM_EMAIL_ADDR_eq_NULL                                                                           |
      | N-5955_INDV_FRST_NM_eq_NULL                                                                              |
      | N-5955_MK_INVESTING_EMAIL_eq_N                                                                           |
      | N-5955_INDV_LAST_NM_eq_NULL                                                                              |
  ## Added for 02 march 2023 rel
      | N_5955_PLN_ACCT_DLR_ne_BNS                                                                               |
      | N_5955_PLN_ACCT_DLR_ne_SSI                                                                               |
      | N_5955_PLN_ACCT_DLR_eq_NULL                                                                              |


# June 8th 2023 Release
  # Positive Scenarios
  @RRSPFundEmail @RRSP_Fund_PAC_Reminder_EML_Positive_IH_Validation_5955_June_8_2023 @Workstream-4 @5955 @EMAIL @RS21094  @AUTOTESTTOTAL#5
  Scenario Outline: RRSP Fund PAC Reminder_RS21094_5955_EMAIL Validate offer details against IH for Positive test cases for June 8th 2023 Release
    Given load data from "RRSPFund" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then validate CrossSell offer details against IH
    Examples:
      | Test cases                                               |
      | 5955_EML_Seg_02_DO_NOT_SOLICIT_F_eq_NULL                 |
#     Exclusion Scenarios
      | 5955_EML_Seg_02_ExtTable_CAMPAIGN_CELL_CODE_FLAG_ne_N    |
      | 5955_EML_Seg_02_ExtTable_CAMPAIGN_CELL_CODE_FLAG_eq_NULL |
      | 5955_EML_Seg_02_ExtTable_VALID_END_DATE_lt_Curr_Dt       |
      | 5955_EML_Seg_02_ExtTable_VALID_START_DATE_gt_Curr_Dt     |




# Negative Scenarios
  @RRSPFundEmail @RRSP_Fund_PAC_Reminder_EML_Negative_IH_Validation_5955_June_8_2023 @Workstream-4 @5955 @EMAIL @RS21094  @AUTOTESTTOTAL#5
  Scenario Outline: RRSP Fund PAC Reminder_RS21094_5955_EMAIL Validate offer details against IH for Negative test cases for June 8th 2023 Release
    Given load data from "RRSPFund" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then verify using IH API that offer is not returned for "EML" channel
    Examples:
      | Test cases                                             |
      | N-5955_EML_Seg_02_DO_NOT_SOLICIT_F_eq_Y                |
#     Exclusion Scenarios
      | N-5955_EML_Seg_02_ExtTable_VALID_END_DATE_gt_Curr_Dt   |
      | N-5955_EML_Seg_02_ExtTable_VALID_END_DATE_eq_Curr_Dt   |
      | N-5955_EML_Seg_02_ExtTable_VALID_START_DATE_lt_Curr_Dt |
      | N-5955_EML_Seg_02_ExtTable_VALID_START_DATE_eq_Curr_Dt |



