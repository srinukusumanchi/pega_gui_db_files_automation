@VisaDebitInterac_5970_IHValidation
Feature: Validation for 5970 VisaDebitInterac

  @VisaDebitInterac @VisaDebitInterac_EML_IH_Base_Validation_5970 @5970 @EML @RS21132 @VisaDebitInterac
  Scenario Outline: Visa Debit Interac RS21132_5970_EML Validate IH details against database and pega for Base test cases
    Given load data from "VisaDebitInterac" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then validate Visa Debit Interac offer details against IH
    Examples:
      | Test cases                |
      | 5970_EML_BASE_Creative_01 |
      | 5970_EML_BASE_Creative_02 |
      | 5970_EML_BASE_Creative_03 |
      | 5970_EML_BASE_Creative_04 |


  @VisaDebitInterac @VisaDebitInterac_EML_IH_Positive_Validation_5970 @5970 @EML @RS21132 @VisaDebitInterac
  Scenario Outline: Visa Debit Interac RS21132_5970_EML Validate IH details against database and pega for Positive test cases
    Given load data from "VisaDebitInterac" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then validate Visa Debit Interac offer details against IH
    Examples:
      | Test cases                                                                                                                 |
      | 5970_EML_Creative_01_CUST_AGE_eq_18                                                                                        |
      | 5970_EML_Creative_01_CUST_AGE_eq_75                                                                                        |
      | 5970_EML_Creative_02_LANG_CD_eq_fr                                                                                         |
      | 5970_EML_Creative_03_DO_NOT_SOLICIT_F_eq_NULL                                                                              |
      | 5970_EML_Creative_04_NOT_AML_KYC_eq_NULL                                                                                   |
      | 5970_EML_Creative_01_ACCT_ODT_gt_60                                                                                        |
      | 5970_EML_Creative_01_SRC_SYS_PRD_CD_eq_01_SRC_SYS_SUB_PRD_CD_eq_01                                                         |
      | 5970_EML_Creative_01_SRC_SYS_PRD_CD_eq_01_SRC_SYS_SUB_PRD_CD_eq_02                                                         |
      | 5970_EML_Creative_01_SRC_SYS_PRD_CD_eq_01_SRC_SYS_SUB_PRD_CD_eq_03                                                         |
      | 5970_EML_Creative_01_SRC_SYS_PRD_CD_eq_01_SRC_SYS_SUB_PRD_CD_eq_04                                                         |
      | 5970_EML_Creative_01_SRC_SYS_PRD_CD_eq_02_SRC_SYS_SUB_PRD_CD_eq_01                                                         |
      | 5970_EML_Creative_01_SRC_SYS_PRD_CD_eq_02_SRC_SYS_SUB_PRD_CD_eq_02                                                         |
      | 5970_EML_Creative_01_SRC_SYS_PRD_CD_eq_02_SRC_SYS_SUB_PRD_CD_eq_03                                                         |
      | 5970_EML_Creative_02_SRC_SYS_PRD_CD_eq_19_SRC_SYS_SUB_PRD_CD_eq_01                                                         |
      | 5970_EML_Creative_02_SRC_SYS_PRD_CD_eq_19_SRC_SYS_SUB_PRD_CD_eq_02                                                         |
      | 5970_EML_Creative_02_SRC_SYS_PRD_CD_eq_19_SRC_SYS_SUB_PRD_CD_eq_03                                                         |
      | 5970_EML_Creative_02_SRC_SYS_PRD_CD_eq_19_SRC_SYS_SUB_PRD_CD_eq_04                                                         |
      | 5970_EML_Creative_02_SRC_SYS_PRD_CD_eq_19_SRC_SYS_SUB_PRD_CD_eq_07                                                         |
      | 5970_EML_Creative_02_SRC_SYS_PRD_CD_eq_19_SRC_SYS_SUB_PRD_CD_eq_08                                                         |
      | 5970_EML_Creative_02_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_01                                                         |
      | 5970_EML_Creative_02_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_03                                                         |
      | 5970_EML_Creative_02_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_07                                                         |
      | 5970_EML_Creative_02_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_08                                                         |
      | 5970_EML_Creative_03_SRC_SYS_PRD_CD_eq_07_SRC_SYS_SUB_PRD_CD_eq_11                                                         |
      | 5970_EML_Creative_03_SRC_SYS_PRD_CD_eq_07_SRC_SYS_SUB_PRD_CD_eq_12                                                         |
      | 5970_EML_Creative_04_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_01                                                         |
      | 5970_EML_Creative_04_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_03                                                         |
      | 5970_EML_Creative_01_CASH_BR_WITHDRAWAL_eq_DSS_Val_VPOS_OPOS_FLASH_CHIP_gt_90                                              |
      | 5970_EML_Creative_01_CASH_ABM_WITHDRAWAL_eq_DSS_Val_VPOS_OPOS_FLASH_CHIP_eq_NULL                                           |
      | 5970_EML_Creative_01_CASH_BR_WITHDRAWAL_eq_DSS_Val_CASH_ABM_WITHDRAWAL_eq_DSS_Val                                          |
      | 5970_EML_Creative_02_VPOS_OPOS_FLASH_gt_90_CHIP_eq_DSS_Val                                                                 |
      | 5970_EML_Creative_02_VPOS_OPOS_FLASH_eq_NULL_CHIP_eq_DSS_Val                                                               |
      | 5970_EML_Creative_03_VPOS_eq_DSS_Val_FLASH_gt_90                                                                           |
      | 5970_EML_Creative_03_OPOS_eq_DSS_Val_FLASH_gt_90                                                                           |
      | 5970_EML_Creative_03_VPOS_eq_DSS_Val_OPOS_eq_DSS_Val_FLASH_eq_NULL                                                         |
      | 5970_EML_Creative_04_VPOS_gt_90_OPOS_gt_90_FLASH_eq_DSS_Val                                                                |
      | 5970_EML_Creative_04_VPOS_eq_NULL_OPOS_eq_NULL_FLASH_eq_DSS_Val                                                            |
#      |Multiple BB and AC Accounts - Positive Scenarios|
      | 5970_EML_Creative_01_2_BB_Primary_ACCT_ODT_gt_60_CashWithdr_lt_DSS_Secon_ACCT_ODT_gt_60_CashWithdr_eq_NULL_2_AC            |
      | 5970_EML_Creative_01_2_BB_Primary_ACCT_ODT_gt_60_CashWithdr_lt_DSS_Secon_NOT_ACTIVE_ACCT_ODT_lt_60_CashWithdr_eq_NULL_2_AC |
      | 5970_EML_Creative_01_2_BB_2_AC_Primary_VPOS_OPOS_FLASH_CHIP_gt_90_Secon_VPOS_OPOS_FLASH_CHIP_lt_90                         |
      | 5970_EML_Creative_02_2_BB_2_AC_Primary_CHIP_lt_DSS_VPOS_OPOS_FLASH_eq_NULL_Secon_CHIP_eq_NULL_VPOS_OPOS_FLASH_eq_NULL      |
      | 5970_EML_Creative_02_2_BB_2_AC_Primary_CHIP_lt_DSS_VPOS_OPOS_FLASH_eq_NULL_Secon_CHIP_eq_NULL_VPOS_OPOS_FLASH_lt_90        |
      | 5970_EML_Creative_03_2_BB_2_AC_Primary_VPOS_OPOS_lt_DSS_FLASH_eq_NULL_Secon_VPOS_OPOS_eq_NULL_FLASH_eq_NULL                |
      | 5970_EML_Creative_03_2_BB_2_AC_Primary_VPOS_OPOS_lt_DSS_FLASH_eq_NULL_Secon_VPOS_OPOS_lt_DSS_FLASH_lt_90                   |
      | 5970_EML_Creative_04_2_BB_2_AC_Primary_VPOS_OPOS_eq_NULL_FLASH_lt_DSS_Secon_VPOS_OPOS_eq_NULL_FLASH_eq_NULL                |
      | 5970_EML_Creative_04_2_BB_2_AC_Primary_VPOS_OPOS_eq_NULL_FLASH_lt_DSS_Secon_VPOS_OPOS_lt_90_FLASH_lt_DSS                   |
      | 5970_EML_Creative_01_2_BB_ANY_Primary_CashBRWithdr_lt_DSS_2_AC_ALL_Primary_VPOS_OPOS_FLASH_CHIP_gt_90                      |
      | 5970_EML_Creative_01_2_BB_ANY_Primary_CashABMWithdr_lt_DSS_2_AC_ALL_Primary_VPOS_OPOS_FLASH_CHIP_gt_90                     |
      | 5970_EML_Creative_02_2_BB_2_AC_ANY_Primary_CHIP_lt_DSS_ALL_Primary_VPOS_OPOS_FLASH_gt_90                                   |
      | 5970_EML_Creative_03_2_BB_2_AC_ANY_Primary_VPOS_lt_DSS_ALL_Primary_FLASH_gt_90                                             |
      | 5970_EML_Creative_03_2_BB_2_AC_ANY_Primary_OPOS_lt_DSS_ALL_Primary_FLASH_gt_90                                             |
      | 5970_EML_Creative_04_2_BB_2_AC_ANY_Primary_FLASH_lt_DSS_ALL_Primary_VPOS_OPOS_gt_90                                        |
      | 5970_EML_Creative_01_2_BB_1_Eligible_Prod_ACCT_ODT_gt_60_1_Other_Prod_ACCT_ODT_lt_60_2_AC_ALL_Primary                      |
      | 5970_EML_Creative_01_1_BB_ACCT_ODT_gt_60_1_KS_ACCT_ODT_lt_60_2_AC_ALL_Primary                                              |
#      |Email Channel Specific - Positive Scenarios|
      | 5970_EML_Creative_01_MK_BK_INFO_ACCTS_EMAIL_F_eq_NULL                                                                      |


  @VisaDebitInterac @VisaDebitInterac_EML_IH_Negative_Validation_5970 @5970 @EML @RS21132 @VisaDebitInterac
  Scenario Outline: Visa Debit Interac RS21132_5970_EML Validate IH details against database and pega for Negative test cases
    Given load data from "VisaDebitInterac" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then verify using IH API that offer is not returned
    Examples:
      | Test cases                                                                                                             |
      | N_5970_EML_Creative_01_CUST_AGE_lt_18                                                                                  |
      | N_5970_EML_Creative_01_CUST_AGE_gt_75                                                                                  |
      | N_5970_EML_Creative_02_LANG_CD_eq_bn                                                                                   |
      | N_5970_EML_Creative_02_LANG_CD_eq_NULL                                                                                 |
      | N_5970_EML_Creative_03_DO_NOT_SOLICIT_F_eq_Y                                                                           |
      | N_5970_EML_Creative_04_NOT_AML_KYC_eq_Y                                                                                |
      | N_5970_EML_Creative_01_DECEASED_F_ne_N                                                                                 |
      | N_5970_EML_Creative_01_DECEASED_F_eq_NULL                                                                              |
      | N_5970_EML_Creative_02_CUST_TP_CD_ne_PSNL                                                                              |
      | N_5970_EML_Creative_02_PRIM_CNTRY_CD_ne_CA                                                                             |
      | N_5970_EML_Creative_03_PRIM_CNTRY_CD_eq_NULL                                                                           |
      | N_5970_EML_Creative_03_MRKTBLE_F_ne_Y                                                                                  |
      | N_5970_EML_Creative_04_MRKTBLE_F_eq_NULL                                                                               |
      | N_5970_EML_Creative_04_INDV_FRST_NM_eq_NULL                                                                            |
      | N_5970_EML_Creative_04_INDV_LAST_NM_eq_NULL                                                                            |
      | N_5970_EML_Creative_01_ACCT_ODT_eq_60                                                                                  |
      | N_5970_EML_Creative_01_ACCT_ODT_lt_60                                                                                  |
      | N_5970_EML_Creative_04_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_02                                                   |
      | N_5970_EML_Creative_04_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_NULL                                                 |
      | N_5970_EML_Creative_04_SRC_SYS_PRD_CD_eq_NULL_SRC_SYS_SUB_PRD_CD_eq_02                                                 |
      | N_5970_EML_Creative_03_ACCT_SUBSYS_ID_ne_BB                                                                            |
      | N_5970_EML_Creative_03_ACCT_SUBSYS_ID_eq_NULL                                                                          |
      | N_5970_EML_Creative_03_SRC_ACCT_STAT_CD_ne_A                                                                           |
      | N_5970_EML_Creative_03_SRC_ACCT_STAT_CD_eq_NULL                                                                        |
      | N_5970_EML_Creative_03_PRIMARY_ACCT_HOLDER_FLAG_ne_Y                                                                   |
      | N_5970_EML_Creative_03_PRIMARY_ACCT_HOLDER_FLAG_eq_NULL                                                                |
      | N_5970_EML_Creative_03_VPOS_lt_DSS_Val_FLASH_lt_DSS_Val                                                                |
      | N_5970_EML_Creative_03_VPOS_eq_DSS_Val_FLASH_eq_DSS_Val                                                                |
      | N_5970_EML_Creative_03_OPOS_lt_DSS_Val_FLASH_lt_DSS_Val                                                                |
      | N_5970_EML_Creative_03_OPOS_eq_DSS_Val_FLASH_eq_DSS_Val                                                                |
      | N_5970_EML_Creative_01_CASH_WITHDRAWAL_gt_DSS_Val_VPOS_OPOS_FLASH_CHIP_gt_90                                           |
      | N_5970_EML_Creative_01_CASH_WITHDRAWAL_eq_NULL_VPOS_OPOS_FLASH_CHIP_eq_NULL                                            |
#      |Multiple BB and AC Accounts - Negative Scenarios|
      | N_5970_EML_Creative_01_2_BB_Primary_ACCT_ODT_gt_60_CashWithdr_lt_DSS_Secon_ACCT_ODT_eq_60_CashWithdr_eq_NULL_2_AC      |
      | N_5970_EML_Creative_01_2_BB_Primary_ACCT_ODT_gt_60_CashWithdr_eq_NULL_Secon_ACCT_ODT_gt_60_CashWithdr_lt_DSS_2_AC      |
      | N_5970_EML_Creative_01_2_BB_2_AC_Primary_VPOS_OPOS_FLASH_CHIP_lt_90_Secon_VPOS_OPOS_FLASH_CHIP_gt_90                   |
      | N_5970_EML_Creative_02_2_BB_2_AC_Primary_CHIP_gt_DSS_VPOS_OPOS_FLASH_eq_NULL_Secon_CHIP_lt_DSS_VPOS_OPOS_FLASH_eq_NULL |
      | N_5970_EML_Creative_02_2_BB_2_AC_Primary_CHIP_lt_DSS_VPOS_OPOS_FLASH_lt_90_Secon_CHIP_eq_NULL_VPOS_OPOS_FLASH_eq_NULL  |
      | N_5970_EML_Creative_03_2_BB_2_AC_Primary_VPOS_OPOS_eq_NULL_FLASH_eq_NULL_Secon_VPOS_OPOS_lt_DSS_FLASH_eq_NULL          |
      | N_5970_EML_Creative_03_2_BB_2_AC_Primary_VPOS_OPOS_lt_DSS_FLASH_lt_90_Secon_VPOS_OPOS_lt_DSS_FLASH_eq_NULL             |
      | N_5970_EML_Creative_04_2_BB_2_AC_Primary_VPOS_OPOS_eq_NULL_FLASH_eq_NULL_Secon_VPOS_OPOS_eq_NULL_FLASH_lt_DSS          |
      | N_5970_EML_Creative_04_2_BB_2_AC_Primary_VPOS_OPOS_lt_90_FLASH_lt_DSS_Secon_VPOS_OPOS_eq_NULL_FLASH_lt_DSS             |
      | N_5970_EML_Creative_01_2_BB_ANY_Primary_CashBRWithdr_lt_DSS_2_AC_NOT_ALL_Primary_VPOS_gt_90                            |
      | N_5970_EML_Creative_01_2_BB_ANY_Primary_CashBRWithdr_lt_DSS_2_AC_NOT_ALL_Primary_OPOS_gt_90                            |
      | N_5970_EML_Creative_01_2_BB_ANY_Primary_CashBRWithdr_lt_DSS_2_AC_NOT_ALL_Primary_FLASH_gt_90                           |
      | N_5970_EML_Creative_01_2_BB_ANY_Primary_CashBRWithdr_lt_DSS_2_AC_NOT_ALL_Primary_CHIP_gt_90                            |
      | N_5970_EML_Creative_02_2_BB_2_AC_ANY_Primary_CHIP_lt_DSS_NOT_ALL_Primary_VPOS_gt_90                                    |
      | N_5970_EML_Creative_02_2_BB_2_AC_ANY_Primary_CHIP_lt_DSS_NOT_ALL_Primary_OPOS_gt_90                                    |
      | N_5970_EML_Creative_02_2_BB_2_AC_ANY_Primary_CHIP_lt_DSS_NOT_ALL_Primary_FLASH_gt_90                                   |
      | N_5970_EML_Creative_03_2_BB_2_AC_ANY_Primary_VPOS_lt_DSS_NOT_ALL_Primary_FLASH_gt_90                                   |
      | N_5970_EML_Creative_03_2_BB_2_AC_ANY_Primary_OPOS_lt_DSS_NOT_ALL_Primary_FLASH_gt_90                                   |
      | N_5970_EML_Creative_04_2_BB_2_AC_ANY_Primary_FLASH_lt_DSS_NOT_ALL_Primary_VPOS_gt_90                                   |
      | N_5970_EML_Creative_04_2_BB_2_AC_ANY_Primary_FLASH_lt_DSS_NOT_ALL_Primary_OPOS_gt_90                                   |
#      |Email Channel Specific - Negative Scenarios|
      | N_5970_EML_Creative_01_VLD_EMAIL_F_ne_Y                                                                                |
      | N_5970_EML_Creative_01_VLD_EMAIL_F_eq_NULL                                                                             |
      | N_5970_EML_Creative_01_PRIM_EMAIL_ADDR_eq_NULL                                                                         |
      | N_5970_EML_Creative_01_DO_NOT_EMAIL_F_ne_N                                                                             |
      | N_5970_EML_Creative_01_DO_NOT_EMAIL_F_eq_NULL                                                                          |
      | N_5970_EML_Creative_01_MK_BK_INFO_ACCTS_EMAIL_F_eq_N                                                                   |

