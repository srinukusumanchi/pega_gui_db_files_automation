Feature: Batch file validation for Supplementary Card_Cross Sell RS21099
#  Properties	          Description	               Mandatory(Y/N)	PegaSource	DatabaseTable	    Database Field	                           Comments
#  .CUST_ID	             Customer ID	                Y	             Database	CUST_DIM	        CIS_CUST_ID
#  .PRIM_EMAIL_ADDR	     Email Address	                Y	             Database	CUST_DIM	        PRIM_EMAIL_ADDR
#  .INDV_TTL_NM	         Individual Title	            N	             Database	CUST_DIM	        INDV_TTL_NM
#  .INDV_FRST_NM	     Individual First Name	        Y	             Database	CUST_DIM	        INDV_FRST_NM
#  .INDV_LAST_NM	     Individual Last Name	        N	             Database	CUST_DIM	        INDV_LAST_NM
#  .LanguageCode	     Language Code	                Y	             Database	CUST_DIM	        LANG_CD	Format:                         Uppercase first letter (i.e. 'E')
#  .OfferExpiry	         Offer expiry date	            N	             Database 	ACCT_DIM	        CLI_OFR_EXP_DT  	                    Earliest expiry from all eligible customer/account. Example: 20200506 (need to remove dashes
#                               +
#                           Strategy
#  Offer Code	         OfferID (pyName)	            Y	             Action	    pyName	            Last 4 digits (remove 'CIE')
#  Campaign Code	     Campaign code	                Y	             Action	    Campaign Code
#  .CreativeID	         CreativeID	                    Y	             Action  	Creative ID		                                            Default will be from Action. Strategy can overwrite if there is segmentation logic.
#                           or
#                         Strategy
#  .pxInteractionID	     Pega's Interaction ID	        Y	             Strategy	Foundation
#  Response tracking code Pega's Response tracking code	Y	             Strategy	Foundation	        InteractionID+'_'pyName
#  Mail ID	             Mail ID	                    N	             Strategy	Unique Number		                                        Need to be the same as DM file
#                                                                                      starting from
#                                                                                      2 Alpha characters
#                                                                                      + 6 Numeric values
#    .EmailSpecificText (separated by |):	      Example:  |TFF|VR

# Sep 28th 2023 Release

# Base Scenarios
  @SupplementaryCardCrossSell_EML @SupplementaryCardCrossSell_EML_Base_Batch_Validation_5468 @5468 @EML @RS21099
  Scenario Outline: Supplementary Card Cross Sell_RS21099_5468_EMAIL Validate Batch File for Base Line test cases Sep 28th 2023 Release
    Given load data from "SupplementaryCard" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
#    And read SupplementaryCard CrossSell "SUPPLCARD" extract file customer offer details
    And read "SuppCard_Initial_CIE5468_EML_Batch" extract file with batch "PrdCode;SubPrdCd;" Email Specific Text Header
    Then validate SupplementaryCard offer details in batch file against database and pega

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
  @SupplementaryCardCrossSell_EML @SupplementaryCardCrossSell_EML_Positive_Batch_Validation_5468 @5468 @EML @RS21099
  Scenario Outline: Supplementary Card Cross Sell_RS21099_5468_EMAIL Validate Batch File for Positive test cases Sep 28th 2023 Release
    Given load data from "SupplementaryCard" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
#    And read SupplementaryCard CrossSell "SUPPLCARD" extract file customer offer details
    And read "SuppCard_Initial_CIE5468_EML_Batch" extract file with batch "PrdCode;SubPrdCd;" Email Specific Text Header
    Then validate SupplementaryCard offer details in batch file against database and pega

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
#      | CC Exclusion - Positive Scenarios                                                      |
      | 5468_EML_Seg_01_Trig_01_CC_Exclusion_ACCT_ODT_gt_90                                    |
      | 5468_EML_Seg_01_Trig_01_CC_Exclusion_ACCT_SUBSYS_ID_ne_KS                              |
      | 5468_EML_Seg_01_Trig_01_CC_Exclusion_ACCT_SUBSYS_ID_eq_NULL                            |
      | 5468_EML_Seg_01_Trig_01_CC_Exclusion_PROD_HIER_LEVEL_3_ne_Credit Cards                 |
      | 5468_EML_Seg_01_Trig_01_CC_Exclusion_PROD_HIER_LEVEL_3_eq_NULL                         |
      | 5468_EML_Seg_01_Trig_01_CC_Exclusion_SRC_ACCT_STAT_CD_ne_Open                          |
      | 5468_EML_Seg_01_Trig_01_CC_Exclusion_SRC_ACCT_STAT_CD_eq_NULL                          |
#      | Prioritization Scenarios                                                               |
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






#Old Scenarios

  @SuppCardCrossSellEmail_5468 @SuppCardCrossSellEmail_DatFile_Positive_Validation_5468 @5468 @EMAIL @RS21099
  Scenario Outline: Supplementary Card CrossSellEmail_RS21099_5468_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "SupplementaryCard" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
#    And read SupplementaryCard CrossSell "SUPPLCARD" extract file customer offer details
    And read "SuppCard_Initial_CIE5468_EML_Batch" extract file with batch "PrdCode;SubPrdCd;" Email Specific Text Header
    Then validate SupplementaryCard offer details in batch file against database and pega

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






