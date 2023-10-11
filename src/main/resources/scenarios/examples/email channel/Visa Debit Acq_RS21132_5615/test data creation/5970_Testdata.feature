@VisaDebitInterac_5970_EML
Feature: Test data creation for EML Visa Debit Interac CIE5970

  @VisaDebitInterac @VisaDebitInterac_Base_TestData @5970 @VisaDebitInterac_EML @RS21132
  Scenario Outline: VisaDebitInterac_RS21132_5970_EML Create test data for Base test cases
    Given load data from "VisaDebitInterac" excel sheet

    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts

    And write Different Generic Dates in "ACCT_ODT" field with "<Account_Open_Date>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    And write Different Generic Dates in "LAST_CASH_BR_WITHDRAWAL_TMSTMP" field with "<CASH_BR_WITHDRAWAL_TMSTMP>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    And write Different Generic Dates in "LAST_CASH_ABM_WITHDRAWAL_TMSTMP" field with "<CASH_ABM_WITHDRAWAL_TMSTMP>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records

    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

  # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts

    And write Different Generic Dates in "LAST_FLASH_TXN_DT" field with "<FLASH_TXN_DT>" duration from current date into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    And write Different Generic Dates in "LAST_VD_VPOS_TXN_TMSTMP" field with "<VD_VPOS_TXN_TMSTMP>" duration from current date into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    And write Different Generic Dates in "LAST_VD_OPOS_TXN_TMSTMP" field with "<VD_OPOS_TXN_TMSTMP>" duration from current date into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    And write Different Generic Dates in "LAST_CHIP_TXN_TMSTMP" field with "<CHIP_TXN_TMSTMP>" duration from current date into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records

    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    Examples:
      | Test cases                | Acct_Cnt | Account_Open_Date | CASH_BR_WITHDRAWAL_TMSTMP | CASH_ABM_WITHDRAWAL_TMSTMP | FLASH_TXN_DT | VD_VPOS_TXN_TMSTMP | VD_OPOS_TXN_TMSTMP | CHIP_TXN_TMSTMP |
      | 5970_EML_BASE_Creative_01 | 2        | 70                | 5                         | NULL                       | NULL,100     | NULL,100           | NULL,100           | NULL,100        |
      | 5970_EML_BASE_Creative_02 | 2        | 70                | NULL                      | NULL                       | NULL,100     | NULL,100           | NULL,100           | NULL,5          |
      | 5970_EML_BASE_Creative_03 | 2        | 70                | NULL                      | NULL                       | NULL,100     | NULL,5             | NULL,5             | NULL            |
      | 5970_EML_BASE_Creative_04 | 2        | 70                | NULL                      | NULL                       | NULL,5       | NULL,100           | NULL,100           | NULL            |


  @VisaDebitInterac @VisaDebitInterac_Positive_TestData @5970 @VisaDebitInterac_EML @RS21132
  Scenario Outline: VisaDebitInterac_RS21132_5970_EML Create test data for Positive test cases
    Given load data from "VisaDebitInterac" excel sheet

    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts

    And write Different Generic Dates in "ACCT_ODT" field with "<Account_Open_Date>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    And write Different Generic Dates in "LAST_CASH_BR_WITHDRAWAL_TMSTMP" field with "<CASH_BR_WITHDRAWAL_TMSTMP>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    And write Different Generic Dates in "LAST_CASH_ABM_WITHDRAWAL_TMSTMP" field with "<CASH_ABM_WITHDRAWAL_TMSTMP>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records

    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

  # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts

    And write Different Generic Dates in "LAST_FLASH_TXN_DT" field with "<FLASH_TXN_DT>" duration from current date into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    And write Different Generic Dates in "LAST_VD_VPOS_TXN_TMSTMP" field with "<VD_VPOS_TXN_TMSTMP>" duration from current date into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    And write Different Generic Dates in "LAST_VD_OPOS_TXN_TMSTMP" field with "<VD_OPOS_TXN_TMSTMP>" duration from current date into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    And write Different Generic Dates in "LAST_CHIP_TXN_TMSTMP" field with "<CHIP_TXN_TMSTMP>" duration from current date into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records

    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts


    Examples:
      | Test cases                                                                                                                 | Acct_Cnt | Account_Open_Date | CASH_BR_WITHDRAWAL_TMSTMP | CASH_ABM_WITHDRAWAL_TMSTMP | FLASH_TXN_DT        | VD_VPOS_TXN_TMSTMP  | VD_OPOS_TXN_TMSTMP  | CHIP_TXN_TMSTMP   |
      | 5970_EML_Creative_01_CUST_AGE_eq_18                                                                                        | 2        | 70                | 5                         | NULL                       | NULL,100            | NULL,100            | NULL,100            | NULL,100          |
      | 5970_EML_Creative_01_CUST_AGE_eq_75                                                                                        | 2        | 70                | 5                         | NULL                       | NULL,100            | NULL,100            | NULL,100            | NULL,100          |
      | 5970_EML_Creative_02_LANG_CD_eq_fr                                                                                         | 2        | 70                | NULL                      | NULL                       | NULL,100            | NULL,100            | NULL,100            | NULL,5            |
      | 5970_EML_Creative_03_DO_NOT_SOLICIT_F_eq_NULL                                                                              | 2        | 70                | NULL                      | NULL                       | NULL,100            | NULL,5              | NULL,5              | NULL              |
      | 5970_EML_Creative_04_NOT_AML_KYC_eq_NULL                                                                                   | 2        | 70                | NULL                      | NULL                       | NULL,5              | NULL,100            | NULL,100            | NULL              |
      | 5970_EML_Creative_01_ACCT_ODT_gt_60                                                                                        | 2        | 61                | 5                         | NULL                       | NULL,100            | NULL,100            | NULL,100            | NULL,100          |
      | 5970_EML_Creative_01_SRC_SYS_PRD_CD_eq_01_SRC_SYS_SUB_PRD_CD_eq_01                                                         | 2        | 70                | 5                         | NULL                       | NULL,100            | NULL,100            | NULL,100            | NULL,100          |
      | 5970_EML_Creative_01_SRC_SYS_PRD_CD_eq_01_SRC_SYS_SUB_PRD_CD_eq_02                                                         | 2        | 70                | 5                         | NULL                       | NULL,100            | NULL,100            | NULL,100            | NULL,100          |
      | 5970_EML_Creative_01_SRC_SYS_PRD_CD_eq_01_SRC_SYS_SUB_PRD_CD_eq_03                                                         | 2        | 70                | 5                         | NULL                       | NULL,100            | NULL,100            | NULL,100            | NULL,100          |
      | 5970_EML_Creative_01_SRC_SYS_PRD_CD_eq_01_SRC_SYS_SUB_PRD_CD_eq_04                                                         | 2        | 70                | 5                         | NULL                       | NULL,100            | NULL,100            | NULL,100            | NULL,100          |
      | 5970_EML_Creative_01_SRC_SYS_PRD_CD_eq_02_SRC_SYS_SUB_PRD_CD_eq_01                                                         | 2        | 70                | 5                         | NULL                       | NULL,100            | NULL,100            | NULL,100            | NULL,100          |
      | 5970_EML_Creative_01_SRC_SYS_PRD_CD_eq_02_SRC_SYS_SUB_PRD_CD_eq_02                                                         | 2        | 70                | 5                         | NULL                       | NULL,100            | NULL,100            | NULL,100            | NULL,100          |
      | 5970_EML_Creative_01_SRC_SYS_PRD_CD_eq_02_SRC_SYS_SUB_PRD_CD_eq_03                                                         | 2        | 70                | 5                         | NULL                       | NULL,100            | NULL,100            | NULL,100            | NULL,100          |
      | 5970_EML_Creative_02_SRC_SYS_PRD_CD_eq_19_SRC_SYS_SUB_PRD_CD_eq_01                                                         | 2        | 70                | NULL                      | NULL                       | NULL,100            | NULL,100            | NULL,100            | NULL,5            |
      | 5970_EML_Creative_02_SRC_SYS_PRD_CD_eq_19_SRC_SYS_SUB_PRD_CD_eq_02                                                         | 2        | 70                | NULL                      | NULL                       | NULL,100            | NULL,100            | NULL,100            | NULL,5            |
      | 5970_EML_Creative_02_SRC_SYS_PRD_CD_eq_19_SRC_SYS_SUB_PRD_CD_eq_03                                                         | 2        | 70                | NULL                      | NULL                       | NULL,100            | NULL,100            | NULL,100            | NULL,5            |
      | 5970_EML_Creative_02_SRC_SYS_PRD_CD_eq_19_SRC_SYS_SUB_PRD_CD_eq_04                                                         | 2        | 70                | NULL                      | NULL                       | NULL,100            | NULL,100            | NULL,100            | NULL,5            |
      | 5970_EML_Creative_02_SRC_SYS_PRD_CD_eq_19_SRC_SYS_SUB_PRD_CD_eq_07                                                         | 2        | 70                | NULL                      | NULL                       | NULL,100            | NULL,100            | NULL,100            | NULL,5            |
      | 5970_EML_Creative_02_SRC_SYS_PRD_CD_eq_19_SRC_SYS_SUB_PRD_CD_eq_08                                                         | 2        | 70                | NULL                      | NULL                       | NULL,100            | NULL,100            | NULL,100            | NULL,5            |
      | 5970_EML_Creative_02_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_01                                                         | 2        | 70                | NULL                      | NULL                       | NULL,100            | NULL,100            | NULL,100            | NULL,5            |
      | 5970_EML_Creative_02_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_03                                                         | 2        | 70                | NULL                      | NULL                       | NULL,100            | NULL,100            | NULL,100            | NULL,5            |
      | 5970_EML_Creative_02_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_07                                                         | 2        | 70                | NULL                      | NULL                       | NULL,100            | NULL,100            | NULL,100            | NULL,5            |
      | 5970_EML_Creative_02_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_08                                                         | 2        | 70                | NULL                      | NULL                       | NULL,100            | NULL,100            | NULL,100            | NULL,5            |
      | 5970_EML_Creative_03_SRC_SYS_PRD_CD_eq_07_SRC_SYS_SUB_PRD_CD_eq_11                                                         | 2        | 70                | NULL                      | NULL                       | NULL,100            | NULL,5              | NULL,5              | NULL              |
      | 5970_EML_Creative_03_SRC_SYS_PRD_CD_eq_07_SRC_SYS_SUB_PRD_CD_eq_12                                                         | 2        | 70                | NULL                      | NULL                       | NULL,100            | NULL,5              | NULL,5              | NULL              |
      | 5970_EML_Creative_04_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_01                                                         | 2        | 70                | NULL                      | NULL                       | NULL,5              | NULL,100            | NULL,100            | NULL              |
      | 5970_EML_Creative_04_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_03                                                         | 2        | 70                | NULL                      | NULL                       | NULL,5              | NULL,100            | NULL,100            | NULL              |
      | 5970_EML_Creative_01_CASH_BR_WITHDRAWAL_eq_DSS_Val_VPOS_OPOS_FLASH_CHIP_gt_90                                              | 2        | 70                | 10                        | NULL                       | NULL,91             | NULL,91             | NULL,91             | NULL,91           |
      | 5970_EML_Creative_01_CASH_ABM_WITHDRAWAL_eq_DSS_Val_VPOS_OPOS_FLASH_CHIP_eq_NULL                                           | 2        | 70                | NULL                      | 10                         | NULL                | NULL                | NULL                | NULL              |
      | 5970_EML_Creative_01_CASH_BR_WITHDRAWAL_eq_DSS_Val_CASH_ABM_WITHDRAWAL_eq_DSS_Val                                          | 2        | 70                | 10                        | 10                         | NULL,100            | NULL,100            | NULL,100            | NULL,100          |
      | 5970_EML_Creative_02_VPOS_OPOS_FLASH_gt_90_CHIP_eq_DSS_Val                                                                 | 2        | 70                | NULL                      | NULL                       | NULL,91             | NULL,91             | NULL,91             | NULL,10           |
      | 5970_EML_Creative_02_VPOS_OPOS_FLASH_eq_NULL_CHIP_eq_DSS_Val                                                               | 2        | 70                | NULL                      | NULL                       | NULL                | NULL                | NULL                | NULL,10           |
      | 5970_EML_Creative_03_VPOS_eq_DSS_Val_FLASH_gt_90                                                                           | 2        | 70                | NULL                      | NULL                       | NULL,91             | NULL,10             | NULL                | NULL              |
      | 5970_EML_Creative_03_OPOS_eq_DSS_Val_FLASH_gt_90                                                                           | 2        | 70                | NULL                      | NULL                       | NULL,91             | NULL                | NULL,10             | NULL              |
      | 5970_EML_Creative_03_VPOS_eq_DSS_Val_OPOS_eq_DSS_Val_FLASH_eq_NULL                                                         | 2        | 70                | NULL                      | NULL                       | NULL                | NULL,10             | NULL,10             | NULL              |
      | 5970_EML_Creative_04_VPOS_gt_90_OPOS_gt_90_FLASH_eq_DSS_Val                                                                | 2        | 70                | NULL                      | NULL                       | NULL,10             | NULL,91             | NULL,91             | NULL              |
      | 5970_EML_Creative_04_VPOS_eq_NULL_OPOS_eq_NULL_FLASH_eq_DSS_Val                                                            | 2        | 70                | NULL                      | NULL                       | NULL,10             | NULL                | NULL                | NULL              |
#      |Multiple BB and AC Accounts - Positive Scenarios|||||||||
      | 5970_EML_Creative_01_2_BB_Primary_ACCT_ODT_gt_60_CashWithdr_lt_DSS_Secon_ACCT_ODT_gt_60_CashWithdr_eq_NULL_2_AC            | 4        | 61,61             | 5,NULL                    | NULL                       | NULL,NULL,100,100   | NULL,NULL,100,100   | NULL,NULL,100,100   | NULL,NULL,100,100 |
      | 5970_EML_Creative_01_2_BB_Primary_ACCT_ODT_gt_60_CashWithdr_lt_DSS_Secon_NOT_ACTIVE_ACCT_ODT_lt_60_CashWithdr_eq_NULL_2_AC | 4        | 61,59             | 5,NULL                    | NULL                       | NULL,NULL,100,100   | NULL,NULL,100,100   | NULL,NULL,100,100   | NULL,NULL,100,100 |
      | 5970_EML_Creative_01_2_BB_2_AC_Primary_VPOS_OPOS_FLASH_CHIP_gt_90_Secon_VPOS_OPOS_FLASH_CHIP_lt_90                         | 4        | 70,70             | NULL                      | 5,NULL                     | NULL,NULL,100,89    | NULL,NULL,100,89    | NULL,NULL,100,89    | NULL,NULL,100,89  |
      | 5970_EML_Creative_02_2_BB_2_AC_Primary_CHIP_lt_DSS_VPOS_OPOS_FLASH_eq_NULL_Secon_CHIP_eq_NULL_VPOS_OPOS_FLASH_eq_NULL      | 4        | 70,70             | NULL                      | NULL                       | NULL,NULL,NULL,NULL | NULL,NULL,NULL,NULL | NULL,NULL,NULL,NULL | NULL,NULL,9,NULL  |
      | 5970_EML_Creative_02_2_BB_2_AC_Primary_CHIP_lt_DSS_VPOS_OPOS_FLASH_eq_NULL_Secon_CHIP_eq_NULL_VPOS_OPOS_FLASH_lt_90        | 4        | 70,70             | NULL                      | NULL                       | NULL,NULL,NULL,81   | NULL,NULL,NULL,81   | NULL,NULL,NULL,81   | NULL,NULL,5,NULL  |
      | 5970_EML_Creative_03_2_BB_2_AC_Primary_VPOS_OPOS_lt_DSS_FLASH_eq_NULL_Secon_VPOS_OPOS_eq_NULL_FLASH_eq_NULL                | 4        | 70,70             | NULL                      | NULL                       | NULL,NULL,NULL,NULL | NULL,NULL,5,NULL    | NULL,NULL,5,NULL    | NULL              |
      | 5970_EML_Creative_03_2_BB_2_AC_Primary_VPOS_OPOS_lt_DSS_FLASH_eq_NULL_Secon_VPOS_OPOS_lt_DSS_FLASH_lt_90                   | 4        | 70,70             | NULL                      | NULL                       | NULL,NULL,NULL,89   | NULL,NULL,5,5       | NULL,NULL,5,5       | NULL              |
      | 5970_EML_Creative_04_2_BB_2_AC_Primary_VPOS_OPOS_eq_NULL_FLASH_lt_DSS_Secon_VPOS_OPOS_eq_NULL_FLASH_eq_NULL                | 4        | 70,70             | NULL                      | NULL                       | NULL,NULL,5,NULL    | NULL,NULL,NULL,NULL | NULL,NULL,NULL,NULL | NULL              |
      | 5970_EML_Creative_04_2_BB_2_AC_Primary_VPOS_OPOS_eq_NULL_FLASH_lt_DSS_Secon_VPOS_OPOS_lt_90_FLASH_lt_DSS                   | 4        | 70,70             | NULL                      | NULL                       | NULL,NULL,5,5       | NULL,NULL,NULL,89   | NULL,NULL,NULL,89   | NULL              |
      | 5970_EML_Creative_01_2_BB_ANY_Primary_CashBRWithdr_lt_DSS_2_AC_ALL_Primary_VPOS_OPOS_FLASH_CHIP_gt_90                      | 4        | 70,70             | 5,NULL                    | NULL                       | NULL,NULL,100,100   | NULL,NULL,100,100   | NULL,NULL,100,100   | NULL,NULL,100,100 |
      | 5970_EML_Creative_01_2_BB_ANY_Primary_CashABMWithdr_lt_DSS_2_AC_ALL_Primary_VPOS_OPOS_FLASH_CHIP_gt_90                     | 4        | 70,70             | NULL                      | 5,NULL                     | NULL,NULL,100,100   | NULL,NULL,100,100   | NULL,NULL,100,100   | NULL,NULL,100,100 |
      | 5970_EML_Creative_02_2_BB_2_AC_ANY_Primary_CHIP_lt_DSS_ALL_Primary_VPOS_OPOS_FLASH_gt_90                                   | 4        | 70,70             | NULL                      | NULL                       | NULL,NULL,100,100   | NULL,NULL,100,100   | NULL,NULL,100,100   | NULL,NULL,NULL,5  |
      | 5970_EML_Creative_03_2_BB_2_AC_ANY_Primary_VPOS_lt_DSS_ALL_Primary_FLASH_gt_90                                             | 4        | 70,70             | NULL                      | NULL                       | NULL,NULL,100,100   | NULL,NULL,5,NULL    | NULL,NULL,NULL,NULL | NULL              |
      | 5970_EML_Creative_03_2_BB_2_AC_ANY_Primary_OPOS_lt_DSS_ALL_Primary_FLASH_gt_90                                             | 4        | 70,70             | NULL                      | NULL                       | NULL,NULL,100,100   | NULL,NULL,NULL,NULL | NULL,NULL,NULL,5    | NULL              |
      | 5970_EML_Creative_04_2_BB_2_AC_ANY_Primary_FLASH_lt_DSS_ALL_Primary_VPOS_OPOS_gt_90                                        | 4        | 70,70             | NULL                      | NULL                       | NULL,NULL,NULL,5    | NULL,NULL,100,100   | NULL,NULL,100,100   | NULL              |
      | 5970_EML_Creative_01_2_BB_1_Eligible_Prod_ACCT_ODT_gt_60_1_Other_Prod_ACCT_ODT_lt_60_2_AC_ALL_Primary                      | 4        | 61,59             | 5,NULL                    | NULL                       | NULL,NULL,100,100   | NULL,NULL,100,100   | NULL,NULL,100,100   | NULL,NULL,100,100 |
      | 5970_EML_Creative_01_1_BB_ACCT_ODT_gt_60_1_KS_ACCT_ODT_lt_60_2_AC_ALL_Primary                                              | 4        | 61,59             | 5,NULL                    | NULL                       | NULL,NULL,100,100   | NULL,NULL,100,100   | NULL,NULL,100,100   | NULL,NULL,100,100 |
#      |Email Channel Specific - Positive Scenarios|||||||||
      | 5970_EML_Creative_01_MK_BK_INFO_ACCTS_EMAIL_F_eq_NULL                                                                      | 2        | 70                | 5                         | NULL                       | NULL,100            | NULL,100            | NULL,100            | NULL,100          |


  @VisaDebitInterac @VisaDebitInterac_Negative_TestData @5970 @VisaDebitInterac_EML @RS21132
  Scenario Outline: VisaDebitInterac_RS21132_5970_EML Create test data for Negative test cases
    Given load data from "VisaDebitInterac" excel sheet

    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts

    And write Different Generic Dates in "ACCT_ODT" field with "<Account_Open_Date>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    And write Different Generic Dates in "LAST_CASH_BR_WITHDRAWAL_TMSTMP" field with "<CASH_BR_WITHDRAWAL_TMSTMP>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    And write Different Generic Dates in "LAST_CASH_ABM_WITHDRAWAL_TMSTMP" field with "<CASH_ABM_WITHDRAWAL_TMSTMP>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records

    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

  # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts

    And write Different Generic Dates in "LAST_FLASH_TXN_DT" field with "<FLASH_TXN_DT>" duration from current date into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    And write Different Generic Dates in "LAST_VD_VPOS_TXN_TMSTMP" field with "<VD_VPOS_TXN_TMSTMP>" duration from current date into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    And write Different Generic Dates in "LAST_VD_OPOS_TXN_TMSTMP" field with "<VD_OPOS_TXN_TMSTMP>" duration from current date into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    And write Different Generic Dates in "LAST_CHIP_TXN_TMSTMP" field with "<CHIP_TXN_TMSTMP>" duration from current date into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records

    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    Examples:
      | Test cases                                                                                                             | Acct_Cnt | Account_Open_Date | CASH_BR_WITHDRAWAL_TMSTMP | CASH_ABM_WITHDRAWAL_TMSTMP | FLASH_TXN_DT        | VD_VPOS_TXN_TMSTMP  | VD_OPOS_TXN_TMSTMP  | CHIP_TXN_TMSTMP   |
      | N_5970_EML_Creative_01_CUST_AGE_lt_18                                                                                  | 2        | 70                | 5                         | NULL                       | NULL,100            | NULL,100            | NULL,100            | NULL,100          |
      | N_5970_EML_Creative_01_CUST_AGE_gt_75                                                                                  | 2        | 70                | 5                         | NULL                       | NULL,100            | NULL,100            | NULL,100            | NULL,100          |
      | N_5970_EML_Creative_02_LANG_CD_eq_bn                                                                                   | 2        | 70                | NULL                      | NULL                       | NULL,100            | NULL,100            | NULL,100            | NULL,5            |
      | N_5970_EML_Creative_02_LANG_CD_eq_NULL                                                                                 | 2        | 70                | NULL                      | NULL                       | NULL,100            | NULL,100            | NULL,100            | NULL,5            |
      | N_5970_EML_Creative_03_DO_NOT_SOLICIT_F_eq_Y                                                                           | 2        | 70                | NULL                      | NULL                       | NULL,100            | NULL,5              | NULL,5              | NULL              |
      | N_5970_EML_Creative_04_NOT_AML_KYC_eq_Y                                                                                | 2        | 70                | NULL                      | NULL                       | NULL,5              | NULL,100            | NULL,100            | NULL              |
      | N_5970_EML_Creative_01_DECEASED_F_ne_N                                                                                 | 2        | 70                | 5                         | NULL                       | NULL,100            | NULL,100            | NULL,100            | NULL,100          |
      | N_5970_EML_Creative_01_DECEASED_F_eq_NULL                                                                              | 2        | 70                | 5                         | NULL                       | NULL,100            | NULL,100            | NULL,100            | NULL,100          |
      | N_5970_EML_Creative_02_CUST_TP_CD_ne_PSNL                                                                              | 2        | 70                | NULL                      | NULL                       | NULL,100            | NULL,100            | NULL,100            | NULL,5            |
      | N_5970_EML_Creative_02_PRIM_CNTRY_CD_ne_CA                                                                             | 2        | 70                | NULL                      | NULL                       | NULL,100            | NULL,100            | NULL,100            | NULL,5            |
      | N_5970_EML_Creative_03_PRIM_CNTRY_CD_eq_NULL                                                                           | 2        | 70                | NULL                      | NULL                       | NULL,100            | NULL,5              | NULL,5              | NULL              |
      | N_5970_EML_Creative_03_MRKTBLE_F_ne_Y                                                                                  | 2        | 70                | NULL                      | NULL                       | NULL,100            | NULL,5              | NULL,5              | NULL              |
      | N_5970_EML_Creative_04_MRKTBLE_F_eq_NULL                                                                               | 2        | 70                | NULL                      | NULL                       | NULL,5              | NULL,100            | NULL,100            | NULL              |
      | N_5970_EML_Creative_04_INDV_FRST_NM_eq_NULL                                                                            | 2        | 70                | NULL                      | NULL                       | NULL,5              | NULL,100            | NULL,100            | NULL              |
      | N_5970_EML_Creative_04_INDV_LAST_NM_eq_NULL                                                                            | 2        | 70                | NULL                      | NULL                       | NULL,5              | NULL,100            | NULL,100            | NULL              |
      | N_5970_EML_Creative_01_ACCT_ODT_eq_60                                                                                  | 2        | 60                | 5                         | NULL                       | NULL,100            | NULL,100            | NULL,100            | NULL,100          |
      | N_5970_EML_Creative_01_ACCT_ODT_lt_60                                                                                  | 2        | 59                | 5                         | NULL                       | NULL,100            | NULL,100            | NULL,100            | NULL,100          |
      | N_5970_EML_Creative_04_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_02                                                   | 2        | 70                | NULL                      | NULL                       | NULL,5              | NULL,100            | NULL,100            | NULL              |
      | N_5970_EML_Creative_04_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_NULL                                                 | 2        | 70                | NULL                      | NULL                       | NULL,5              | NULL,100            | NULL,100            | NULL              |
      | N_5970_EML_Creative_04_SRC_SYS_PRD_CD_eq_NULL_SRC_SYS_SUB_PRD_CD_eq_02                                                 | 2        | 70                | NULL                      | NULL                       | NULL,5              | NULL,100            | NULL,100            | NULL              |
      | N_5970_EML_Creative_03_ACCT_SUBSYS_ID_ne_BB                                                                            | 2        | 70                | NULL                      | NULL                       | NULL,100            | NULL,5              | NULL,5              | NULL              |
      | N_5970_EML_Creative_03_ACCT_SUBSYS_ID_eq_NULL                                                                          | 2        | 70                | NULL                      | NULL                       | NULL,100            | NULL,5              | NULL,5              | NULL              |
      | N_5970_EML_Creative_03_SRC_ACCT_STAT_CD_ne_A                                                                           | 2        | 70                | NULL                      | NULL                       | NULL,100            | NULL,5              | NULL,5              | NULL              |
      | N_5970_EML_Creative_03_SRC_ACCT_STAT_CD_eq_NULL                                                                        | 2        | 70                | NULL                      | NULL                       | NULL,100            | NULL,5              | NULL,5              | NULL              |
      | N_5970_EML_Creative_03_PRIMARY_ACCT_HOLDER_FLAG_ne_Y                                                                   | 2        | 70                | NULL                      | NULL                       | NULL,100            | NULL,5              | NULL,5              | NULL              |
      | N_5970_EML_Creative_03_PRIMARY_ACCT_HOLDER_FLAG_eq_NULL                                                                | 2        | 70                | NULL                      | NULL                       | NULL,100            | NULL,5              | NULL,5              | NULL              |
      | N_5970_EML_Creative_03_VPOS_lt_DSS_Val_FLASH_lt_DSS_Val                                                                | 2        | 70                | NULL                      | NULL                       | NULL,9              | NULL,9              | NULL                | NULL              |
      | N_5970_EML_Creative_03_VPOS_eq_DSS_Val_FLASH_eq_DSS_Val                                                                | 2        | 70                | NULL                      | NULL                       | NULL,10             | NULL,10             | NULL                | NULL              |
      | N_5970_EML_Creative_03_OPOS_lt_DSS_Val_FLASH_lt_DSS_Val                                                                | 2        | 70                | NULL                      | NULL                       | NULL,9              | NULL                | NULL,9              | NULL              |
      | N_5970_EML_Creative_03_OPOS_eq_DSS_Val_FLASH_eq_DSS_Val                                                                | 2        | 70                | NULL                      | NULL                       | NULL,10             | NULL                | NULL,10             | NULL              |
      | N_5970_EML_Creative_01_CASH_WITHDRAWAL_gt_DSS_Val_VPOS_OPOS_FLASH_CHIP_gt_90                                           | 2        | 70                | 11                        | 11                         | NULL,91             | NULL,91             | NULL,91             | NULL,91           |
      | N_5970_EML_Creative_01_CASH_WITHDRAWAL_eq_NULL_VPOS_OPOS_FLASH_CHIP_eq_NULL                                            | 2        | 70                | NULL                      | NULL                       | NULL                | NULL                | NULL                | NULL              |
#      |Multiple BB and AC Accounts - Negative Scenarios|||||||||
      | N_5970_EML_Creative_01_2_BB_Primary_ACCT_ODT_gt_60_CashWithdr_lt_DSS_Secon_ACCT_ODT_eq_60_CashWithdr_eq_NULL_2_AC      | 4        | 61,60             | 5,NULL                    | NULL                       | NULL,NULL,100,100   | NULL,NULL,100,100   | NULL,NULL,100,100   | NULL,NULL,100,100 |
      | N_5970_EML_Creative_01_2_BB_Primary_ACCT_ODT_gt_60_CashWithdr_eq_NULL_Secon_ACCT_ODT_gt_60_CashWithdr_lt_DSS_2_AC      | 4        | 61,61             | NULL,5                    | NULL                       | NULL,NULL,100,100   | NULL,NULL,100,100   | NULL,NULL,100,100   | NULL,NULL,100,100 |
      | N_5970_EML_Creative_01_2_BB_2_AC_Primary_VPOS_OPOS_FLASH_CHIP_lt_90_Secon_VPOS_OPOS_FLASH_CHIP_gt_90                   | 4        | 70,70             | NULL                      | 5,NULL                     | NULL,NULL,89,100    | NULL,NULL,89,100    | NULL,NULL,89,100    | NULL,NULL,89,100  |
      | N_5970_EML_Creative_02_2_BB_2_AC_Primary_CHIP_gt_DSS_VPOS_OPOS_FLASH_eq_NULL_Secon_CHIP_lt_DSS_VPOS_OPOS_FLASH_eq_NULL | 4        | 70,70             | NULL                      | NULL                       | NULL,NULL,NULL,NULL | NULL,NULL,NULL,NULL | NULL,NULL,NULL,NULL | NULL,NULL,100,5   |
      | N_5970_EML_Creative_02_2_BB_2_AC_Primary_CHIP_lt_DSS_VPOS_OPOS_FLASH_lt_90_Secon_CHIP_eq_NULL_VPOS_OPOS_FLASH_eq_NULL  | 4        | 70,70             | NULL                      | NULL                       | NULL,NULL,81,NULL   | NULL,NULL,81,NULL   | NULL,NULL,81,NULL   | NULL,NULL,5,NULL  |
      | N_5970_EML_Creative_03_2_BB_2_AC_Primary_VPOS_OPOS_eq_NULL_FLASH_eq_NULL_Secon_VPOS_OPOS_lt_DSS_FLASH_eq_NULL          | 4        | 70,70             | NULL                      | NULL                       | NULL,NULL,NULL,NULL | NULL,NULL,NULL,5    | NULL,NULL,NULL,5    | NULL              |
      | N_5970_EML_Creative_03_2_BB_2_AC_Primary_VPOS_OPOS_lt_DSS_FLASH_lt_90_Secon_VPOS_OPOS_lt_DSS_FLASH_eq_NULL             | 4        | 70,70             | NULL                      | NULL                       | NULL,NULL,89,NULL   | NULL,NULL,5,5       | NULL,NULL,5,5       | NULL              |
      | N_5970_EML_Creative_04_2_BB_2_AC_Primary_VPOS_OPOS_eq_NULL_FLASH_eq_NULL_Secon_VPOS_OPOS_eq_NULL_FLASH_lt_DSS          | 4        | 70,70             | NULL                      | NULL                       | NULL,NULL,NULL,5    | NULL,NULL,NULL,NULL | NULL,NULL,NULL,NULL | NULL              |
      | N_5970_EML_Creative_04_2_BB_2_AC_Primary_VPOS_OPOS_lt_90_FLASH_lt_DSS_Secon_VPOS_OPOS_eq_NULL_FLASH_lt_DSS             | 4        | 70,70             | NULL                      | NULL                       | NULL,NULL,5,5       | NULL,NULL,89,NULL   | NULL,NULL,89,NULL   | NULL              |
      | N_5970_EML_Creative_01_2_BB_ANY_Primary_CashBRWithdr_lt_DSS_2_AC_NOT_ALL_Primary_VPOS_gt_90                            | 4        | 70,70             | 5,NULL                    | NULL                       | NULL,NULL,100,100   | NULL,NULL,89,100    | NULL,NULL,100,100   | NULL,NULL,100,100 |
      | N_5970_EML_Creative_01_2_BB_ANY_Primary_CashBRWithdr_lt_DSS_2_AC_NOT_ALL_Primary_OPOS_gt_90                            | 4        | 70,70             | 5,NULL                    | NULL                       | NULL,NULL,100,100   | NULL,NULL,100,100   | NULL,NULL,100,89    | NULL,NULL,100,100 |
      | N_5970_EML_Creative_01_2_BB_ANY_Primary_CashBRWithdr_lt_DSS_2_AC_NOT_ALL_Primary_FLASH_gt_90                           | 4        | 70,70             | 5,NULL                    | NULL                       | NULL,NULL,89,100    | NULL,NULL,100,100   | NULL,NULL,100,100   | NULL,NULL,100,100 |
      | N_5970_EML_Creative_01_2_BB_ANY_Primary_CashBRWithdr_lt_DSS_2_AC_NOT_ALL_Primary_CHIP_gt_90                            | 4        | 70,70             | 5,NULL                    | NULL                       | NULL,NULL,100,100   | NULL,NULL,100,100   | NULL,NULL,100,100   | NULL,NULL,100,89  |
      | N_5970_EML_Creative_02_2_BB_2_AC_ANY_Primary_CHIP_lt_DSS_NOT_ALL_Primary_VPOS_gt_90                                    | 4        | 70,70             | NULL                      | NULL                       | NULL,NULL,100,100   | NULL,NULL,89,100    | NULL,NULL,100,100   | NULL,NULL,NULL,5  |
      | N_5970_EML_Creative_02_2_BB_2_AC_ANY_Primary_CHIP_lt_DSS_NOT_ALL_Primary_OPOS_gt_90                                    | 4        | 70,70             | NULL                      | NULL                       | NULL,NULL,100,100   | NULL,NULL,100,100   | NULL,NULL,100,89    | NULL,NULL,NULL,5  |
      | N_5970_EML_Creative_02_2_BB_2_AC_ANY_Primary_CHIP_lt_DSS_NOT_ALL_Primary_FLASH_gt_90                                   | 4        | 70,70             | NULL                      | NULL                       | NULL,NULL,100,89    | NULL,NULL,100,100   | NULL,NULL,100,100   | NULL,NULL,NULL,5  |
      | N_5970_EML_Creative_03_2_BB_2_AC_ANY_Primary_VPOS_lt_DSS_NOT_ALL_Primary_FLASH_gt_90                                   | 4        | 70,70             | NULL                      | NULL                       | NULL,NULL,100,89    | NULL,NULL,5,NULL    | NULL,NULL,NULL,NULL | NULL              |
      | N_5970_EML_Creative_03_2_BB_2_AC_ANY_Primary_OPOS_lt_DSS_NOT_ALL_Primary_FLASH_gt_90                                   | 4        | 70,70             | NULL                      | NULL                       | NULL,NULL,89,100    | NULL,NULL,NULL,NULL | NULL,NULL,NULL,5    | NULL              |
      | N_5970_EML_Creative_04_2_BB_2_AC_ANY_Primary_FLASH_lt_DSS_NOT_ALL_Primary_VPOS_gt_90                                   | 4        | 70,70             | NULL                      | NULL                       | NULL,NULL,NULL,5    | NULL,NULL,89,100    | NULL,NULL,100,100   | NULL              |
      | N_5970_EML_Creative_04_2_BB_2_AC_ANY_Primary_FLASH_lt_DSS_NOT_ALL_Primary_OPOS_gt_90                                   | 4        | 70,70             | NULL                      | NULL                       | NULL,NULL,NULL,5    | NULL,NULL,100,100   | NULL,NULL,89,100    | NULL              |
#      |Email Channel Specific - Negative Scenarios|||||||||
      | N_5970_EML_Creative_01_VLD_EMAIL_F_ne_Y                                                                                | 2        | 70                | 5                         | NULL                       | NULL,100            | NULL,100            | NULL,100            | NULL,100          |
      | N_5970_EML_Creative_01_VLD_EMAIL_F_eq_NULL                                                                             | 2        | 70                | 5                         | NULL                       | NULL,100            | NULL,100            | NULL,100            | NULL,100          |
      | N_5970_EML_Creative_01_PRIM_EMAIL_ADDR_eq_NULL                                                                         | 2        | 70                | 5                         | NULL                       | NULL,100            | NULL,100            | NULL,100            | NULL,100          |
      | N_5970_EML_Creative_01_DO_NOT_EMAIL_F_ne_N                                                                             | 2        | 70                | 5                         | NULL                       | NULL,100            | NULL,100            | NULL,100            | NULL,100          |
      | N_5970_EML_Creative_01_DO_NOT_EMAIL_F_eq_NULL                                                                          | 2        | 70                | 5                         | NULL                       | NULL,100            | NULL,100            | NULL,100            | NULL,100          |
      | N_5970_EML_Creative_01_MK_BK_INFO_ACCTS_EMAIL_F_eq_N                                                                   | 2        | 70                | 5                         | NULL                       | NULL,100            | NULL,100            | NULL,100            | NULL,100          |

