@Near_Primacy_D2D_Bundle_Xsell_Anniversary_Offer_EML_6172_Batch_File_Validation
Feature: Validation for 6172 Near Primacy D2D Bundle Xsell Anniversary Offer in EML Channel Batch File Validation


  @Near_Primacy_D2D_Bundle_Xsell_Anniversary_Offer @Near_Primacy_D2D_Bundle_Xsell_Anniversary_Offer_EML_Batch_File_Base_Validation_6172 @6172 @EML @RS23146
  Scenario Outline: Near_Primacy_D2D_Bundle_Xsell_Anniversary_Offer RS23146_6172_EML Validate Batch File against database and pega for Base Line test cases
    Given load data from "Near_Primacy_D2D_Bundle_Xsell_Anniversary_Offer_6172" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "NearPrimacyD2DBundleXsellAnniversaryOffer_EML_Batch" extract file with batch "ProductCode;SubProductCode;AnniversaryYear;" Email Specific Text Header
    Then Validate Near Primacy D2D Bundle Xsell Anniversary offer details in batch file against database and pega
    Examples:
      | Test cases                      |
      | 6172_EML_BASE_Creative_01_or_02 |


  @Near_Primacy_D2D_Bundle_Xsell_Anniversary_Offer @Near_Primacy_D2D_Bundle_Xsell_Anniversary_Offer_EML_Batch_File_Positive_Validation_6172 @6172 @EML @RS23146
  Scenario Outline: Near_Primacy_D2D_Bundle_Xsell_Anniversary_Offer RS23146_6172_EML Validate Batch File against database and pega for Positive Line test cases
    Given load data from "Near_Primacy_D2D_Bundle_Xsell_Anniversary_Offer_6172" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "NearPrimacyD2DBundleXsellAnniversaryOffer_EML_Batch" extract file with batch "ProductCode;SubProductCode;AnniversaryYear;" Email Specific Text Header
    Then Validate Near Primacy D2D Bundle Xsell Anniversary offer details in batch file against database and pega
    Examples:
      | Test cases                                                  |
      | 6172_EML_Seg_01_or_02_EMPLOYEE_STAFF_F_eq_NULL              |
      | 6172_EML_Seg_01_or_02_NOT_AML_KYC_eq_NULL                   |
      | 6172_EML_Seg_01_or_02_DO_NOT_SOLICIT_F_eq_NULL              |
      | 6172_EML_Seg_01_or_02_CC_VIP_IND_eq_NULL                    |
      | 6172_EML_Seg_01_or_02_HARDBOUNCE_EMAIL_F_eq_NULL            |
      | 6172_EML_Seg_01_or_02_MK_BK_INFO_ACCTS_EMAIL_F _eq_NULL     |
      | 6172_EML_Seg_01_or_02_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_03 |
      | 6172_EML_Seg_01_or_02_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_07 |
      | 6172_EML_Seg_01_or_02_SRC_PRD_CD_eq_13_SRC_SUB_PRD_CD_eq_08 |
      | 6172_EML_Seg_01_or_02_SRC_PRD_CD_eq_23_SRC_SUB_PRD_CD_eq_01 |
      | 6172_EML_Seg_01_or_02_SRC_PRD_CD_eq_23_SRC_SUB_PRD_CD_eq_03 |
      | 6172_EML_Seg_01_or_02_CUST_AGE_eq_65                        |
      | 6172_EML_Seg_01_or_02_Scotia_Ultimate_ACCT_SUBSYS_ID_eq_BB  |
      | 6172_EML_Seg_01_or_02_Ultimate_ACCT_SUBSYS_ID_eq_BB         |
      | 6172_EML_Seg_01_or_02_PRIM_PROV_CD_eq_NULL                  |
      | 6172_EML_Seg_01_or_02_FICO_SCORE_eq_700                     |
      | 6172_EML_Seg_01_or_02_FICO_SCORE_gt_700                     |
      | 6172_EML_Seg_01_or_02_FICO_SCORE_lt_700                     |
      | 6172_EML_Seg_01_or_02_FICO_SCORE_eq_NULL                    |
      | 6172_EML_Seg_01_or_02_PAC_PAYRL_F_ne_1                      |
      | 6172_EML_Seg_01_or_02_PAC_PAYRL_F_eq_1                      |








