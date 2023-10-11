@Itrade_Xsell_Always_on_EML_6109_Batch_File_Validation
Feature: Validation for 6109 Itrade Xsell Always on in EML Channel Batch File Validation


  @Itrade_Xsell_Always_on @Itrade_Xsell_Always_on_EML_Batch_File_Base_Validation_6109 @6109 @EML @RS23101
  Scenario Outline: Itrade_Xsell_Always_on RS23101_6109_EML Validate Batch File against database and pega for Base Line test cases
    Given load data from "Itrade_Xsell_6109" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "ItradeXsellAlwayson_EML_Batch" extract file with batch "" Email Specific Text Header
    Then Validate Itrade Xsell Always on offer details in batch file against database and pega
    Examples:
      | Test cases                |
      | 6109_EML_BASE_Creative_01 |
      | 6109_EML_BASE_Creative_02 |
      | 6109_EML_BASE_Creative_03 |
      | 6109_EML_BASE_Creative_04 |
      | 6109_EML_BASE_Creative_05 |
      | 6109_EML_BASE_Creative_06 |
      | 6109_EML_BASE_Creative_07 |

  @Itrade_Xsell_Always_on @Itrade_Xsell_Always_on_EML_Batch_File_Positive_Validation_6109 @6109 @EML @RS23101
  Scenario Outline: Itrade_Xsell_Always_on RS23101_6109_EML Validate Batch File against database and pega for Positive test cases
    Given load data from "Itrade_Xsell_6109" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "ItradeXsellAlwayson_EML_Batch" extract file with batch "" Email Specific Text Header
    Then Validate Itrade Xsell Always on offer details in batch file against database and pega
    Examples:
      | Test cases                                                        |
      | 6109_EML_Seg_01_LANG_CD_eq_fr                                     |
      | 6109_EML_Seg_02_NOT_AML_KYC_eq_NULL                               |
      | 6109_EML_Seg_03_DO_NOT_SOLICIT_F_eq_NULL                          |
      | 6109_EML_Seg_04_MK_ITRADE_EMAIL_F_eq_NULL                         |
      | 6109_EML_Seg_06_INDV_TTL_NM_ne_NULL                               |
      #Positive exclusion scenarios
      | 6109_EML_Seg_01_CUST_OPND_DT_lt_120                               |
      | 6109_EML_Seg_01_CUST_OPND_DT_eq_120                               |
      | 6109_EML_Seg_01_CUST_OPND_DT_eq_NULL                              |
      | 6109_EML_Seg_01_SRC_ACCT_STAT_CD_ne_A                             |
      | 6109_EML_Seg_01_SRC_ACCT_STAT_CD_eq_NULL                          |
      | 6109_EML_Seg_01_ACCT_ODT_gt_91                                    |
      | 6109_EML_Seg_01_ACCT_ODT_gt_NULL                                  |
      | 6109_EML_Seg_01_ACCT_SUBSYS_ID_ne_BB                              |
      | 6109_EML_Seg_01_PRIMARY_ACCT_HOLDER_FLAG _ne_Y                    |
      | 6109_EML_Seg_01_PRIMARY_ACCT_HOLDER_FLAG _eq_NULL                 |
      | 6109_EML_Seg_01_SRC_SYS_PRD_CD_eq_01_SRC_SYS_SUB_PRD_CD_eq_01     |
      | 6109_EML_Seg_01_SRC_SYS_PRD_CD_eq_NULL_SRC_SYS_SUB_PRD_CD_eq_NULL |

    



