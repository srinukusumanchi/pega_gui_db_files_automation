Feature: Batch file validation for Visa Debit Interac 5970


  @VisaDebitInterac_Email_5970_Batch_PositiveTCs_Validation
  Scenario Outline: Visa Debit Interac 5970_RS21132_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "VisaDebitInterac" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "VisaDebitInterac" extract file with batch "NTC_F;GenZ_F;" Email Specific Text Header
    Then Validate Visa Debit Interac offer details in batch file against database and pega
    Examples:
      | Test cases                                                                                                                 |
      | 5970_EML_BASE_Creative_01                                                                                                  |
      | 5970_EML_BASE_Creative_02                                                                                                  |
      | 5970_EML_BASE_Creative_03                                                                                                  |
      | 5970_EML_BASE_Creative_04                                                                                                  |

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

      | 5970_EML_Creative_01_MK_BK_INFO_ACCTS_EMAIL_F_eq_NULL                                                                      |

