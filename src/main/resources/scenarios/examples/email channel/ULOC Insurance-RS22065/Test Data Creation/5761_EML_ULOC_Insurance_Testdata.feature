@ULOC_Insurance_EML_TestLoad
Feature: Test Data Creation For ULOC Insurance CIE5761 for EML Channel

  @ULOC_Insurance_EML @ULOC_Insurance_EML_Base_TestData_5761 @5761 @EML @RS22065
  Scenario Outline: ULOC Insurance 5761 RS22065 EML Create test data for Base Line test cases
    Given load data from "ULOCIns_EML_CIE5761" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    Examples:
      | Test cases                | Acct_Cnt | Insight_Cnt | ACCT_ODT_Val |
      | 5761_EML_BASE_Creative_01 | 1        | 0           | 90           |
      | 5761_EML_BASE_Creative_02 | 1        | 0           | 90           |
      | 5761_EML_BASE_Creative_03 | 1        | 0           | 20           |
      | 5761_EML_BASE_Creative_04 | 1        | 0           | 20           |

  @ULOC_Insurance_EML @ULOC_Insurance_EML_Positive_TestData_5761 @5761 @EML @RS22065
  Scenario Outline: ULOC Insurance 5761 RS22065 EML Create test data for Positive test cases
    Given load data from "ULOCIns_EML_CIE5761" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    Examples:
      | Test cases                                                               | Acct_Cnt | Insight_Cnt | ACCT_ODT_Val |
      | 5761_EML_Seg_01_CREDIT_ARREARS_DAYS_lt_60                                | 1        | 0           | 90           |
      | 5761_EML_Seg_01_CREDIT_ARREARS_DAYS_eq_60                                | 1        | 0           | 90           |
      | 5761_EML_Seg_01_CREDIT_ARREARS_DAYS_eq_NULL                              | 1        | 0           | 90           |
      | 5761_EML_Seg_01_CRNT_BAL_AMT_gt_0_and_lt_1.2xCR_CRD_LMT_AMT              | 1        | 0           | 90           |
      | 5761_EML_Seg_01_CRNT_BAL_AMT_gt_0_and_eq_1.2xCR_CRD_LMT_AMT              | 1        | 0           | 90           |
      | 5761_EML_Seg_02_CUST_AGE_eq_18                                           | 1        | 0           | 90           |
      | 5761_EML_Seg_02_CUST_AGE_gt_18                                           | 1        | 0           | 90           |
      | 5761_EML_Seg_02_CUST_AGE_lt_64                                           | 1        | 0           | 90           |
      | 5761_EML_Seg_02_CUST_AGE_eq_64                                           | 1        | 0           | 90           |
      | 5761_EML_Seg_02_DO_NOT_SOLICIT_F_eq_NULL                                 | 1        | 0           | 90           |
      | 5761_EML_Seg_03_LANG_CD_eq_fr                                            | 1        | 0           | 20           |
      | 5761_EML_Seg_03_MK_INSURANCE_EMAIL_F_eq_NULL                             | 1        | 0           | 20           |
      | 5761_EML_Seg_03_PRIM_PROV_CD_eq_NULL                                     | 1        | 0           | 20           |
      | 5761_EML_Seg_03_SRC_SYS_PRD_CD_eq_VIC_SRC_SYS_SUB_PRD_CD_eq_RG           | 1        | 0           | 20           |
      | 5761_EML_Seg_03_SRC_SYS_PRD_CD_eq_VIC_SRC_SYS_SUB_PRD_CD_eq_RS           | 1        | 0           | 20           |
      | 5761_EML_Seg_04_SRC_SYS_PRD_CD_eq_SCL_SRC_SYS_SUB_PRD_CD_eq_CS           | 1        | 0           | 20           |
      | 5761_EML_Seg_04_SRC_SYS_PRD_CD_eq_SCL_SRC_SYS_SUB_PRD_CD_eq_INE          | 1        | 0           | 20           |
      | 5761_EML_Seg_04_SRC_SYS_PRD_CD_eq_SCL_SRC_SYS_SUB_PRD_CD_eq_RS           | 1        | 0           | 20           |
      | 5761_EML_Seg_04_SRC_SYS_PRD_CD_eq_SCL_SRC_SYS_SUB_PRD_CD_eq_RL           | 1        | 0           | 20           |
      | 5761_EML_Seg_04_SRC_SYS_PRD_CD_eq_SSL_SRC_SYS_SUB_PRD_CD_eq_SP           | 1        | 0           | 20           |
      | 5761_EML_Seg_04_SRC_SYS_PRD_CD_eq_SSL_SRC_SYS_SUB_PRD_CD_eq_LI           | 1        | 0           | 20           |
      | 5761_EML_Seg_01_INS_STATUS_DESC_eq_Waived                                | 1        | 0           | 90           |
      | 5761_EML_Seg_02_INS_STATUS_DESC_eq_Life Only                             | 1        | 0           | 90           |
      | 5761_EML_Seg_02_INS_STATUS_DESC_eq_Disability and Life                   | 1        | 0           | 90           |
      | 5761_EML_Seg_02_INS_STATUS_DESC_eq_Disability, Life and Critical Illness | 1        | 0           | 90           |
      | 5761_EML_Seg_02_INS_STATUS_DESC_eq_Life and CI                           | 1        | 0           | 90           |
      | 5761_EML_Seg_02_INS_STATUS_DESC_eq_Life, Disability and Job Loss         | 1        | 0           | 90           |
      | 5761_EML_Seg_01_ACCT_ODT_eq_70                                           | 1        | 0           | 70           |
      | 5761_EML_Seg_01_ACCT_ODT_gt_70                                           | 1        | 0           | 71           |
      | 5761_EML_Seg_01_CR_CRD_LMT_AMT_gt_0                                      | 1        | 0           | 90           |
      | 5761_EML_Seg_01_CR_CRD_LMT_AMT_lt_50000                                  | 1        | 0           | 90           |
      | 5761_EML_Seg_01_CR_CRD_LMT_AMT_eq_50000                                  | 1        | 0           | 90           |
      | 5761_EML_Seg_02_ACCT_ODT_eq_70                                           | 1        | 0           | 70           |
      | 5761_EML_Seg_02_ACCT_ODT_gt_70                                           | 1        | 0           | 71           |
      | 5761_EML_Seg_02_CR_CRD_LMT_AMT_gt_0                                      | 1        | 0           | 90           |
      | 5761_EML_Seg_02_CR_CRD_LMT_AMT_lt_50000                                  | 1        | 0           | 90           |
      | 5761_EML_Seg_02_CR_CRD_LMT_AMT_eq_50000                                  | 1        | 0           | 90           |
      | 5761_EML_Seg_03_ACCT_ODT_gt_0                                            | 1        | 0           | 1            |
      | 5761_EML_Seg_03_ACCT_ODT_eq_0                                            | 1        | 0           | 0            |
      | 5761_EML_Seg_03_ACCT_ODT_lt_30                                           | 1        | 0           | 29           |
      | 5761_EML_Seg_03_ACCT_ODT_eq_30                                           | 1        | 0           | 30           |
      | 5761_EML_Seg_03_CR_CRD_LMT_AMT_gt_0                                      | 1        | 0           | 20           |
      | 5761_EML_Seg_03_CR_CRD_LMT_AMT_lt_50000                                  | 1        | 0           | 20           |
      | 5761_EML_Seg_03_CR_CRD_LMT_AMT_eq_50000                                  | 1        | 0           | 20           |
      | 5761_EML_Seg_04_ACCT_ODT_gt_0                                            | 1        | 0           | 1            |
      | 5761_EML_Seg_04_ACCT_ODT_eq_0                                            | 1        | 0           | 0            |
      | 5761_EML_Seg_04_ACCT_ODT_lt_30                                           | 1        | 0           | 29           |
      | 5761_EML_Seg_04_ACCT_ODT_eq_30                                           | 1        | 0           | 30           |
      | 5761_EML_Seg_04_CR_CRD_LMT_AMT_gt_50000                                  | 1        | 0           | 20           |
      | 5761_EML_Seg_01_CRNT_BAL_AMT_eq_0                                        | 1        | 0           | 90           |

      #      | Prioritization Scenarios                                                 |
      | 5761_EML_Seg_01_Multiple_Accounts_Different_ACCT_ODT                     | 2        | 0           | 90,100       |
      | 5761_EML_Seg_01_Multiple_Accounts_Same_ACCT_ODT_Prior_1_2_3_4            | 4        | 0           | 90,90,90,90  |
      | 5761_EML_Seg_01_Multiple_Accounts_Same_ACCT_ODT_Prior_2_3_4              | 3        | 0           | 90,90,90     |
      | 5761_EML_Seg_01_Multiple_Accounts_Same_ACCT_ODT_Prior_3_4                | 2        | 0           | 90,90        |


  @ULOC_Insurance_EML @ULOC_Insurance_EML_Negative_TestData_5761 @5761 @EML @RS22065
  Scenario Outline: ULOC Insurance 5761 RS22065 EML Create test data for Negative test cases
    Given load data from "ULOCIns_EML_CIE5761" excel sheet
    # CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    # ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts

    # CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    Examples:
      | Test cases                                                                 | Acct_Cnt | Insight_Cnt | ACCT_ODT_Val |
      | N-5761_EML_Seg_01_ACCT_SUBSYS_ID_ne_KS                                     | 1        | 0           | 90           |
      | N-5761_EML_Seg_01_ACCT_SUBSYS_ID_eq_NULL                                   | 1        | 0           | 90           |
      | N-5761_EML_Seg_01_CREDIT_ARREARS_DAYS_gt_60                                | 1        | 0           | 90           |
      | N-5761_EML_Seg_01_CRNT_BAL_AMT_gt_0_and_gt_1.2xCR_CRD_LMT_AMT              | 1        | 0           | 90           |
      | N-5761_EML_Seg_01_CRNT_BAL_AMT_lt_0                                        | 1        | 0           | 90           |
      | N-5761_EML_Seg_01_CUST_AGE_lt_18                                           | 1        | 0           | 90           |
      | N-5761_EML_Seg_01_CUST_AGE_gt_64                                           | 1        | 0           | 90           |
      | N-5761_EML_Seg_01_CUST_AGE_eq_NULL                                         | 1        | 0           | 90           |
      | N-5761_EML_Seg_02_CUST_TP_CD_ne_PSNL                                       | 1        | 0           | 90           |
      | N-5761_EML_Seg_02_DECEASED_F_ne_N                                          | 1        | 0           | 90           |
      | N-5761_EML_Seg_02_DECEASED_F_eq_NULL                                       | 1        | 0           | 90           |
      | N-5761_EML_Seg_02_DO_NOT_EMAIL_F_ne_N                                      | 1        | 0           | 90           |
      | N-5761_EML_Seg_02_DO_NOT_EMAIL_F_eq_NULL                                   | 1        | 0           | 90           |
      | N-5761_EML_Seg_02_DO_NOT_SOLICIT_F_eq_Y                                    | 1        | 0           | 90           |
      | N-5761_EML_Seg_02_INDV_FRST_NM_eq_NULL                                     | 1        | 0           | 90           |
      | N-5761_EML_Seg_02_INDV_FRST_NM_eq_BLANK                                    | 1        | 0           | 90           |
      | N-5761_EML_Seg_02_INDV_LAST_NM_eq_NULL                                     | 1        | 0           | 90           |
      | N-5761_EML_Seg_02_INDV_LAST_NM_eq_BLANK                                    | 1        | 0           | 90           |
      | N-5761_EML_Seg_03_LANG_CD_eq_bn                                            | 1        | 0           | 20           |
      | N-5761_EML_Seg_03_LANG_CD_eq_NULL                                          | 1        | 0           | 20           |
      | N-5761_EML_Seg_03_MK_INSURANCE_EMAIL_F_eq_N                                | 1        | 0           | 20           |
      | N-5761_EML_Seg_03_MRKTBLE_F_ne_Y                                           | 1        | 0           | 20           |
      | N-5761_EML_Seg_03_MRKTBLE_F_eq_NULL                                        | 1        | 0           | 20           |
      | N-5761_EML_Seg_03_PRIM_CNTRY_CD_ne_CA                                      | 1        | 0           | 20           |
      | N-5761_EML_Seg_03_PRIM_CNTRY_CD_eq_NULL                                    | 1        | 0           | 20           |
      | N-5761_EML_Seg_03_PRIM_EMAIL_ADDR_eq_NULL                                  | 1        | 0           | 20           |
      | N-5761_EML_Seg_03_PRIM_EMAIL_ADDR_eq_BLANK                                 | 1        | 0           | 20           |
      | N-5761_EML_Seg_04_PRIM_PROV_CD_eq_QC                                       | 1        | 0           | 20           |
      | N-5761_EML_Seg_04_PRIMARY_ACCT_HOLDER_FLAG_ne_Y                            | 1        | 0           | 20           |
      | N-5761_EML_Seg_04_PRIMARY_ACCT_HOLDER_FLAG_eq_NULL                         | 1        | 0           | 20           |
      | N-5761_EML_Seg_04_SRC_ACCT_STAT_CD_ne_Open                                 | 1        | 0           | 20           |
      | N-5761_EML_Seg_04_SRC_ACCT_STAT_CD_eq_NULL                                 | 1        | 0           | 20           |
      | N-5761_EML_Seg_04_SRC_SYS_PRD_CD_eq_AXG_SRC_SYS_SUB_PRD_CD_eq_GC           | 1        | 0           | 20           |
      | N-5761_EML_Seg_04_SRC_SYS_PRD_CD_eq_NULL_SRC_SYS_SUB_PRD_CD_eq_NULL        | 1        | 0           | 20           |
      | N-5761_EML_Seg_04_VLD_EMAIL_F_ne_Y                                         | 1        | 0           | 20           |
      | N-5761_EML_Seg_04_VLD_EMAIL_F_eq_NULL                                      | 1        | 0           | 20           |
      | N-5761_EML_Seg_01_ACCT_ODT_lt_70                                           | 1        | 0           | 69           |
      | N-5761_EML_Seg_01_ACCT_ODT_eq_NULL                                         | 1        | 0           | NULL         |
      | N-5761_EML_Seg_02_CR_CRD_LMT_AMT_lt_0                                      | 1        | 0           | 90           |
      | N-5761_EML_Seg_02_CR_CRD_LMT_AMT_eq_0                                      | 1        | 0           | 90           |
      | N-5761_EML_Seg_02_CR_CRD_LMT_AMT_gt_50000                                  | 1        | 0           | 90           |
      | N-5761_EML_Seg_02_INS_STATUS_DESC_eq_Invalid                               | 1        | 0           | 90           |
      | N-5761_EML_Seg_02_INS_STATUS_DESC_eq_NULL                                  | 1        | 0           | 90           |
      | N-5761_EML_Seg_03_ACCT_ODT_lt_0                                            | 1        | 0           | -1           |
      | N-5761_EML_Seg_03_ACCT_ODT_gt_30                                           | 1        | 0           | 31           |
      | N-5761_EML_Seg_03_INS_STATUS_DESC_eq_Life Only                             | 1        | 0           | 20           |
      | N-5761_EML_Seg_03_INS_STATUS_DESC_eq_Disability                            | 1        | 0           | 20           |
      | N-5761_EML_Seg_03_INS_STATUS_DESC_eq_Disability and Life                   | 1        | 0           | 20           |
      | N-5761_EML_Seg_03_INS_STATUS_DESC_eq_Disability, Job Loss                  | 1        | 0           | 20           |
      | N-5761_EML_Seg_04_CR_CRD_LMT_AMT_lt_0                                      | 1        | 0           | 20           |
      | N-5761_EML_Seg_04_CR_CRD_LMT_AMT_eq_0                                      | 1        | 0           | 20           |
      | N-5761_EML_Seg_04_CR_CRD_LMT_AMT_eq_NULL                                   | 1        | 0           | 20           |
      | N-5761_EML_Seg_04_INS_STATUS_DESC_eq_Disability, Life and Critical Illness | 1        | 0           | 20           |
      | N-5761_EML_Seg_04_INS_STATUS_DESC_eq_Life and CI                           | 1        | 0           | 20           |
      | N-5761_EML_Seg_04_INS_STATUS_DESC_eq_Life, Disability and Job Loss         | 1        | 0           | 20           |
      | N-5761_EML_Seg_02_INS_STATUS_DESC_eq_Disability                            | 1        | 0           | 90           |
      | N-5761_EML_Seg_02_INS_STATUS_DESC_eq_Disability, Job Loss                  | 1        | 0           | 90           |



