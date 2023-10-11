Feature: Validation for 5468 Supplementary Card Cross Sell

  @SuppCardCrossSellEmail @SuppCardCrossSell_IHPositive_Validation_5468 @5468 @EMAIL @RS21099
  Scenario Outline: Supplementary Card CrossSell_RS21099_5468_EMAIL Validate offer details against IH for Positive test cases
    Given load data from "SupplementaryCard" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
#    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
#    And the user navigates to pega url
#    When the user enters user name, password and click on login in pega Login screen
#    And click on interaction History by customer link
#    And click on actions and run in interactions history By customer screen
#    When click on period link and clear today value
#    And enter customer id in ih by customer screen and get IH table data
    Then validate SuppCard Offer Details Against IH
    Examples:
      | Test cases                                                                                                                                                                                          |
      | 5468_CUST_TP_CD=PSNL, Primary Country Cd = CA, MRKTBLE_F = Y, Customer Not Decease, CUST_AGE >18                                                                                                    |
      | 5468_CUST_AGE=18                                                                                                                                                                                    |
      | 5468_LANG_CD in EN                                                                                                                                                                                  |
      | 5468_LANG_CD in E                                                                                                                                                                                   |
      | 5468_LANG_CD in F                                                                                                                                                                                   |
      | 5468_LANG_CD in FR                                                                                                                                                                                  |
      | 5468_LANG_CD in small case_e                                                                                                                                                                        |
      | 5468_LANG_CD in small case_en                                                                                                                                                                       |
      | 5468_LANG_CD in small case_f                                                                                                                                                                        |
      | 5468_LANG_CD in small case_fr                                                                                                                                                                       |
      | 5468_DO_NOT_SOLICIT_F = NULL                                                                                                                                                                        |
      | 5468_DO_NOT_EMAIL_F=N                                                                                                                                                                               |
      | 5468_VLD_EML_F=Y                                                                                                                                                                                    |
      | 5468_PRIM_EMAIL_ADDRESS!=NULL                                                                                                                                                                       |
      | 5468_INDV_FRST_NM!=NULL/BLANK                                                                                                                                                                       |
      | 5468_NOT_AML_KYC = NULL                                                                                                                                                                             |
      | 5468_SOL_LAST_LOGIN < = 6months and MOB_LAST_LOGIN > 6 months                                                                                                                                       |
      | 5468_SOL_LAST_LOGIN > 6months and MOB_LAST_LOGIN < 6 months                                                                                                                                         |
      | 5468_SOL_LAST_LOGIN < = 6months and MOB_LAST_LOGIN <= 6 months                                                                                                                                      |
      | 5468_SOL_LAST_LOGIN = 6months and MOB_LAST_LOGIN = 6 months                                                                                                                                         |
      | 5468_ACCT_SUBSYS_ID=KS                                                                                                                                                                              |
      | 5468_PRIMARY_ACCT_HOLDER_FLAG = Y                                                                                                                                                                   |
      | 5468_CHRGF_CD = 0                                                                                                                                                                                   |
      | 5468_BLOCK_CD and RECL_CD both blank                                                                                                                                                                |
      | 5468_BLOCK_CD and RECL_CD -  C                                                                                                                                                                      |
      | 5468_BLOCK_CD and RECL_CD  - XH                                                                                                                                                                     |
      | 5468_BLOCK_CD and RECL_CD  -  NULL                                                                                                                                                                  |
      | 5468_CUST_ACCT_RLTNP_DIM.PLASTIC_TP_CD != A                                                                                                                                                         |
      | 5468_IP_AR_RELATN_TYPE_CD!=SUP                                                                                                                                                                      |
      | 5468_CUST_INSIGHTS.INSIGHT_CD = DECILE_CREDITCARD_SUPPL_PROPENSITY and CUST_INSIGHTS.CURR_VAL = 1                                                                                                   |
      | 5468_CUST_INSIGHTS.INSIGHT_CD = DECILE_CREDITCARD_SUPPL_PROPENSITY and CUST_INSIGHTS.CURR_VAL = 2                                                                                                   |
      | 5468_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_CREDITCARD_SUPPL and CUST_INSIGHTS.CURR_VAL = 1                                                                                                       |
      | 5468_CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_CREDITCARD_SUPPL and CUST_INSIGHTS.CURR_VAL > 1                                                                                                       |
      | 5468_VCL_ZZ & ACCT_ODT>90                                                                                                                                                                           |
      | 5468_VLR_RG & ACCT_ODT>90                                                                                                                                                                           |
      | 5468_VCL_DM & ACCT_ODT>90                                                                                                                                                                           |
      | 5468_VCL_RG & ACCT_ODT>90                                                                                                                                                                           |
      | 5468_VCL_NF & ACCT_ODT>90                                                                                                                                                                           |
      | 5468_AXG_GC & ACCT_ODT>90                                                                                                                                                                           |
      | 5468_VFF_TR & ACCT_ODT>90                                                                                                                                                                           |
      | 5468_CUST_OPNT_DT != NULL                                                                                                                                                                           |
      | 5468_VFF_TS & ACCT_ODT>90                                                                                                                                                                           |
      | 5468_AXG_GS & ACCT_ODT>90                                                                                                                                                                           |
      | 5468_VCL_ST & ACCT_ODT>90                                                                                                                                                                           |
      | 5468_VCL_ZZ & ACCT_ODT>90 and 01_02 & ACCT_ODT>90                                                                                                                                                   |
      | 5468_IP_AR_RELATN_TYPE_CD!=SUP_multiple accounts                                                                                                                                                    |
      | 5468_VLR_RG & ACCT_ODT>90 and 01_04 & ACCT_ODT>90                                                                                                                                                   |
      | 5468_VCL_DM & ACCT_ODT>90 and 02_02 & ACCT_ODT>90                                                                                                                                                   |
      | 5468_VCL_RG & ACCT_ODT>90 and 02_03 & ACCT_ODT>90                                                                                                                                                   |
      | 5468_VFF_TR & ACCT_ODT>90 and 23_03 & ACCT_ODT>90                                                                                                                                                   |
      | 5468_VFF_TR & ACCT_ODT>90 and VFF_TS & ACCT_ODT>90                                                                                                                                                  |
      | 5468_VCL_RG & ACCT_ODT>90 and VLR_RG & ACCT_ODT>90                                                                                                                                                  |
      | 5468_AXG_GC & Acct_odt>90 and AXG_GS & Acct_odt>90                                                                                                                                                  |
      | 5468_(CUST_INSIGHTS.INSIGHT_CD = DECILE_CREDITCARD_SUPPL_PROPENSITY and CUST_INSIGHTS.CURR_VAL = 1) AND (CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_CREDITCARD_SUPPL and CUST_INSIGHTS.CURR_VAL = 1)  |
      | 5468_(CUST_INSIGHTS.INSIGHT_CD = DECILE_CREDITCARD_SUPPL_PROPENSITY and CUST_INSIGHTS.CURR_VAL = 1) AND (CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_CREDITCARD_SUPPL and CUST_INSIGHTS.CURR_VAL > 1)  |
      | 5468_(CUST_INSIGHTS.INSIGHT_CD = DECILE_CREDITCARD_SUPPL_PROPENSITY and CUST_INSIGHTS.CURR_VAL != 1) AND (CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_CREDITCARD_SUPPL and CUST_INSIGHTS.CURR_VAL = 1) |
      | 5468_(CUST_INSIGHTS.INSIGHT_CD = DECILE_CREDITCARD_SUPPL_PROPENSITY and CUST_INSIGHTS.CURR_VAL = 1) AND (CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_CREDITCARD_SUPPL and CUST_INSIGHTS.CURR_VAL < 1)  |
      | 5468_(CUST_INSIGHTS.INSIGHT_CD = DECILE_CREDITCARD_SUPPL_PROPENSITY and CUST_INSIGHTS.CURR_VAL = 2) AND (CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_CREDITCARD_SUPPL and CUST_INSIGHTS.CURR_VAL = 1)  |
      | 5468_(CUST_INSIGHTS.INSIGHT_CD = DECILE_CREDITCARD_SUPPL_PROPENSITY and CUST_INSIGHTS.CURR_VAL = 2) AND (CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_CREDITCARD_SUPPL and CUST_INSIGHTS.CURR_VAL > 1)  |
      | 5468_(CUST_INSIGHTS.INSIGHT_CD = DECILE_CREDITCARD_SUPPL_PROPENSITY and CUST_INSIGHTS.CURR_VAL = 2) AND (CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_CREDITCARD_SUPPL and CUST_INSIGHTS.CURR_VAL < 1)  |
      | 5468_IP_AR_RELATN_TYPE_CD=SUP                                                                                                                                                                       |


  @SuppCardCrossSellEmail @SuppCardCrossSellEmail_IHNegative_Validation_5468 @5468 @EMAIL @RS21099
  Scenario Outline: Supplementary Card CrossSell Email_RS21099_5468_EMAIL Validate offer details against IH for Negative test cases
    Given load data from "SupplementaryCard" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then verify offer should not display
    Examples:
      | Test cases                                                                                                                                                                                                 |
      | N-5468_VGD_NF & ACCT_ODT>90                                                                                                                                                                                |
      | N-5468_VCL_SS & ACCT_ODT>90                                                                                                                                                                                |
      | N-5468_VLR_NF & ACCT_ODT>90                                                                                                                                                                                |
      | N-5468_VCL_SV & ACCT_ODT>90                                                                                                                                                                                |
      | N-5468_VFA_A1 & ACCT_ODT>90                                                                                                                                                                                |
      | N-5468_VFF_F1 & ACCT_ODT>90                                                                                                                                                                                |
      | N-5468_AXS_SC & ACCT_ODT>90                                                                                                                                                                                |
      | N-5468_AXP_PC & ACCT_ODT>90                                                                                                                                                                                |
      | N-5468_VLR_RC & ACCT_ODT>90                                                                                                                                                                                |
      | N-5468_CUST_TP_CD !=PSNL                                                                                                                                                                                   |
      | N-5468_DO_NOT_EMAIL_F=Y                                                                                                                                                                                    |
      | N-5468_DO_NOT_EMAIL_F=NULL                                                                                                                                                                                 |
      | N-5468_VLD_EML_F=N                                                                                                                                                                                         |
      | N-5468_VLD_EML_F=NULL                                                                                                                                                                                      |
      | N-5468_PRIM_EMAIL_ADDRESS =NULL                                                                                                                                                                            |
      | N-5468_INDV_FRST_NM =NULL/BLANK                                                                                                                                                                            |
      | N-5468_SOL_LAST_LOGIN_DT and MOB_LAST_LOGIN_DT > 6 months                                                                                                                                                  |
      | N-5468_Primary Country Cd != CA                                                                                                                                                                            |
      | N-5468_Primary Country Cd = NULL                                                                                                                                                                           |
      | N-5468_CUST_AGE < 18                                                                                                                                                                                       |
      | N-5468_CUST_AGE = NULL                                                                                                                                                                                     |
      | N-5468_LANG_CD NOT in (EN, E, FR, F)                                                                                                                                                                       |
      | N-5468_LANG_CD = NULL                                                                                                                                                                                      |
      | N-5468_DO_NOT_SOLICIT_F = Y                                                                                                                                                                                |
      | N-5468_MRKTBLE_F = N                                                                                                                                                                                       |
      | N-5468_MRKTBLE_F = NULL                                                                                                                                                                                    |
      | N-5468_NOT_AML_KYC = Y                                                                                                                                                                                     |
      | N-5468_Customer Decease - Y                                                                                                                                                                                |
      | N-5468_Customer Decease - NULL                                                                                                                                                                             |
      | N-5468_VGD_NF & ACCT_ODT <90                                                                                                                                                                               |
      | N-5468_VCL_ZZ & ACCT_ODT = 90                                                                                                                                                                              |
      | N-5468_01_07                                                                                                                                                                                               |
      | N-5468_02_05                                                                                                                                                                                               |
      | N-5468_19_05                                                                                                                                                                                               |
      | N-5468_13_05                                                                                                                                                                                               |
      | N-5468_07_01                                                                                                                                                                                               |
      | N-5468_23_02                                                                                                                                                                                               |
      | N-5468_VGD_AB                                                                                                                                                                                              |
      | N-5468_VCL_BC                                                                                                                                                                                              |
      | N-5468_VLR_CD                                                                                                                                                                                              |
      | N-5468_(CUST_INSIGHTS.INSIGHT_CD = DECILE_CREDITCARD_SUPPL_PROPENSITY and CUST_INSIGHTS.CURR_VAL < 1)                                                                                                      |
      | N-5468_(CUST_INSIGHTS.INSIGHT_CD = DECILE_CREDITCARD_SUPPL_PROPENSITY and CUST_INSIGHTS.CURR_VAL != 1 or 2)                                                                                                |
      | N-5468_(CUST_INSIGHTS.INSIGHT_CD = DECILE_CREDITCARD_SUPPL_PROPENSITY and CUST_INSIGHTS.CURR_VAL > 2)                                                                                                      |
      | N-5468_(CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_CREDITCARD_SUPPL and CUST_INSIGHTS.CURR_VAL < 1)                                                                                                          |
      | N-5468_01_07                                                                                                                                                                                               |
      | N-5468_02_05                                                                                                                                                                                               |
      | N-5468_19_05                                                                                                                                                                                               |
      | N-5468_13_05                                                                                                                                                                                               |
      | N-5468_07_01                                                                                                                                                                                               |
      | N-5468_23_02                                                                                                                                                                                               |
      | N-5468_VGD_NF & ACCT_ODT>90 and 01_01 & ACCT_ODT>90                                                                                                                                                        |
      | N-5468_VCL_SS & ACCT_ODT>90 and 01_03 & ACCT_ODT>90                                                                                                                                                        |
      | N-5468_VLR_NF & ACCT_ODT>90 and 02_01 & ACCT_ODT>90                                                                                                                                                        |
      | N-5468_VGD_NF & ACCT_ODT>90 and 19_08 & ACCT_ODT>90                                                                                                                                                        |
      | N-5468_VGD_NF & ACCT_ODT>90 & ACCT_SUBSYS_ID=KS & SRC_ACCT_STAT_CD = A and 01_01 & ACCT_ODT < 90                                                                                                           |
      | N-5468_VCL_ZZ & ACCT_ODT>90 & ACCT_SUBSYS_ID=BB & SRC_ACCT_STAT_CD = Open and 01_02 & ACCT_ODT = 90                                                                                                        |
      | N-5468_VGD_NF & ACCT_ODT>90, and 01_01 & ACCT_ODT>90 and  ACCT_SUBSYS_ID=BB & SRC_ACCT_STAT_CD = B                                                                                                         |
      | N-5468_VGD_NF & ACCT_ODT>90, and 01_01 & ACCT_ODT>90 and  ACCT_SUBSYS_ID=KS & SRC_ACCT_STAT_CD = A                                                                                                         |
      | N-5468_(CUST_INSIGHTS.INSIGHT_CD = DECILE_CREDITCARD_SUPPL_PROPENSITY and CUST_INSIGHTS.CURR_VAL < 1) and (CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_CREDITCARD_SUPPL and CUST_INSIGHTS.CURR_VAL < 1)       |
      | N-5468_(CUST_INSIGHTS.INSIGHT_CD = DECILE_CREDITCARD_SUPPL_PROPENSITY and CUST_INSIGHTS.CURR_VAL != 1 or 2) and (CUST_INSIGHTS.INSIGHT_CD = CNT_PAGEVISIT_CREDITCARD_SUPPL and CUST_INSIGHTS.CURR_VAL < 1) |
      | N-5468_VGD_RG & ACCT_ODT>90                                                                                                                                                                                |
      | N-5468_VGD_RG & ACCT_ODT>90 and 19_01 & ACCT_ODT>90                                                                                                                                                        |


# July 20th 2023 Release

  # Positive
  @SuppCardCrossSellEmail @SuppCardCrossSell_IHPositive_Validation_5468_July_20_2023 @5468 @EMAIL @RS21099
  Scenario Outline: Supplementary Card CrossSell_RS21099_5468_EMAIL Validate offer details against IH for Positive test cases for July 20 2023 Release
    Given load data from "SupplementaryCard" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then validate SuppCard Offer Details Against IH

    Examples:
      | Test cases                                                       |
      | 5468_Seg_01_Trig_04_ExtTable_VALID_START_DATE_lt_Curr_Dt         |
      | 5468_Seg_01_Trig_04_ExtTable_VALID_START_DATE_eq_Curr_Dt         |
      | 5468_Seg_01_Trig_04_ExtTable_VALID_END_DATE_gt_Curr_Dt           |
      | 5468_Seg_01_Trig_04_ExtTable_VALID_END_DATE_eq_Curr_Dt           |
      | 5468_Seg_01_Trig_04_ExtTable_2_Records                           |
      | 5468_EML_Seg_01_Trig_02_ExtTable_CAMPAIGN_CELL_CODE_FLAG_ne_N    |
      | 5468_EML_Seg_01_Trig_02_ExtTable_CAMPAIGN_CELL_CODE_FLAG_eq_NULL |
      | 5468_EML_Seg_01_Trig_02_ExtTable_VALID_END_DATE_lt_Curr_Dt       |
      | 5468_EML_Seg_01_Trig_02_ExtTable_VALID_START_DATE_gt_Curr_Dt     |

  @SuppCardCrossSellEmail @SuppCardCrossSellEmail_IHNegative_Validation_5468_July_20_2023 @5468 @EMAIL @RS21099
  Scenario Outline: Supplementary Card CrossSell_RS21099_5468_EMAIL Validate offer details against IH for Negative test cases for July 20 2023 Release
    Given load data from "SupplementaryCard" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then verify offer should not display

    Examples:
      | Test cases                                                     |
      | N-5468_Seg_01_Trig_04_ExtTable_VALID_START_DATE_gt_Curr_Dt     |
      | N-5468_Seg_01_Trig_04_ExtTable_VALID_END_DATE_lt_Curr_Dt       |
      | N-5468_Seg_01_Trig_04_ExtTable_CAMPAIGN_CODE_ne_RS21099        |
      | N-5468_Seg_01_Trig_04_ExtTable_CAMPAIGN_CELL_CODE_ne_CIE5468   |
      | N-5468_Seg_01_Trig_04_ExtTable_CAMPAIGN_CELL_CODE_eq_NULL      |
      | N-5468_Seg_01_Trig_04_ExtTable_CAMPAIGN_CELL_CODE_FLAG_ne_Y    |
      | N-5468_Seg_01_Trig_04_ExtTable_CAMPAIGN_CELL_CODE_FLAG_eq_NULL |
      | N-5468_Seg_01_Trig_04_ExtTable_EMAIL_CHANNEL_ne_Y              |
      | N-5468_Seg_01_Trig_04_ExtTable_EMAIL_CHANNEL_eq_NULL           |
      | N-5468_EML_Seg_01_Trig_02_ExtTable_VALID_END_DATE_gt_Curr_Dt   |
      | N-5468_EML_Seg_01_Trig_02_ExtTable_VALID_END_DATE_eq_Curr_Dt   |
      | N-5468_EML_Seg_01_Trig_02_ExtTable_VALID_START_DATE_lt_Curr_Dt |
      | N-5468_EML_Seg_01_Trig_02_ExtTable_VALID_START_DATE_eq_Curr_Dt |



# Sep 28th 2023 Release

# Base Scenarios
  @SupplementaryCardCrossSell_EML @SupplementaryCardCrossSell_EML_Base_IH_Validation_5468 @5468 @EML @RS21099
  Scenario Outline: Supplementary Card Cross Sell_RS21099_5468_EMAIL Validate IH for Base Line test cases Sep 28th 2023 Release
    Given load data from "SupplementaryCard" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then validate SuppCard Offer Details Against IH

    Examples:
      | Test cases                    |
      | 5468_BASE_Creative_01_Trig_01 |
      | 5468_BASE_Creative_02_Trig_02 |
      | 5468_BASE_Creative_03_Trig_04 |
      | 5468_BASE_Creative_04_Trig_01 |
      | 5468_BASE_Creative_05_Trig_01 |
      | 5468_BASE_Creative_06_Trig_01 |
      | 5468_BASE_Creative_07_Trig_01 |
      | 5468_BASE_Creative_08_Trig_01 |
      | 5468_BASE_Creative_09_Trig_01 |


# Positive Scenarios
  @SupplementaryCardCrossSell_EML @SupplementaryCardCrossSell_EML_Positive_IH_Validation_5468 @5468 @EML @RS21099
  Scenario Outline: Supplementary Card Cross Sell_RS21099_5468_EMAIL Validate IH for Positive test cases Sep 28th 2023 Release
    Given load data from "SupplementaryCard" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then validate SuppCard Offer Details Against IH

    Examples:
      | Test cases                                                                             |
      | 5468_EML_Seg_01_Trig_01_CRNT_BAL_AMT / CR_CRD_LMT_AMT_lt_0.85                          |
      | 5468_EML_Seg_01_Trig_01_DO_NOT_SOLICIT_F_eq_NULL                                       |
      | 5468_EML_Seg_01_Trig_01_INSIGHT_CD_eq_DECILE_CREDITCARD_SUPPL_PROPENSITY_CURR_VAL_gt_1 |
      | 5468_EML_Seg_01_Trig_01_INSIGHT_CD_eq_DECILE_CREDITCARD_SUPPL_PROPENSITY_CURR_VAL_eq_1 |
      | 5468_EML_Seg_01_Trig_01_INSIGHT_CD_eq_DECILE_CREDITCARD_SUPPL_PROPENSITY_CURR_VAL_lt_5 |
      | 5468_EML_Seg_01_Trig_01_INSIGHT_CD_eq_DECILE_CREDITCARD_SUPPL_PROPENSITY_CURR_VAL_eq_5 |
      | 5468_EML_Seg_02_Trig_02_CR_CRD_LMT_AMT_gt_2000                                         |
      | 5468_EML_Seg_01_Trig_01_SRC_SYS_PRD_CD_eq_AXP_SRC_SYS_SUB_PRD_CD_eq_PC                 |
      | 5468_EML_Seg_02_Trig_02_SRC_SYS_PRD_CD_eq_AXG_SRC_SYS_SUB_PRD_CD_eq_GC                 |
      | 5468_EML_Seg_02_Trig_02_SRC_SYS_PRD_CD_eq_AXG_SRC_SYS_SUB_PRD_CD_eq_GS                 |
      | 5468_EML_Seg_03_Trig_04_SRC_SYS_PRD_CD_eq_VFF_SRC_SYS_SUB_PRD_CD_eq_TR                 |
      | 5468_EML_Seg_03_Trig_04_SRC_SYS_PRD_CD_eq_VFF_SRC_SYS_SUB_PRD_CD_eq_TS                 |
      | 5468_EML_Seg_04_Trig_01_SRC_SYS_PRD_CD_eq_VLR_SRC_SYS_SUB_PRD_CD_eq_RG                 |
      | 5468_EML_Seg_05_Trig_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_RG                 |
      | 5468_EML_Seg_05_Trig_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_ST                 |
      | 5468_EML_Seg_06_Trig_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_ZZ                 |
      | 5468_EML_Seg_07_Trig_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_NF                 |
      | 5468_EML_Seg_08_Trig_01_SRC_SYS_PRD_CD_eq_VCL_SRC_SYS_SUB_PRD_CD_eq_DM                 |
      | 5468_EML_Seg_09_Trig_01_SRC_SYS_PRD_CD_eq_AXS_SRC_SYS_SUB_PRD_CD_eq_SC                 |
      | 5468_EML_Seg_09_Trig_01_SRC_SYS_PRD_CD_eq_AXS_SRC_SYS_SUB_PRD_CD_eq_SS                 |
#      |CC Exclusion - Positive Scenarios|
      | 5468_EML_Seg_01_Trig_01_CC_Exclusion_ACCT_ODT_gt_90                                    |
      | 5468_EML_Seg_01_Trig_01_CC_Exclusion_ACCT_SUBSYS_ID_ne_KS                              |
      | 5468_EML_Seg_01_Trig_01_CC_Exclusion_ACCT_SUBSYS_ID_eq_NULL                            |
      | 5468_EML_Seg_01_Trig_01_CC_Exclusion_PROD_HIER_LEVEL_3_ne_Credit Cards                 |
      | 5468_EML_Seg_01_Trig_01_CC_Exclusion_PROD_HIER_LEVEL_3_eq_NULL                         |
      | 5468_EML_Seg_01_Trig_01_CC_Exclusion_SRC_ACCT_STAT_CD_ne_Open                          |
      | 5468_EML_Seg_01_Trig_01_CC_Exclusion_SRC_ACCT_STAT_CD_eq_NULL                          |
#      |Prioritization Scenarios|
      | 5468_EML_Seg_01_Trig_01_Prioritiz_AXP_PC_AND_AXG_GC                                    |
      | 5468_EML_Seg_02_Trig_01_Prioritiz_AXG_GC_AND_AXG_GS                                    |
      | 5468_EML_Seg_02_Trig_01_Prioritiz_AXG_GS_AND_VFF_TR                                    |
      | 5468_EML_Seg_03_Trig_01_Prioritiz_VFF_TR_AND_VFF_TS                                    |
      | 5468_EML_Seg_03_Trig_01_Prioritiz_VFF_TS_AND_VLR_RG                                    |
      | 5468_EML_Seg_04_Trig_01_Prioritiz_VLR_RG_AND_VCL_RG                                    |
      | 5468_EML_Seg_05_Trig_01_Prioritiz_VCL_RG_AND_VCL_ST                                    |
      | 5468_EML_Seg_05_Trig_01_Prioritiz_VCL_ST_AND_VCL_ZZ                                    |
      | 5468_EML_Seg_06_Trig_01_Prioritiz_VCL_ZZ_AND_VCL_NF                                    |
      | 5468_EML_Seg_07_Trig_01_Prioritiz_VCL_NF_AND_VCL_DM                                    |
      | 5468_EML_Seg_08_Trig_01_Prioritiz_VCL_DM_AND_AXS_SC                                    |
      | 5468_EML_Seg_09_Trig_01_Prioritiz_AXS_SC_AND_AXS_SS                                    |




# Negative Scenarios
  @SupplementaryCardCrossSell_EML @SupplementaryCardCrossSell_EML_Negative_IH_Validation_5468 @5468 @EML @RS21099
  Scenario Outline: Supplementary Card Cross Sell_RS21099_5468_EMAIL Validate IH for Negative test cases Sep 28th 2023 Release
    Given load data from "SupplementaryCard" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then verify using IH API that offer is not returned for "EML" channel

    Examples:
      | Test cases                                                                               |
      | N-5468_EML_Seg_01_Trig_01_CRNT_BAL_AMT / CR_CRD_LMT_AMT_eq_0.85                          |
      | N-5468_EML_Seg_01_Trig_01_CRNT_BAL_AMT / CR_CRD_LMT_AMT_gt_0.85                          |
      | N-5468_EML_Seg_01_Trig_01_CRNT_BAL_AMT / CR_CRD_LMT_AMT_eq_NULL                          |
      | N-5468_EML_Seg_01_Trig_01_DO_NOT_SOLICIT_F_eq_Y                                          |
      | N-5468_EML_Seg_01_Trig_01_INSIGHT_CD_eq_DECILE_CREDITCARD_SUPPL_PROPENSITY_CURR_VAL_gt_5 |
      | N-5468_EML_Seg_01_Trig_01_SRC_SYS_PRD_CD_eq_VFF_SRC_SYS_SUB_PRD_CD_eq_SS                 |
      | N-5468_EML_Seg_01_Trig_01_SRC_SYS_PRD_CD_eq_NULL_SRC_SYS_SUB_PRD_CD_eq_NULL              |
      | N-5468_EML_Seg_01_Trig_01_SUPPL_CREDIT_CARD_FLAG_ne_N                                    |
      | N-5468_EML_Seg_01_Trig_01_SUPPL_CREDIT_CARD_FLAG_eq_NULL                                 |
      | N-5468_EML_Seg_02_Trig_02_CHRGF_CD_ne_0                                                  |
      | N-5468_EML_Seg_02_Trig_02_CHRGF_CD_eq_NULL                                               |
      | N-5468_EML_Seg_02_Trig_02_CR_CRD_LMT_AMT_eq_2000                                         |
      | N-5468_EML_Seg_02_Trig_02_CR_CRD_LMT_AMT_lt_2000                                         |
      | N-5468_EML_Seg_02_Trig_02_CR_CRD_LMT_AMT_eq_NULL                                         |
#      |CC Exclusion - Negative Scenarios|
      | N-5468_EML_Seg_01_Trig_01_CC_Exclusion_ACCT_ODT_lt_90                                    |
      | N-5468_EML_Seg_01_Trig_01_CC_Exclusion_ACCT_ODT_eq_90                                    |

