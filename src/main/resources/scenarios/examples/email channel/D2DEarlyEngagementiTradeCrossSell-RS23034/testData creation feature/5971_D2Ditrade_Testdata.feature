@5971_TestDataCreation
Feature: Test data creation for D2D Early Engagement iTrade Cross Sell

  @D2DEarlyEngagementiTradeCrossSell @D2DEarlyEngagementiTradeCrossSell_Base_TestData @5971 @EMAIL @RS23034
  Scenario Outline: D2DEarlyEngagementiTradeCrossSell_RS23034_5971_EMAIL Create test data for Base test cases
    Given load data from "D2Ditrade_EML" excel sheet

    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write "ACCT_ODT" for "<ACCT_OPENED_DT>" into "ACCT_DIM" sheet for "<Test cases>" for decrement in days
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table

    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases       | ACCT_OPENED_DT |
      | 5971_EML_BASE_01 | 29             |
      | 5971_EML_BASE_02 | 29             |
      ## Added for May 11 2023 REL
      | 5971_EML_BASE_03 | 29             |

  @D2DEarlyEngagementiTradeCrossSell @D2DEarlyEngagementiTradeCrossSell_Positive_TestData @5971 @EMAIL @RS23034
  Scenario Outline: D2DEarlyEngagementiTradeCrossSell_RS23034_5971_EMAIL Create test data for Positive test cases
    Given load data from "D2Ditrade_EML" excel sheet

    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write "ACCT_ODT" for "<ACCT_OPENED_DT>" into "ACCT_DIM" sheet for "<Test cases>" for decrement in days
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table

    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                                                  | ACCT_OPENED_DT |
      | 5971_EML_LANG_CD_eq_fr                                                      | 29             |
      | 5971_EML_DO_NOT_SOLICIT_F_eq_NULL                                           | 29             |
      | 5971_EML_NOT_AML_KYC_eq_NULL                                                | 29             |
      | 5971_EML_CUST_AGE_eq_18                                                     | 29             |
      | 5971_EML_IMMGRTN_CAT_CD_ne_S00                                              | 29             |
      | 5971_EML_MK_BK_INFO_ACCTS_EMAIL_F_eq_NULL                                   | 29             |
      | 5971_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_03 | 29             |
      | 5971_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_07 | 29             |
      | 5971_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_08 | 29             |
      | 5971_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_07_SRC_SYS_SUB_PRD_CD_eq_12 | 29             |
      | 5971_EML_ACCT_ODT_eq_27days                                                 | 27             |
      | 5971_EML_ACCT_ODT_eq_30days                                                 | 30             |
      ## Added for May 11 2023 REL
      | 5971_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_02 | 29             |

  @D2DEarlyEngagementiTradeCrossSell @D2DEarlyEngagementiTradeCrossSell_Negative_TestData @5971 @EMAIL @RS23034
  Scenario Outline: D2DEarlyEngagementiTradeCrossSell_RS23034_5971_EMAIL Create test data for Negative test cases
    Given load data from "D2Ditrade_EML" excel sheet

    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write "ACCT_ODT" for "<ACCT_OPENED_DT>" into "ACCT_DIM" sheet for "<Test cases>" for decrement in days
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table

    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                                                      | ACCT_OPENED_DT |
      | N_5971_EML_DECEASED_F_eq_Y                                                      | 29             |
      | N_5971_EML_DECEASED_F_eq_NULL                                                   | 29             |
      | N_5971_EML_PRIM_CNTRY_CD_ne_CA                                                  | 29             |
      | N_5971_EML_PRIM_CNTRY_CD_eq_NULL                                                | 29             |
      | N_5971_EML_CUST_TP_CD_ne_PSNL                                                   | 29             |
      | N_5971_EML_LANG_CD_ne_en                                                        | 29             |
      | N_5971_EML_LANG_CD_ne_fr                                                        | 29             |
      | N_5971_EML_LANG_CD_eq_NULL                                                      | 29             |
      | N_5971_EML_DO_NOT_SOLICIT_F_eq_Y                                                | 29             |
      | N_5971_EML_NOT_AML_KYC_eq_Y                                                     | 29             |
      | N_5971_EML_CUST_AGE_lt_18                                                       | 29             |
      | N_5971_EML_CUST_AGE_eq_NULL                                                     | 29             |
      | N_5971_EML_ITRADE_MCLEOD_F_eq_Y                                                 | 29             |
      | N_5971_EML_ITRADE_MCLEOD_F_eq_NULL                                              | 29             |
      | N_5971_EML_IMMGRTN_CAT_CD_eq_S                                                  | 29             |
      | N_5971_EML_IMMGRTN_CAT_CD_eq_S00                                                | 29             |
      | N_5971_EML_DO_NOT_EMAIL_F_eq_Y                                                  | 29             |
      | N_5971_EML_DO_NOT_EMAIL_F_eq_NULL                                               | 29             |
      | N_5971_EML_VLD_EMAIL_F_eq_N                                                     | 29             |
      | N_5971_EML_VLD_EMAIL_F_eq_NULL                                                  | 29             |
      | N_5971_EML_PRIM_EMAIL_ADDR_eq_NULL                                              | 29             |
      | N_5971_EML_INDV_FRST_NM_eq_NULL                                                 | 29             |
      | N_5971_EML_INDV_LAST_NM_eq_NULL                                                 | 29             |
      | N_5971_EML_MK_BK_INFO_ACCTS_EMAIL_F_eq_N                                        | 29             |
      | N_5971_EML_ACCT_SUBSYS_ID_ne_BB                                                 | 29             |
      | N_5971_EML_ACCT_SUBSYS_ID_eq_NULL                                               | 29             |
      | N_5971_EML_SRC_ACCT_STAT_CD_ne_A                                                | 29             |
      | N_5971_EML_SRC_ACCT_STAT_CD_eq_NULL                                             | 29             |
      | N_5971_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_02   | 29             |
      | N_5971_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_NULL | 29             |
      | N_5971_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_07_SRC_SYS_SUB_PRD_CD_eq_02   | 29             |
      | N_5971_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_NULL_SRC_SYS_SUB_PRD_CD_eq_02 | 29             |
      | N_5971_EML_PRIMARY_ACCT_HOLDER_FLAG_eq_N                                        | 29             |
      | N_5971_EML_PRIMARY_ACCT_HOLDER_FLAG_eq_NULL                                     | 29             |
      | N_5971_EML_ACCT_ODT_lt_27days                                                   | 26             |
      | N_5971_EML_ACCT_ODT_gt_30days                                                   | 31             |
      | N_5971_EML_ACCT_ODT_eq_NULL                                                     | NULL           |
      ## Added for May 11 2023 REL
      | N_5971_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_02   | 29             |
      | N_5971_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_NULL | 29             |

## Multiple Account Test Cases for AFIL
  @D2DEarlyEngagementiTradeCrossSell @D2DEarlyEngagementiTradeCrossSell_Multiple_Accounts_Positive_TestData @5971 @EMAIL @RS23034
  Scenario Outline: D2DEarlyEngagementiTradeCrossSell_RS23034_5971_EMAIL Create test data for Multiple Accounts Positive test cases
    Given load data from "D2Ditrade_EML" excel sheet

    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    And write Different account odt "<ACCT_OPENED_DT>""<ACCT_OPENED_DT_SL>" value into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    Examples:
      | Test cases                                                                                               | Acct_Cnt | ACCT_OPENED_DT | ACCT_OPENED_DT_SL |
      | 5971_EML_ACCT_SUBSYS_ID_ne_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_lt_180days_AFIL   | 2        | 29             | 100               |
      | 5971_EML_ACCT_SUBSYS_ID_eq_NULL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_lt_180days_AFIL | 2        | 29             | 100               |
      | 5971_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_ne_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_lt_180days_AFIL   | 2        | 29             | 100               |
      | 5971_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_NULL_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_lt_180days_AFIL     | 2        | 29             | 100               |
      | 5971_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_ne_09_ACCT_ODT_lt_180days_AFIL   | 2        | 29             | 100               |
      | 5971_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_NULL_ACCT_ODT_lt_180days_AFIL | 2        | 29             | 100               |
      | 5971_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_gt_180days_AFIL   | 2        | 29             | 181               |
      | 5971_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_eq_NULL_AFIL      | 2        | 29             | NULL              |

  @D2DEarlyEngagementiTradeCrossSell @D2DEarlyEngagementiTradeCrossSell_Multiple_Accounts_Negative_TestData @5971 @EMAIL @RS23034
  Scenario Outline: D2DEarlyEngagementiTradeCrossSell_RS23034_5971_EMAIL Create test data for Multiple Accounts Negative test cases
    Given load data from "D2Ditrade_EML" excel sheet

    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    And write Different account odt "<ACCT_OPENED_DT>""<ACCT_OPENED_DT_SL>" value into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    Examples:
      | Test cases | Acct_Cnt | ACCT_OPENED_DT | ACCT_OPENED_DT_SL |
#      | N_5971_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_lt_180days_AFIL | 2        | 29             | 179               |
#      | N_5971_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_eq_180days_AFIL | 2        | 29             | 180               |

  @D2DEarlyEngagementiTradeCrossSell @D2DEarlyEngagementiTradeCrossSell_Multiple_Accounts_Prioritization_Positive_TestData @5971 @EMAIL @RS23034
  Scenario Outline: D2DEarlyEngagementiTradeCrossSell_RS23034_5971_EMAIL Create test data for Multiple Accounts Positive test cases
    Given load data from "D2Ditrade_EML" excel sheet

    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_OPENED_DT>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records

#    And write Different account odt "<ACCT_OPENED_DT>""<ACCT_OPENED_DT_SL>" value into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts


    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    Examples:
      | Test cases                                                                                                        | Acct_Cnt | ACCT_OPENED_DT |
      | 5971_EML_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_03_SRC_SYS_PRD_CD_eq_07_SRC_SYS_SUB_PRD_CD_eq_11_BB           | 2        | 29,NULL        |
      | 5971_EML_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_03_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_07_BB           | 2        | 29,NULL        |
      | 5971_EML_SRC_SYS_PRD_CD_eq_07_SRC_SYS_SUB_PRD_CD_eq_11_SRC_SYS_PRD_CD_eq_07_SRC_SYS_SUB_PRD_CD_eq_12_BB           | 2        | 29,NULL        |
      ## Added for May 11 2023 REL
      | 5971_EML_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_03_SRC_SYS_PRD_CD_eq_07_SRC_SYS_SUB_PRD_CD_eq_11_AND_23_01_BB | 3        | 29,29,29       |
      | 5971_EML_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_03_SRC_SYS_PRD_CD_eq_07_SRC_SYS_SUB_PRD_CD_eq_12_BB           | 2        | 29,29          |
