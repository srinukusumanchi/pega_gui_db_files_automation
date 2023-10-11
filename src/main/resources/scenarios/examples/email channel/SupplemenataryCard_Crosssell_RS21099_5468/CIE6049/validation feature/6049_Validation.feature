Feature: Validation for 6049 Supplementary Card Cross Sell Reminder

# Sep 28th 2023 Release

# Base Scenarios
  @SupplementaryCardCrossSell_Reminder_EML @SupplementaryCardCrossSell_Reminder_EML_Base_IH_Validation_6049 @6049 @EML @RS21099
  Scenario Outline: Supplementary Card Cross Sell Reminder_RS21099_6049_EMAIL Validate IH for Base Line Test Cases
    Given load data from "SupplementaryCard_Reminder" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then validate SuppCard Offer Details Against IH

    Examples:
      | Test cases                    |
      | 6049_BASE_Creative_01_Trig_01 |
      | 6049_BASE_Creative_02_Trig_02 |
      | 6049_BASE_Creative_03_Trig_04 |
      | 6049_BASE_Creative_04_Trig_01 |
      | 6049_BASE_Creative_05_Trig_01 |
      | 6049_BASE_Creative_06_Trig_01 |
      | 6049_BASE_Creative_07_Trig_01 |
      | 6049_BASE_Creative_08_Trig_01 |
      | 6049_BASE_Creative_09_Trig_01 |


# Positive Scenarios
  @SupplementaryCardCrossSell_Reminder_EML @SupplementaryCardCrossSell_Reminder_EML_Positive_IH_Validation_6049 @6049 @EML @RS21099
  Scenario Outline: Supplementary Card Cross Sell Reminder_RS21099_6049_EMAIL Validate IH for Positive Test Cases
    Given load data from "SupplementaryCard_Reminder" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then validate SuppCard Offer Details Against IH

    Examples:
      | Test cases                                                             |
      | 6049_EML_Seg_01_Trig_01_CRNT_BAL_AMT / CR_CRD_LMT_AMT_lt_0.85          |
      | 6049_EML_Seg_01_Trig_01_DO_NOT_SOLICIT_F_eq_NULL                       |
      | 6049_EML_Seg_02_Trig_02_CR_CRD_LMT_AMT_gt_2000                         |
      | 6049_EML_Seg_01_Trig_01_SRC_SYS_PRD_CD_eq_AXP_SRC_SYS_SUB_PRD_CD_eq_PC |
      | 6049_EML_Seg_02_Trig_02_SRC_SYS_PRD_CD_eq_AXG_SRC_SYS_SUB_PRD_CD_eq_GC |
      | 6049_EML_Seg_02_Trig_02_SRC_SYS_PRD_CD_eq_AXG_SRC_SYS_SUB_PRD_CD_eq_GS |
      | 6049_EML_Seg_03_Trig_04_SRC_SYS_PRD_CD_eq_VFF_SRC_SYS_SUB_PRD_CD_eq_TR |
      | 6049_EML_Seg_03_Trig_04_SRC_SYS_PRD_CD_eq_VFF_SRC_SYS_SUB_PRD_CD_eq_TS |
      | 6049_EML_Seg_04_Trig_01_SRC_SYS_PRD_CD_eq_VLR_SRC_SYS_SUB_PRD_CD_eq_RG |
      | 6049_EML_Seg_05_Trig_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_RG |
      | 6049_EML_Seg_05_Trig_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_ST |
      | 6049_EML_Seg_06_Trig_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_ZZ |
      | 6049_EML_Seg_07_Trig_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_NF |
      | 6049_EML_Seg_08_Trig_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_DM |
      | 6049_EML_Seg_09_Trig_01_SRC_SYS_PRD_CD_eq_AXS_SRC_SYS_SUB_PRD_CD_eq_SC |
      | 6049_EML_Seg_09_Trig_01_SRC_SYS_PRD_CD_eq_AXS_SRC_SYS_SUB_PRD_CD_eq_SS |
#      |CC Exclusion - Positive Scenarios|
      | 6049_EML_Seg_01_Trig_01_CC_Exclusion_ACCT_ODT_gt_90                    |
      | 6049_EML_Seg_01_Trig_01_CC_Exclusion_ACCT_SUBSYS_ID_ne_KS              |
      | 6049_EML_Seg_01_Trig_01_CC_Exclusion_ACCT_SUBSYS_ID_eq_NULL            |
      | 6049_EML_Seg_01_Trig_01_CC_Exclusion_PROD_HIER_LEVEL_3_ne_Credit Cards |
      | 6049_EML_Seg_01_Trig_01_CC_Exclusion_PROD_HIER_LEVEL_3_eq_NULL         |
      | 6049_EML_Seg_01_Trig_01_CC_Exclusion_SRC_ACCT_STAT_CD_ne_Open          |
      | 6049_EML_Seg_01_Trig_01_CC_Exclusion_SRC_ACCT_STAT_CD_eq_NULL          |
#      |Prioritization Scenarios|
      | 6049_EML_Seg_01_Trig_01_Prioritiz_AXP_PC_AND_AXG_GC                    |
      | 6049_EML_Seg_02_Trig_01_Prioritiz_AXG_GC_AND_AXG_GS                    |
      | 6049_EML_Seg_02_Trig_01_Prioritiz_AXG_GS_AND_VFF_TR                    |
      | 6049_EML_Seg_03_Trig_01_Prioritiz_VFF_TR_AND_VFF_TS                    |
      | 6049_EML_Seg_03_Trig_01_Prioritiz_VFF_TS_AND_VLR_RG                    |
      | 6049_EML_Seg_04_Trig_01_Prioritiz_VLR_RG_AND_VCL_RG                    |
      | 6049_EML_Seg_05_Trig_01_Prioritiz_VCL_RG_AND_VCL_ST                    |
      | 6049_EML_Seg_05_Trig_01_Prioritiz_VCL_ST_AND_VCL_ZZ                    |
      | 6049_EML_Seg_06_Trig_01_Prioritiz_VCL_ZZ_AND_VCL_NF                    |
      | 6049_EML_Seg_07_Trig_01_Prioritiz_VCL_NF_AND_VCL_DM                    |
      | 6049_EML_Seg_08_Trig_01_Prioritiz_VCL_DM_AND_AXS_SC                    |
      | 6049_EML_Seg_09_Trig_01_Prioritiz_AXS_SC_AND_AXS_SS                    |
#      |Reminder Specific Positive Scenarios|
      | 6049_EML_Seg_01_CUST_AGE_eq_18                                         |
      | 6049_EML_Seg_01_LANG_CD_eq_fr                                          |
      | 6049_EML_Seg_01_NOT_AML_KYC_eq_NULL                                    |
      | 6049_EML_Seg_01_MK_CC_INFO_ACCTS_EMAIL_F_eq_NULL                       |
#      |BB Exclusion - Positive Scenarios|
      | 6049_EML_Seg_01_BB_Exclusion_ACCT_SUBSYS_ID_ne_BB                      |
      | 6049_EML_Seg_01_BB_Exclusion_ACCT_SUBSYS_ID_eq_NULL                    |
      | 6049_EML_Seg_01_BB_Exclusion_SRC_ACCT_STAT_CD_ne_A                     |
      | 6049_EML_Seg_01_BB_Exclusion_SRC_ACCT_STAT_CD_eq_NULL                  |
      | 6049_EML_Seg_01_BB_Exclusion_ACCT_ODT_gt_90                            |
      | 6049_EML_Seg_01_BB_Exclusion_ACCT_ODT_eq_NULL                          |
      | 6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_01_SRC_SUB_PRD_CD_eq_08     |
      | 6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_NULL_SRC_SUB_PRD_CD_eq_NULL |



# Negative Scenarios
  @SupplementaryCardCrossSell_Reminder_EML @SupplementaryCardCrossSell_Reminder_EML_Negative_IH_Validation_6049 @6049 @EML @RS21099
  Scenario Outline: Supplementary Card Cross Sell Reminder_RS21099_6049_EMAIL Validate IH for Negative Test Cases
    Given load data from "SupplementaryCard_Reminder" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then verify using IH API that offer is not returned for "EML" channel

    Examples:
      | Test cases                                                                          |
      | N-6049_EML_Seg_01_Trig_01_CRNT_BAL_AMT / CR_CRD_LMT_AMT_eq_0.85                     |
      | N-6049_EML_Seg_01_Trig_01_CRNT_BAL_AMT / CR_CRD_LMT_AMT_gt_0.85                     |
      | N-6049_EML_Seg_01_Trig_01_CRNT_BAL_AMT / CR_CRD_LMT_AMT_eq_NULL                     |
      | N-6049_EML_Seg_01_Trig_01_DO_NOT_SOLICIT_F_eq_Y                                     |
      | N-6049_EML_Seg_01_Trig_01_SRC_SYS_PRD_CD_eq_VFF_SRC_SYS_SUB_PRD_CD_eq_SS            |
      | N-6049_EML_Seg_01_Trig_01_SRC_SYS_PRD_CD_eq_NULL_SRC_SYS_SUB_PRD_CD_eq_NULL         |
      | N-6049_EML_Seg_01_Trig_01_SUPPL_CREDIT_CARD_FLAG_ne_N                               |
      | N-6049_EML_Seg_01_Trig_01_SUPPL_CREDIT_CARD_FLAG_eq_NULL                            |
      | N-6049_EML_Seg_02_Trig_02_CHRGF_CD_ne_0                                             |
      | N-6049_EML_Seg_02_Trig_02_CHRGF_CD_eq_NULL                                          |
      | N-6049_EML_Seg_02_Trig_02_CR_CRD_LMT_AMT_eq_2000                                    |
      | N-6049_EML_Seg_02_Trig_02_CR_CRD_LMT_AMT_lt_2000                                    |
      | N-6049_EML_Seg_02_Trig_02_CR_CRD_LMT_AMT_eq_NULL                                    |
#      |CC Exclusion - Negative Scenarios|
      | N-6049_EML_Seg_01_Trig_01_CC_Exclusion_ACCT_ODT_lt_90                               |
      | N-6049_EML_Seg_01_Trig_01_CC_Exclusion_ACCT_ODT_eq_90                               |
#      |Reminder Specific Negative Scenarios|
      | N-6049_EML_Seg_01_CUST_AGE_lt_18                                                    |
      | N-6049_EML_Seg_01_CUST_AGE_eq_NULL                                                  |
      | N-6049_EML_Seg_01_LANG_CD_eq_bn                                                     |
      | N-6049_EML_Seg_01_LANG_CD_eq_NULL                                                   |
      | N-6049_EML_Seg_01_MRKTBLE_F_ne_Y                                                    |
      | N-6049_EML_Seg_01_MRKTBLE_F_eq_NULL                                                 |
      | N-6049_EML_Seg_01_NOT_AML_KYC_eq_Y                                                  |
      | N-6049_EML_Seg_01_MK_CC_INFO_ACCTS_EMAIL_F_eq_N                                     |
      | N-6049_EML_Seg_01_DO_NOT_EMAIL_F_ne_N                                               |
      | N-6049_EML_Seg_01_DO_NOT_EMAIL_F_eq_NULL                                            |
      | N-6049_EML_Seg_01_PRIM_EMAIL_ADDR_eq_NULL                                           |
      | N-6049_EML_Seg_01_INDV_FRST_NM_eq_NULL                                              |
      | N-6049_EML_Seg_01_PRIMARY_ACCT_HOLDER_FLAG_ne_Y                                     |
      | N-6049_EML_Seg_01_PRIMARY_ACCT_HOLDER_FLAG_eq_NULL                                  |
      | N-6049_EML_Seg_01_ACCT_SUBSYS_ID_ne_KS                                              |
      | N-6049_EML_Seg_01_ACCT_SUBSYS_ID_eq_NULL                                            |
      | N-6049_EML_Seg_01_SRC_ACCT_STAT_CD_ne_Open                                          |
      | N-6049_EML_Seg_01_SRC_ACCT_STAT_CD_eq_NULL                                          |
#      |BB Exclusion - Negative Scenarios|
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_01_SRC_SUB_PRD_CD_eq_01_ACCT_ODT_lt_90 |
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_01_SRC_SUB_PRD_CD_eq_02_ACCT_ODT_eq_90 |
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_01_SRC_SUB_PRD_CD_eq_03                |
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_01_SRC_SUB_PRD_CD_eq_04                |
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_02_SRC_SUB_PRD_CD_eq_01                |
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_02_SRC_SUB_PRD_CD_eq_02                |
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_02_SRC_SUB_PRD_CD_eq_03                |
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_19_SRC_SUB_PRD_CD_eq_01                |
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_19_SRC_SUB_PRD_CD_eq_02                |
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_19_SRC_SUB_PRD_CD_eq_03                |
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_19_SRC_SUB_PRD_CD_eq_04                |
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_19_SRC_SUB_PRD_CD_eq_07                |
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_19_SRC_SUB_PRD_CD_eq_08                |
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_01                |
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_03                |
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_07                |
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_08                |
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_07_SRC_SUB_PRD_CD_eq_11                |
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_07_SRC_SUB_PRD_CD_eq_12                |
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_23_SRC_SUB_PRD_CD_eq_01                |
      | N-6049_EML_Seg_01_BB_Exclusion_SRC_PRD_CD_eq_23_SRC_SUB_PRD_CD_eq_03                |

