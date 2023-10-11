@5761_ULOC_Insurance_IH_ValidationFeature
Feature: IH Validation For ULOC Insurance CIE5761 for EML Channel

  @ULOC_Insurance_EML @ULOC_Insurance_EML_Base_IH_Validation_5761 @5761 @EML @RS22065
  Scenario Outline: ULOC Insurance 5761 RS22065 EML Validate Offer Details Against IH for Base Line Test Cases
    Given load data from "ULOCIns_EML_CIE5761" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then validate ULOC Insurance Insurance offer details against IH

    Examples:
      | Test cases                |
      | 5761_EML_BASE_Creative_01 |
      | 5761_EML_BASE_Creative_02 |
      | 5761_EML_BASE_Creative_03 |
      | 5761_EML_BASE_Creative_04 |

  @ULOC_Insurance_EML @ULOC_Insurance_EML_Positive_IH_Validation_5761 @5761 @EML @RS22065
  Scenario Outline: ULOC Insurance 5761 RS22065 EML Validate Offer Details Against IH for Positive Test Cases
    Given load data from "ULOCIns_EML_CIE5761" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then validate ULOC Insurance Insurance offer details against IH

    Examples:
      | Test cases                                                               |
      | 5761_EML_Seg_01_CREDIT_ARREARS_DAYS_lt_60                                |
      | 5761_EML_Seg_01_CREDIT_ARREARS_DAYS_eq_60                                |
      | 5761_EML_Seg_01_CREDIT_ARREARS_DAYS_eq_NULL                              |
      | 5761_EML_Seg_01_CRNT_BAL_AMT_gt_0_and_lt_1.2xCR_CRD_LMT_AMT              |
      | 5761_EML_Seg_01_CRNT_BAL_AMT_gt_0_and_eq_1.2xCR_CRD_LMT_AMT              |
      | 5761_EML_Seg_02_CUST_AGE_eq_18                                           |
      | 5761_EML_Seg_02_CUST_AGE_gt_18                                           |
      | 5761_EML_Seg_02_CUST_AGE_lt_64                                           |
      | 5761_EML_Seg_02_CUST_AGE_eq_64                                           |
      | 5761_EML_Seg_02_DO_NOT_SOLICIT_F_eq_NULL                                 |
      | 5761_EML_Seg_03_LANG_CD_eq_fr                                            |
      | 5761_EML_Seg_03_MK_INSURANCE_EMAIL_F_eq_NULL                             |
      | 5761_EML_Seg_03_PRIM_PROV_CD_eq_NULL                                     |
      | 5761_EML_Seg_03_SRC_SYS_PRD_CD_eq_VIC_SRC_SYS_SUB_PRD_CD_eq_RG           |
      | 5761_EML_Seg_03_SRC_SYS_PRD_CD_eq_VIC_SRC_SYS_SUB_PRD_CD_eq_RS           |
      | 5761_EML_Seg_04_SRC_SYS_PRD_CD_eq_SCL_SRC_SYS_SUB_PRD_CD_eq_CS           |
      | 5761_EML_Seg_04_SRC_SYS_PRD_CD_eq_SCL_SRC_SYS_SUB_PRD_CD_eq_INE          |
      | 5761_EML_Seg_04_SRC_SYS_PRD_CD_eq_SCL_SRC_SYS_SUB_PRD_CD_eq_RS           |
      | 5761_EML_Seg_04_SRC_SYS_PRD_CD_eq_SCL_SRC_SYS_SUB_PRD_CD_eq_RL           |
      | 5761_EML_Seg_04_SRC_SYS_PRD_CD_eq_SSL_SRC_SYS_SUB_PRD_CD_eq_SP           |
      | 5761_EML_Seg_04_SRC_SYS_PRD_CD_eq_SSL_SRC_SYS_SUB_PRD_CD_eq_LI           |
      | 5761_EML_Seg_01_INS_STATUS_DESC_eq_Waived                                |
      | 5761_EML_Seg_02_INS_STATUS_DESC_eq_Life Only                             |
      | 5761_EML_Seg_02_INS_STATUS_DESC_eq_Disability and Life                   |
      | 5761_EML_Seg_02_INS_STATUS_DESC_eq_Disability, Life and Critical Illness |
      | 5761_EML_Seg_02_INS_STATUS_DESC_eq_Life and CI                           |
      | 5761_EML_Seg_02_INS_STATUS_DESC_eq_Life, Disability and Job Loss         |
      | 5761_EML_Seg_01_ACCT_ODT_eq_70                                           |
      | 5761_EML_Seg_01_ACCT_ODT_gt_70                                           |
      | 5761_EML_Seg_01_CR_CRD_LMT_AMT_gt_0                                      |
      | 5761_EML_Seg_01_CR_CRD_LMT_AMT_lt_50000                                  |
      | 5761_EML_Seg_01_CR_CRD_LMT_AMT_eq_50000                                  |
      | 5761_EML_Seg_02_ACCT_ODT_eq_70                                           |
      | 5761_EML_Seg_02_ACCT_ODT_gt_70                                           |
      | 5761_EML_Seg_02_CR_CRD_LMT_AMT_gt_0                                      |
      | 5761_EML_Seg_02_CR_CRD_LMT_AMT_lt_50000                                  |
      | 5761_EML_Seg_02_CR_CRD_LMT_AMT_eq_50000                                  |
      | 5761_EML_Seg_03_ACCT_ODT_gt_0                                            |
      | 5761_EML_Seg_03_ACCT_ODT_eq_0                                            |
      | 5761_EML_Seg_03_ACCT_ODT_lt_30                                           |
      | 5761_EML_Seg_03_ACCT_ODT_eq_30                                           |
      | 5761_EML_Seg_03_CR_CRD_LMT_AMT_gt_0                                      |
      | 5761_EML_Seg_03_CR_CRD_LMT_AMT_lt_50000                                  |
      | 5761_EML_Seg_03_CR_CRD_LMT_AMT_eq_50000                                  |
      | 5761_EML_Seg_04_ACCT_ODT_gt_0                                            |
      | 5761_EML_Seg_04_ACCT_ODT_eq_0                                            |
      | 5761_EML_Seg_04_ACCT_ODT_lt_30                                           |
      | 5761_EML_Seg_04_ACCT_ODT_eq_30                                           |
      | 5761_EML_Seg_04_CR_CRD_LMT_AMT_gt_50000                                  |
      | 5761_EML_Seg_01_CRNT_BAL_AMT_eq_0                                        |

      #      |Prioritization Scenarios|
      | 5761_EML_Seg_01_Multiple_Accounts_Different_ACCT_ODT                     |
      | 5761_EML_Seg_01_Multiple_Accounts_Same_ACCT_ODT_Prior_1_2_3_4            |
      | 5761_EML_Seg_01_Multiple_Accounts_Same_ACCT_ODT_Prior_2_3_4              |
      | 5761_EML_Seg_01_Multiple_Accounts_Same_ACCT_ODT_Prior_3_4                |


  @ULOC_Insurance_EML @ULOC_Insurance_EML_Negative_IH_Validation_5761 @5761 @EML @RS22065
  Scenario Outline: ULOC Insurance 5761 RS22065 EML Validate Offer Details Against IH for Negative Test Cases
    Given load data from "ULOCIns_EML_CIE5761" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then verify offer should not display

    Examples:
      | Test cases                                                                 |
      | N-5761_EML_Seg_01_ACCT_SUBSYS_ID_ne_KS                                     |
      | N-5761_EML_Seg_01_ACCT_SUBSYS_ID_eq_NULL                                   |
      | N-5761_EML_Seg_01_CREDIT_ARREARS_DAYS_gt_60                                |
      | N-5761_EML_Seg_01_CRNT_BAL_AMT_gt_0_and_gt_1.2xCR_CRD_LMT_AMT              |
      | N-5761_EML_Seg_01_CRNT_BAL_AMT_lt_0                                        |
      | N-5761_EML_Seg_01_CUST_AGE_lt_18                                           |
      | N-5761_EML_Seg_01_CUST_AGE_gt_64                                           |
      | N-5761_EML_Seg_01_CUST_AGE_eq_NULL                                         |
      | N-5761_EML_Seg_02_CUST_TP_CD_ne_PSNL                                       |
      | N-5761_EML_Seg_02_DECEASED_F_ne_N                                          |
      | N-5761_EML_Seg_02_DECEASED_F_eq_NULL                                       |
      | N-5761_EML_Seg_02_DO_NOT_EMAIL_F_ne_N                                      |
      | N-5761_EML_Seg_02_DO_NOT_EMAIL_F_eq_NULL                                   |
      | N-5761_EML_Seg_02_DO_NOT_SOLICIT_F_eq_Y                                    |
      | N-5761_EML_Seg_02_INDV_FRST_NM_eq_NULL                                     |
      | N-5761_EML_Seg_02_INDV_FRST_NM_eq_BLANK                                    |
      | N-5761_EML_Seg_02_INDV_LAST_NM_eq_NULL                                     |
      | N-5761_EML_Seg_02_INDV_LAST_NM_eq_BLANK                                    |
      | N-5761_EML_Seg_03_LANG_CD_eq_bn                                            |
      | N-5761_EML_Seg_03_LANG_CD_eq_NULL                                          |
      | N-5761_EML_Seg_03_MK_INSURANCE_EMAIL_F_eq_N                                |
      | N-5761_EML_Seg_03_MRKTBLE_F_ne_Y                                           |
      | N-5761_EML_Seg_03_MRKTBLE_F_eq_NULL                                        |
      | N-5761_EML_Seg_03_PRIM_CNTRY_CD_ne_CA                                      |
      | N-5761_EML_Seg_03_PRIM_CNTRY_CD_eq_NULL                                    |
      | N-5761_EML_Seg_03_PRIM_EMAIL_ADDR_eq_NULL                                  |
      | N-5761_EML_Seg_03_PRIM_EMAIL_ADDR_eq_BLANK                                 |
      | N-5761_EML_Seg_04_PRIM_PROV_CD_eq_QC                                       |
      | N-5761_EML_Seg_04_PRIMARY_ACCT_HOLDER_FLAG_ne_Y                            |
      | N-5761_EML_Seg_04_PRIMARY_ACCT_HOLDER_FLAG_eq_NULL                         |
      | N-5761_EML_Seg_04_SRC_ACCT_STAT_CD_ne_Open                                 |
      | N-5761_EML_Seg_04_SRC_ACCT_STAT_CD_eq_NULL                                 |
      | N-5761_EML_Seg_04_SRC_SYS_PRD_CD_eq_AXG_SRC_SYS_SUB_PRD_CD_eq_GC           |
      | N-5761_EML_Seg_04_SRC_SYS_PRD_CD_eq_NULL_SRC_SYS_SUB_PRD_CD_eq_NULL        |
      | N-5761_EML_Seg_04_VLD_EMAIL_F_ne_Y                                         |
      | N-5761_EML_Seg_04_VLD_EMAIL_F_eq_NULL                                      |
      | N-5761_EML_Seg_01_ACCT_ODT_lt_70                                           |
      | N-5761_EML_Seg_01_ACCT_ODT_eq_NULL                                         |
      | N-5761_EML_Seg_02_CR_CRD_LMT_AMT_lt_0                                      |
      | N-5761_EML_Seg_02_CR_CRD_LMT_AMT_eq_0                                      |
      | N-5761_EML_Seg_02_CR_CRD_LMT_AMT_gt_50000                                  |
      | N-5761_EML_Seg_02_INS_STATUS_DESC_eq_Invalid                               |
      | N-5761_EML_Seg_02_INS_STATUS_DESC_eq_NULL                                  |
      | N-5761_EML_Seg_03_ACCT_ODT_lt_0                                            |
      | N-5761_EML_Seg_03_ACCT_ODT_gt_30                                           |
      | N-5761_EML_Seg_03_INS_STATUS_DESC_eq_Life Only                             |
      | N-5761_EML_Seg_03_INS_STATUS_DESC_eq_Disability                            |
      | N-5761_EML_Seg_03_INS_STATUS_DESC_eq_Disability and Life                   |
      | N-5761_EML_Seg_03_INS_STATUS_DESC_eq_Disability, Job Loss                  |
      | N-5761_EML_Seg_04_CR_CRD_LMT_AMT_lt_0                                      |
      | N-5761_EML_Seg_04_CR_CRD_LMT_AMT_eq_0                                      |
      | N-5761_EML_Seg_04_CR_CRD_LMT_AMT_eq_NULL                                   |
      | N-5761_EML_Seg_04_INS_STATUS_DESC_eq_Disability, Life and Critical Illness |
      | N-5761_EML_Seg_04_INS_STATUS_DESC_eq_Life and CI                           |
      | N-5761_EML_Seg_04_INS_STATUS_DESC_eq_Life, Disability and Job Loss         |
      | N-5761_EML_Seg_02_INS_STATUS_DESC_eq_Disability                            |
      | N-5761_EML_Seg_02_INS_STATUS_DESC_eq_Disability, Job Loss                  |

