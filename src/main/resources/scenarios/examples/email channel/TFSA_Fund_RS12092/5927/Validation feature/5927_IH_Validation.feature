@TFSA_Remainder_IHVALIDATION
Feature: Validation for 5927 TFSAFund

  @TFSAFundEmail @TFSAFundEmailRemainder_IH_Base_Positive_Validation_5927 @5927 @EMAIL @RS21094 @Sanity
  Scenario Outline: TFSAContributionEmailRemainder_RS21094_5927_EMAIL Validate offer details against IH for Positive test cases
    Given load data from "TFSAFund" excel sheet
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
      | Test cases   |
      | 5927_Base_01 |
      | 5927_Base_02 |

  @TFSAFundEmail @TFSAFundEmailRemainder_IH_Positive_Validation_5927 @5927 @EMAIL @RS21094
  Scenario Outline: TFSAContributionEmailRemainder_RS21094_5927_EMAIL Validate offer details against IH for Positive test cases
    Given load data from "TFSAFund" excel sheet
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
#      | 5927_CUST_AGE_eq_18                                                                            |
#      | 5927_LANG_CD_eq_e                                                                              |
#      | 5927_LANG_CD_eq_en                                                                             |
#      | 5927_LANG_CD_eq_f                                                                              |
#      | 5927_LANG_CD_eq_fr                                                                             |
#      | 5927_LANG_CD_eq_cap_E                                                                          |
#      | 5927_LANG_CD_eq_cap_EN                                                                         |
#      | 5927_LANG_CD_eq_cap_F                                                                          |
#      | 5927_LANG_CD_eq_cap_FR                                                                         |
#      | 5927_DO_NOT_SOLICIT_eq_Null                                                                    |
#      | 5927_NOT_AML_KYC_eq_Null                                                                       |
#      | 5927_MD_FINANCIAL_F_eq_ Null                                                                   |
#      | 5927_ITRADE_MCLEOD_F_eq_Null                                                                   |
#      | 5927_DEDICATED_INVSTMNT_ADVISOR_F_eq_Null                                                      |
      | 5955_PLN_ACCT_CD_MASTER_eq_TFSA_ACCT_SUBSYS_ID_eq_UF_SRC_ACCT_STAT_CD_eq_Active_PIC_PAC_F_eq_0 |
#      | 5927_Current date-ACCT_ODT=BusinessDSS1                                                        |
#      | 5927_Current date-ACCT_ODT>BusinessDSS1                                                        |
#      | 5927_Current date-ACCT_ODT<BusinessDSS2                                                        |
#      | 5927-Current date-ACCT_ODT=BusinessDSS2                                                        |
#      | 5927_PRIMARY_ACCT_HOLDER_FLAG_eq_Y                                                             |
#      | 5927_INDV_FRST_NM_ne_NULL                                                                      |
#      | 5927_DO_NOT_EMAIL_F_eq_N                                                                       |
#      | 5927_VLD_EML_F_eq_Y                                                                            |
#      | 5927_PRIM_EMAIL_ADDRESS_ne_NULL                                                                |
#      | 5927_INDV_FRST_NM_ne_NULL                                                                      |
      | 5927_MK_INVESTING_EMAIL_ne_N                                                                   |
      | 5927_MK_INVESTING_EMAIL_eq_NULL                                                                |
      | 5927_5927012302_5927032303_prioritise_5927012302                                               |
      | 5501_5927_ifeligibleforbothoffersthen_prioritise5927                                           |

  @TFSAFundEmail @TFSAFundEmailRemainder_IH_NegExc_Positive_Validation_5927 @5927 @EMAIL @RS21094
  Scenario Outline: TFSAContributionEmailRemainder_RS21094_5927_EMAIL Validate offer details against IH for Positive test cases derived from exclusion scenarios
    Given load data from "TFSAFund" excel sheet
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
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_01_SRC_SUB_PRD_CD_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        |
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_01_SRC_SUB_PRD_CD_02_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        |
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_01_SRC_SUB_PRD_CD_03_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        |
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_01_SRC_SUB_PRD_CD_04_SRC_ACCT_STAT_CD_eq_NA_ACCT_ODT_lt_90days       |
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_02_SRC_SUB_PRD_CD_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        |
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_02_SRC_SUB_PRD_CD_02_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        |
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_02_SRC_SUB_PRD_CD_03_SRC_ACCT_STAT_CD_eq_NA_ACCT_ODT_lt_90days       |
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_19_SRC_SUB_PRD_CD_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        |
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_19_SRC_SUB_PRD_CD_02_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        |
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_19_SRC_SUB_PRD_CD_03_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        |
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_19_SRC_SUB_PRD_CD_04_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        |
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_19_SRC_SUB_PRD_CD_07_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        |
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_19_SRC_SUB_PRD_CD_08_SRC_ACCT_STAT_CD_eq_NA_ACCT_ODT_lt_90days       |
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_13_SRC_SUB_PRD_CD_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        |
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_13_SRC_SUB_PRD_CD_03_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        |
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_13_SRC_SUB_PRD_CD_07_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        |
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_13_SRC_SUB_PRD_CD_08_SRC_ACCT_STAT_CD_eq_NA_ACCT_ODT_Lt_90days       |
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_07_SRC_SUB_PRD_CD_11_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        |
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_07_SRC_SUB_PRD_CD_12_SRC_ACCT_STAT_CD_eq_NA_ACCT_ODT_lt_90days       |
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_23_SRC_SUB_PRD_CD_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_gt_90days        |
      | 5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_23_SRC_SUB_PRD_CD_03_SRC_ACCT_STAT_CD_eq_NA_ACCT_ODT_lt_90days       |
      | 5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VGD_SRC_SUB_PRD_CD_NF_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_gt_90days    |
      | 5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VCL_SRC_SUB_PRD_CD_ZZ_SRC_ACCT_STAT_CD_eq_NotOpen_ACCT_ODT_lt_90days |
      | 5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VCL_SRC_SUB_PRD_CD_SS_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_gt_90days    |
      | 5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VLR_SRC_SUB_PRD_CD_RG_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_gt_90days    |
      | 5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VLR_SRC_SUB_PRD_CD_NF_SRC_ACCT_STAT_CD_eq_NotOpen_ACCT_ODT_lt_90days |
      | 5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VCL_SRC_SUB_PRD_CD_DM_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_gt_90days    |
      | 5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VCL_SRC_SUB_PRD_CD_RG_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_gt_90days    |
      | 5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VCL_SRC_SUB_PRD_CD_NF_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_gt_90days    |
      | 5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VCL_SRC_SUB_PRD_CD_SV_SRC_ACCT_STAT_CD_eq_NotOpen_ACCT_ODT_lt_90days |
      | 5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VFA_SRC_SUB_PRD_CD_A1_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_gt_90days    |
      | 5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VFF_SRC_SUB_PRD_CD_F1_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_gt_90days    |
      | 5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_AXG_SRC_SUB_PRD_CD_GC_SRC_ACCT_STAT_CD_eq_NotOpen_ACCT_ODT_lt_90days |
      | 5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_AXS_SRC_SUB_PRD_CD_SC_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_gt_90days    |
      | 5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_AXP_SRC_SUB_PRD_CD_PC_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_gt_90days    |
      | 5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VLR_SRC_SUB_PRD_CD_RC_SRC_ACCT_STAT_CD_eq_NotOpen_ACCT_ODT_lt_90days |
      | 5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VFF_SRC_SUB_PRD_CD_TR_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_gt_90days    |
      | 5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VGD_SRC_SUB_PRD_CD_RG_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_gt_90days    |

  @TFSAFundEmail @TFSAFundEmailRemainder_IH_Negative_Validation_5927 @5927 @EMAIL @RS21094
  Scenario Outline: TFSAContributionEmailRemainder_RS21094_5927_EMAIL Validate offer details against IH for negative test cases
    Given load data from "TFSAFund" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then verify offer should not display
    Examples:
      | Test cases                                                                                               |
      | N-5927_CUST_TP_CD_ne_PSNL                                                                                |
      | N-5927_Primary Country Cd_ne_ CA                                                                         |
      | N-5927_Primary Country Cd_eq_NULL                                                                        |
      | N-5927_DECEASED_F_ne_N                                                                                   |
      | N-5927_DECEASED_F_eq_NULL                                                                                |
      | N-5927_CUST_AGE_lt_ 18                                                                                   |
      | N-5927_CUST_AGE_eq_NULL                                                                                  |
      | N-5927_LANG_CD_ne_en_e_fr_f_E_EN                                                                         |
      | N-5927_LANG_CD_eq_NULL                                                                                   |
      | N-5927_DO_NOT_SOLICIT_F_eq_Y                                                                             |
      | N-5927_MRKTBLE_F_ne_Y                                                                                    |
      | N-5927_MRKTBLE_F_eq_NULL                                                                                 |
      | N-5927_NOT_AML_KYC_eq_Y                                                                                  |
      | N-5927_MD_FINANCIAL_F_eq_Y                                                                               |
      | N-5927_ITRADE_MCLEOD_F_eq_Y                                                                              |
      | N-5927_DEDICATED_INVSTMNT_ADVISOR_F_eq_Y                                                                 |
      | N-5927_PLN_ACCT_CD_MASTER_ne_TFSA                                                                        |
      | N-5927_PLN_ACCT_CD_MASTER_eq_NULL                                                                        |
      | N-5927_ACCT_SUBSYS_ID_ne_UF                                                                              |
      | N-5927_ACCT_SUBSYS_ID_eq_NULL                                                                            |
      | N_5927_SRC_ACCT_STAT_CD_eq_ NULL                                                                         |
      | N-5927_SRC_ACCT_STAT_CD_ne_Active                                                                        |
      | N-5927_PIC_PAC_F_ne_0                                                                                    |
      | N-5927_PIC_PAC_F_eq_NULL                                                                                 |
      | N-5927_ACCT_ODT_eq_NULL                                                                                  |
      | N-5927_5927_PRIMARY_ACCT_HOLDER_FLAG_ne_Y                                                                |
      | N-5927_5927_PRIMARY_ACCT_HOLDER_FLAG_ne_NULL                                                             |
      | N-5927_5927_INDV_FRST_NM_eq_NULL                                                                         |
      | N-5927_5927_INDV_Last_NM_eq_NULL                                                                         |
      | N-5927_Currentdate-ACCT_ODT>BusinessDSS2                                                                 |
      | N-5927_Currentdate-ACCT_ODT<BusinessDSS1                                                                 |
      | N-5927_DO_NOT_EMAIL_F_ne_N                                                                               |
      | N-5927_DO_NOT_EMAIL_F_eq_NULL                                                                            |
      | N-5927_5927_Valid Email Flag_ne_ Y                                                                       |
      | N-5927_5927_Valid Email Flag_eq_NULL                                                                     |
      | N-5927_5927_PRIM_EMAIL_ADDR_eq_NULL                                                                      |
      | N-5927_MK_INVESTING_EMAIL_eq_N                                                                           |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_01_SRC_SUB_PRD_CD_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_lt_90days     |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_01_SRC_SUB_PRD_CD_02_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90days     |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_01_SRC_SUB_PRD_CD_03_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_lt_90days     |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_01_SRC_SUB_PRD_CD_04_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90days     |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_02_SRC_SUB_PRD_CD_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_lt_90days     |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_02_SRC_SUB_PRD_CD_02_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90days     |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_02_SRC_SUB_PRD_CD_03_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_lt_90days     |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_19_SRC_SUB_PRD_CD_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90days     |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_19_SRC_SUB_PRD_CD_02_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_lt_90days     |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_19_SRC_SUB_PRD_CD_03_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90days     |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_19_SRC_SUB_PRD_CD_04_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_lt_90days     |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_19_SRC_SUB_PRD_CD_07_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90days     |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_19_SRC_SUB_PRD_CD_08_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_lt_90days     |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_13_SRC_SUB_PRD_CD_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90days     |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_13_SRC_SUB_PRD_CD_03_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_lt_90days     |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_13_SRC_SUB_PRD_CD_07_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90days     |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_13_SRC_SUB_PRD_CD_08_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_lt_90days     |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_07_SRC_SUB_PRD_CD_11_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90days     |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_07_SRC_SUB_PRD_CD_12_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_lt_90days     |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_23_SRC_SUB_PRD_CD_01_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_eq_90days     |
      | N-5927_ACCT_SUBSYS_ID_eq_BB_SRC_PRD_CD_23_SRC_SUB_PRD_CD_03_SRC_ACCT_STAT_CD_eq_A_ACCT_ODT_lt_90days     |
      | N-5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VGD_SRC_SUB_PRD_CD_NF_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_lt_90days |
      | N-5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VCL_SRC_SUB_PRD_CD_ZZ_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_90days |
      | N-5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VCL_SRC_SUB_PRD_CD_SS_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_lt_90days |
      | N-5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VLR_SRC_SUB_PRD_CD_RG_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_90days |
      | N-5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VLR_SRC_SUB_PRD_CD_NF_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_lt_90days |
      | N-5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VCL_SRC_SUB_PRD_CD_DM_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_90days |
      | N-5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VCL_SRC_SUB_PRD_CD_RG_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_lt_90days |
      | N-5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VCL_SRC_SUB_PRD_CD_NF_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_90days |
      | N-5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VCL_SRC_SUB_PRD_CD_SV_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_lt_90days |
      | N-5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VFA_SRC_SUB_PRD_CD_A1_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_90days |
      | N-5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VFF_SRC_SUB_PRD_CD_F1_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_lt_90days |
      | N-5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_AXG_SRC_SUB_PRD_CD_GC_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_90days |
      | N-5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_AXS_SRC_SUB_PRD_CD_SC_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_lt_90days |
      | N-5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_AXP_SRC_SUB_PRD_CD_PC_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_90days |
      | N-5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VLR_SRC_SUB_PRD_CD_RC_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_lt_90days |
      | N-5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VFF_SRC_SUB_PRD_CD_TR_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_eq_90days |
      | N-5927_ACCT_SUBSYS_ID_eq_KS_SRC_PRD_CD_VGD_SRC_SUB_PRD_CD_RG_SRC_ACCT_STAT_CD_eq_Open_ACCT_ODT_lt_90days |

## Added for 2 march 2023 Rel
      | N_5927_PLN_ACCT_DLR_ne_BNS                                                                               |
      | N_5927_PLN_ACCT_DLR_ne_SSI                                                                               |
      | N_5927_PLN_ACCT_DLR_eq_NULL                                                                              |



# June 8th 2023 Release
  # Positive Scenarios
  @TFSAFundEmail @TFSA_Fund_PAC_Reminder_EML_Positive_IH_Validation_5927_June_8_2023 @Workstream-4 @5927 @EMAIL @RS21092  @AUTOTESTTOTAL#5
  Scenario Outline: TFSA Fund PAC Reminder_RS21092_5927_EMAIL Validate offer details against IH for Positive test cases for June 8th 2023 Release
    Given load data from "TFSAFund" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then validate CrossSell offer details against IH
    Examples:
      | Test cases                                               |
      | 5927_EML_Seg_02_DO_NOT_SOLICIT_F_eq_NULL                 |
#     Exclusion Scenarios
      | 5927_EML_Seg_02_ExtTable_CAMPAIGN_CELL_CODE_FLAG_ne_N    |
      | 5927_EML_Seg_02_ExtTable_CAMPAIGN_CELL_CODE_FLAG_eq_NULL |
      | 5927_EML_Seg_02_ExtTable_VALID_END_DATE_lt_Curr_Dt       |
      | 5927_EML_Seg_02_ExtTable_VALID_START_DATE_gt_Curr_Dt     |




# Negative Scenarios
  @TFSAFundEmail @TFSA_Fund_PAC_Reminder_EML_Negative_IH_Validation_5927_June_8_2023 @Workstream-4 @5927 @EMAIL @RS21092  @AUTOTESTTOTAL#5
  Scenario Outline: TFSA Fund PAC Reminder_RS21092_5927_EMAIL Validate offer details against IH for Negative test cases for June 8th 2023 Release
    Given load data from "TFSAFund" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then verify using IH API that offer is not returned for "EML" channel
    Examples:
      | Test cases                                             |
      | N-5927_EML_Seg_02_DO_NOT_SOLICIT_F_eq_Y                |
#     Exclusion Scenarios
      | N-5927_EML_Seg_02_ExtTable_VALID_END_DATE_gt_Curr_Dt   |
      | N-5927_EML_Seg_02_ExtTable_VALID_END_DATE_eq_Curr_Dt   |
      | N-5927_EML_Seg_02_ExtTable_VALID_START_DATE_lt_Curr_Dt |
      | N-5927_EML_Seg_02_ExtTable_VALID_START_DATE_eq_Curr_Dt |
