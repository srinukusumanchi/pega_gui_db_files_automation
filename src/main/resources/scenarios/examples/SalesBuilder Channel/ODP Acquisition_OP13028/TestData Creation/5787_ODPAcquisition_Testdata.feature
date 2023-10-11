@ODPAcquisition_SF_5787
Feature: Test data creation for SF ODP Acquisition


  @ODPAcquisition_SF_5787_positive
  Scenario Outline: ODP Acquisition_OP13028_5787_SF Create test data for positive testcases
    Given load data from "ODPAcq_SF" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
    And  write "MAT_DT" column value with increment of "<months>"  into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
    And  write Scotia card Number into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
    Then insert customer account details in "ACCT_DIM" table having "3" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "3" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "3" accounts
    Examples:
      | Test cases                                                                                                        | months |
      | 5787_BASE SCENARIO_PreapprovedCustomer                                                                            | 5      |
      | 5787_BASE SCENARIO_PayrollCustomer                                                                                | 5      |
      | 5787_CC_VIP_IND =NULL or not in (2, 9)                                                                            | 6      |
      | 5787_CUST_AGE = 18                                                                                                | 1      |
      | 5787_CUST_AGE = 80                                                                                                | 5      |
      | 5787_LANG_CD = en                                                                                                 | 1      |
      | 5787_LANG_CD = fr                                                                                                 | 5      |
      | 5787_NOT_AML_KYC !=  Y                                                                                            | 6      |
      | 5787_Active Mortgages maturing in 5 or 6 months_SOL                                                               | 5      |
      | 5787_Active Mortgages maturing in 5 or 6 months_BOR                                                               | 6      |
      | 5787_ GICs maturing in the next month                                                                             | 1      |
      | 5787_DO_NOT_SOLICIT_F !=Y                                                                                         | 1      |
      | 5787_DO_NOT_CALL_F = N                                                                                            | 5      |
      | 5787_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD = A and IP_AR_RELATN_TYPE_CD = SOL and PRIMARY_ACCT_HOLDER_FLAG = Y | 6      |
      | 5787_ACCT_SUBSYS_ID = AC and EDW_ACCT_STAT_CD = A                                                                 | 1      |
      | 5787_SRC_SYS_PRD_CD = 01 and SRC_SYS_SUB_PRD_CD = 01                                                              | 1      |
      | 5787_SRC_SYS_PRD_CD = 01 and SRC_SYS_SUB_PRD_CD = 02                                                              | 5      |
      | 5787_SRC_SYS_PRD_CD = 01 and SRC_SYS_SUB_PRD_CD = 03                                                              | 1      |
      | 5787_SRC_SYS_PRD_CD = 01 and SRC_SYS_SUB_PRD_CD = 04                                                              | 6      |
      | 5787_SRC_SYS_PRD_CD = 02 and SRC_SYS_SUB_PRD_CD = 01                                                              | 1      |
      | 5787_SRC_SYS_PRD_CD = 02 and SRC_SYS_SUB_PRD_CD = 02                                                              | 5      |
      | 5787_SRC_SYS_PRD_CD = 02 and SRC_SYS_SUB_PRD_CD = 03                                                              | 1      |
      | 5787_SRC_SYS_PRD_CD = 07 and SRC_SYS_SUB_PRD_CD = 01                                                              | 6      |
      | 5787_SRC_SYS_PRD_CD = 07 and SRC_SYS_SUB_PRD_CD = 02                                                              | 1      |
      | 5787_SRC_SYS_PRD_CD = 07 and SRC_SYS_SUB_PRD_CD = 03                                                              | 5      |
      | 5787_SRC_SYS_PRD_CD = 07 and SRC_SYS_SUB_PRD_CD = 04                                                              | 1      |
      | 5787_SRC_SYS_PRD_CD = 07 and SRC_SYS_SUB_PRD_CD = 06                                                              | 6      |
      | 5787_SRC_SYS_PRD_CD = 07 and SRC_SYS_SUB_PRD_CD = 07                                                              | 1      |
      | 5787_SRC_SYS_PRD_CD = 07 and SRC_SYS_SUB_PRD_CD = 08                                                              | 5      |
      | 5787_SRC_SYS_PRD_CD = 07 and SRC_SYS_SUB_PRD_CD = 09                                                              | 1      |
      | 5787_SRC_SYS_PRD_CD = 07 and SRC_SYS_SUB_PRD_CD = 11                                                              | 6      |
      | 5787_SRC_SYS_PRD_CD = 07 and SRC_SYS_SUB_PRD_CD = 12                                                              | 1      |
      | 5787_SRC_SYS_PRD_CD = 07 and SRC_SYS_SUB_PRD_CD = 18                                                              | 5      |
      | 5787_SRC_SYS_PRD_CD = 07 and SRC_SYS_SUB_PRD_CD = 19                                                              | 1      |
      | 5787_SRC_SYS_PRD_CD = 12 and SRC_SYS_SUB_PRD_CD = 01                                                              | 6      |
      | 5787_SRC_SYS_PRD_CD = 12 and SRC_SYS_SUB_PRD_CD = 03                                                              | 1      |
      | 5787_SRC_SYS_PRD_CD = 12 and SRC_SYS_SUB_PRD_CD = 07                                                              | 5      |
      | 5787_SRC_SYS_PRD_CD = 12 and SRC_SYS_SUB_PRD_CD = 08                                                              | 1      |
      | 5787_SRC_SYS_PRD_CD = 13 and SRC_SYS_SUB_PRD_CD = 01                                                              | 6      |
      | 5787_SRC_SYS_PRD_CD = 13 and SRC_SYS_SUB_PRD_CD = 03                                                              | 1      |
      | 5787_SRC_SYS_PRD_CD = 13 and SRC_SYS_SUB_PRD_CD = 07                                                              | 5      |
      | 5787_SRC_SYS_PRD_CD = 13 and SRC_SYS_SUB_PRD_CD = 08                                                              | 1      |
      | 5787_SRC_SYS_PRD_CD = 19 and SRC_SYS_SUB_PRD_CD = 01                                                              | 6      |
      | 5787_SRC_SYS_PRD_CD = 19 and SRC_SYS_SUB_PRD_CD = 02                                                              | 1      |
      | 5787_SRC_SYS_PRD_CD = 19 and SRC_SYS_SUB_PRD_CD = 03                                                              | 5      |
      | 5787_SRC_SYS_PRD_CD = 19 and SRC_SYS_SUB_PRD_CD = 04                                                              | 1      |
      | 5787_SRC_SYS_PRD_CD = 19 and SRC_SYS_SUB_PRD_CD = 07                                                              | 6      |
      | 5787_SRC_SYS_PRD_CD = 19 and SRC_SYS_SUB_PRD_CD = 08                                                              | 1      |
      | 5787_SRC_SYS_PRD_CD = 23 and SRC_SYS_SUB_PRD_CD = 01                                                              | 5      |
      | 5787_SRC_SYS_PRD_CD = 23 and SRC_SYS_SUB_PRD_CD = 03                                                              | 1      |


  @ODPAcquisition_SF_5787_positive_segmentation
  Scenario Outline: ODP Acquisition_OP13028_5787_SF Create test data for positive testcases
    Given load data from "ODPAcq_SF" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
    And  write "MAT_DT" column value with increment of "<months>"  into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
    And  write Scotia card Number into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
    Then insert customer account details in "ACCT_DIM" table having "3" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "3" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "3" accounts

    Examples:
      | Test cases                                                                                                                                     | months |
      | 5787_PreapprovedCustomer_PA_TU_FILE_DT != null_PA_ODP_LIMIT > 0                                                                                | 5      |
      | 5787_PreapprovedCustomer_PA_TU_FILE_DT != null_Rest of Canada_DOES NOT have an Ultimate account_PRIM_PROV_CD != QC                             | 1      |
      | 5787_PreapprovedCustomer_PA_TU_FILE_DT != null_Rest of Canada + Ultimate Account Holders_ACCT_SUBSYS_ID = BB and ACCT_DIM.SRC_ACCT_STAT_CD = A | 6      |
      | 5787_PreapprovedCustomer_PA_TU_FILE_DT != null_Rest of Canada + Ultimate Account Holders_SRC_PRD_CD = 23 and SRC_SUB_PRD_CD in 01              | 1      |
      | 5787_PreapprovedCustomer_PA_TU_FILE_DT != null_Rest of Canada + Ultimate Account Holders_SRC_PRD_CD = 23 and SRC_SUB_PRD_CD in 03              | 5      |
      | 5787_PreapprovedCustomer_PA_TU_FILE_DT != null_Rest of Canada + Ultimate Account Holders_PRIMARY_ACCT_HOLDER_FLAG = Y                          | 1      |
      | 5787_PreapprovedCustomer_PA_TU_FILE_DT != null_Quebec_DOES NOT have an Ultimate account_PRIM_PROV_CD = QC                                      | 6      |
      | 5787_PreapprovedCustomer_PA_TU_FILE_DT != null_Quebec + Ultimate Account Holders_ACCT_SUBSYS_ID = BB and ACCT_DIM.SRC_ACCT_STAT_CD = A         | 1      |
      | 5787_PreapprovedCustomer_PA_TU_FILE_DT != null_Quebec + Ultimate Account Holders_SRC_PRD_CD = 23 and SRC_SUB_PRD_CD in 01                      | 5      |
      | 5787_PreapprovedCustomer_PA_TU_FILE_DT != null_Quebec + Ultimate Account Holders_SRC_PRD_CD = 23 and SRC_SUB_PRD_CD in 03                      | 1      |
      | 5787_PreapprovedCustomer_PA_TU_FILE_DT != null_Quebec + Ultimate Account Holders_PRIMARY_ACCT_HOLDER_FLAG = Y                                  | 6      |
      | 5787_PayrollCustomer_Not eligible for Preapproved segment_PA_ODP_LIMIT = 0                                                                     | 1      |
      | 5787_PayrollCustomer_Not eligible for Preapproved segment_PA_ODP_LIMIT < 0                                                                     | 5      |
      | 5787_PayrollCustomer_PAC_PAYRL_F = 1                                                                                                           | 1      |
      | 5787_PayrollCustomer_FICO_SCORE >600                                                                                                           | 6      |
      | 5787_PayrollCustomer_FICO_SCORE =600                                                                                                           | 1      |
      | 5787_PayrollCustomer_CR_RSK_IND = A                                                                                                            | 5      |
      | 5787_PayrollCustomer_CR_RSK_IND = B                                                                                                            | 1      |
      | 5787_PayrollCustomer_CR_RSK_IND = C                                                                                                            | 6      |
      | 5787_PayrollCustomer_Rest of Canada_DOES NOT have an Ultimate account_PRIM_PROV_CD != QC                                                       | 1      |
      | 5787_PayrollCustomer_Rest of Canada + Ultimate Account Holders_ACCT_SUBSYS_ID = BB and ACCT_DIM.SRC_ACCT_STAT_CD = A                           | 5      |
      | 5787_PayrollCustomer_Rest of Canada + Ultimate Account Holders_SRC_PRD_CD = 23 and SRC_SUB_PRD_CD in 01                                        | 1      |
      | 5787_PayrollCustomer_Rest of Canada + Ultimate Account Holders_SRC_PRD_CD = 23 and SRC_SUB_PRD_CD in 03                                        | 6      |
      | 5787_PayrollCustomer_Rest of Canada + Ultimate Account Holders_PRIMARY_ACCT_HOLDER_FLAG = Y                                                    | 1      |
      | 5787_PayrollCustomer_Quebec_DOES NOT have an Ultimate account_PRIM_PROV_CD = QC                                                                | 5      |
      | 5787_PayrollCustomer_Quebec + Ultimate Account Holders_ACCT_SUBSYS_ID = BB and ACCT_DIM.SRC_ACCT_STAT_CD = A                                   | 1      |
      | 5787_PayrollCustomer_Quebec + Ultimate Account Holders_SRC_PRD_CD = 23 and SRC_SUB_PRD_CD in 01                                                | 6      |
      | 5787_PayrollCustomer_Quebec + Ultimate Account Holders_SRC_PRD_CD = 23 and SRC_SUB_PRD_CD in 03                                                | 1      |
      | 5787_PayrollCustomer_Quebec + Ultimate Account Holders_PRIMARY_ACCT_HOLDER_FLAG = Y                                                            | 5      |

  @ODPAcquisition_SF_5787_negative @ODPAcquisition_SF_DEC_2022
  Scenario Outline: ODP Acquisition_OP13028_5787_SF Create test data for negative testcases
    Given load data from "ODPAcq_SF" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
    And  write "MAT_DT" column value with increment of "<months>"  into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
    And  write Scotia card Number into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
    Then insert customer account details in "ACCT_DIM" table having "3" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "3" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "3" accounts

    Examples:
      | Test cases                                                                                                            | months |
#      | N-5787_DECEASED_F != N                                                                                                | 5      |
#      | N-5787_DECEASED_F = NULL                                                                                              | 1      |
#      | N-5787_CUST_TP_CD != PSNL                                                                                             | 6      |
#      | N-5787_CUST_TP_CD = NULL                                                                                              | 1      |
#      | N-5787_PRIM_CNTRY_CD != CA                                                                                            | 5      |
#      | N-5787_PRIM_CNTRY_CD = NULL                                                                                           | 1      |
#      | N-5787_CC_VIP_IND = 2                                                                                                 | 6      |
#      | N-5787_CC_VIP_IND = 9                                                                                                 | 1      |
#      | N-5787_CUST_AGE = 17                                                                                                  | 5      |
#      | N-5787_CUST_AGE = 81                                                                                                  | 1      |
#      | N-5787_CUST_AGE = NULL                                                                                                | 6      |
#      | N-5787_LANG_CD != (en , fr)                                                                                           | 1      |
#      | N-5787_LANG_CD = NULL                                                                                                 | 5      |
#      | N-5787_MRKTBLE_F != Y                                                                                                 | 1      |
#      | N-5787_MRKTBLE_F = NULL                                                                                               | 6      |
#      | N-5787_NOT_AML_KYC =  Y                                                                                               | 1      |
#      | N-5787_NOT_AML_KYC =  Null                                                                                            | 5      |
#      | N-5787_DO_NOT_SOLICIT_F =Y                                                                                            | 1      |
#      | N-5787_DO_NOT_SOLICIT_F =Null                                                                                         | 6      |
#      | N-DO_NOT_CALL_F = Y                                                                                                   | 1      |
#      | N-DO_NOT_CALL_F = Null                                                                                                | 5      |
#      | N-5787_ACCT_SUBSYS_ID != BB and SRC_ACCT_STAT_CD = A and IP_AR_RELATN_TYPE_CD = SOL  and PRIMARY_ACCT_HOLDER_FLAG = Y | 6      |
#      | N-5787_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD != A and IP_AR_RELATN_TYPE_CD = SOL  and PRIMARY_ACCT_HOLDER_FLAG = Y | 1      |
#      | N-5787_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD = A and IP_AR_RELATN_TYPE_CD = SOL  and PRIMARY_ACCT_HOLDER_FLAG != Y | 6      |
#      | N-5787_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD = A and IP_AR_RELATN_TYPE_CD != SOL  and PRIMARY_ACCT_HOLDER_FLAG = Y | 1      |
#      | N-5787_PreapprovedCustomer_PA_ODP_LIMIT < 0                                                                           | 5      |
#      | N-5787_PreapprovedCustomer_PA_ODP_LIMIT = 0                                                                           | 1      |
      | N-5787_PreapprovedCustomer_PA_TU_FILE_DT = NULL                                                                       | 6      |
      | N-5787_PayrollCustomer_PA_ODP_LIMIT > 0                                                                               | 1      |
      | N-5787_PayrollCustomer_PAC_PAYRL_F != 1                                                                               | 5      |
#      | N-5787_PayrollCustomer_PAC_PAYRL_F = NULL                                                                             | 6      |
#      | N-5787_PayrollCustomer_FICO_SCORE < 600                                                                               | 1      |
      | N-5787_PayrollCustomer_FICO_SCORE = NULL                                                                              | 1      |
#      | N-5787_PayrollCustomer_CR_RSK_IND != (A , B , C)                                                                      | 5      |
      | N-5787_IP_AR_RELATN_TYPE_CD_eq_NULL                                                                                   | 1      |
#      | N-5787_ACCT_DIM.ACCT_SUBSYS_ID != AC and EDW_ACCT_STAT_CD = A                                                         | 5      |
#      | N-5787_ACCT_DIM.ACCT_SUBSYS_ID = AC and EDW_ACCT_STAT_CD != A                                                         | 1      |

  @ODPAcquisition_SF_5787_positive_negative_Exclusion
  Scenario Outline: ODP Acquisition_OP13028_5787_SF Create test data for positive and negative exclusion testcases
    Given load data from "ODPAcq_SF" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When write "ARRV_DT" for "<arrvdt>" into "CUST_DIM" sheet for "<Test cases>" for decrement in days
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
    And  write "MAT_DT" column value with increment of "<months>"  into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
    And  write Scotia card Number into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
    Then insert customer account details in "ACCT_DIM" table having "3" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "3" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "3" accounts

    Examples:
      | Test cases                                                                                                            | arrvdt | months |
      | 5787_MCB_IND = Y and Current Date - ARRV_DT = 1095 Days AND IMMGRTN_CAT_CD in EN2                                     | 1095   | 1      |
      | 5787_MCB_IND = Y and Current Date - ARRV_DT > 1095 Days AND IMMGRTN_CAT_CD in C2                                      | 1096   | 6      |
      | 5787_MCB_IND = Y and Current Date - ARRV_DT = 1095 Days AND IMMGRTN_CAT_CD in C1                                      | 1095   | 1      |
      | 5787_MCB_IND = Y and Current Date - ARRV_DT > 1095 AND IMMGRTN_CAT_CD in NV5                                          | 1096   | 5      |
      | 5787_MCB_IND = Y and Current Date - ARRV_DT = 1095 AND IMMGRTN_CAT_CD in PV2                                          | 1095   | 1      |
      | 5787_MCB_IND = Y and Current Date - ARRV_DT > 1095 Days AND IMMGRTN_CAT_CD in SE2                                     | 1096   | 6      |
      | 5787_MCB_IND = Y and Current Date - ARRV_DT > 1095 Days AND IMMGRTN_CAT_CD in SW1                                     | 1096   | 1      |
      | 5787_MCB_IND = N and Current Date - ARRV_DT > 1095 Days                                                               | 1096   | 5      |
      | 5787_MCB_IND = N and Current Date - ARRV_DT = 1095 Days                                                               | 1095   | 1      |
      | 5787_MCB_IND = N and IMMGRTN_CAT_CD in (EN2, C2, C1, NV5, PV2, SE2, SW1))                                             | 1094   | 6      |
      | 5787_MCB_IND = N and (Current Date - ARRV_DT < 1095 Days AND IMMGRTN_CAT_CD not in (EN2, C2, C1, NV5, PV2, SE2, SW1)) | 1094   | 1      |
      | 5787_MCB_IND = N and (ARRV_DT is null AND IMMGRTN_CAT_CD not in (EN2, C2, C1, NV5, PV2, SE2, SW1))                    | NULL   | 5      |
      | N-5787_MCB_IND = Y and Current Date - ARRV_DT < 1095 Days                                                             | 1094   | 6      |
      | N-5787_MCB_IND = Y and ARRV_DT is null                                                                                | NULL   | 1      |
      | N-5787_MCB_IND = Y and IMMGRTN_CAT_CD not in (EN2, C2, C1, NV5, PV2, SE2, SW1))                                       | 1095   | 5      |


  @ODPAcquisition_SF_5787_positive_negative_exclusion_tripleaccounts
  Scenario Outline: ODP Acquisition_OP13028_5787_SF Create test data for positive  and negative exclusion testcases
    Given load data from "ODPAcq_SF" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
    And  write "MAT_DT" column value with increment of "<months>"  into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
    And  write Scotia card Number into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
    Then insert customer account details in "ACCT_DIM" table having "3" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "3" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "3" accounts

    Examples:
      | Test cases                                                                                                             | months |
      | 5787_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD = A and PROD_HIER_LEVEL_4 = Chequing Accounts and OV_DRAFT_LMT_AMT = 0   | 6      |


  @ODPAcquisition_SF_5787_positive_negative_exclusion_Fouraccounts
  Scenario Outline: ODP Acquisition_OP13028_5787_SF Create test data for positive  and negative exclusion testcases
    Given load data from "ODPAcq_SF" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "4" accounts
    And  write "MAT_DT" column value with increment of "<months>"  into sheet "ACCT_DIM" for "<Test cases>" having "4" accounts
    And  write Scotia card Number into sheet "ACCT_DIM" for "<Test cases>" having "4" accounts
    Then insert customer account details in "ACCT_DIM" table having "4" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "4" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "4" accounts

    Examples:
      | Test cases                                                                                                             | months |
#      | 5787_ACCT_SUBSYS_ID != BB and SRC_ACCT_STAT_CD = A and PROD_HIER_LEVEL_4 = Chequing Accounts and OV_DRAFT_LMT_AMT > 0  | 1      |
#      | 5787_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD = A and PROD_HIER_LEVEL_4 != Chequing Accounts and OV_DRAFT_LMT_AMT > 0  | 6      |
#      | 5787_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD = A and PROD_HIER_LEVEL_4 = Chequing Accounts and OV_DRAFT_LMT_AMT < 0   | 1      |
      | 5787_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD != A and PROD_HIER_LEVEL_4 = Chequing Accounts and OV_DRAFT_LMT_AMT > 0  | 5      |
#      | N-5787_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD = A and PROD_HIER_LEVEL_4 = Chequing Accounts and OV_DRAFT_LMT_AMT > 0 | 5      |

  @ODPAcquisition_SF_5787_negative @ODPACquisition_ChannelSpecific_negative
  Scenario Outline: ODP Acquisition_OP13028_5787_SF Create test data for negative testcases
    Given load data from "ODPAcq_SF" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
    And  write "MAT_DT" column value with increment of "<months>"  into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
    And  write Scotia card Number into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
    Then insert customer account details in "ACCT_DIM" table having "3" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "3" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "3" accounts

    Examples:
      | Test cases                                                                                                                                              | months |
#      | N_5787_ACCT_SUBSYS_ID_ne_UO_SRC_ACCT_STAT_CD_eq_Active_IP_AR_RELATN_TYPE_CD_eq_SOL_or_BOR_MORT_COMM_TYPE_eq_Residential_MAT_DT_eq_5OR6MONTHS            | 5      |
#      | N_5787_ACCT_SUBSYS_ID_eq_NULL_SRC_ACCT_STAT_CD_eq_Active_IP_AR_RELATN_TYPE_CD_eq_SOL_or_BOR_MORT_COMM_TYPE_eq_Residential_MAT_DT_eq_5OR6MONTHS          | 6      |
#      | N_5787_ACCT_SUBSYS_ID_eq_UO_SRC_ACCT_STAT_CD_ne_Active_IP_AR_RELATN_TYPE_CD_eq_SOL_or_BOR_MORT_COMM_TYPE_eq_Residential_MAT_DT_eq_5OR6MONTHS            | 5      |
#      | N_5787_ACCT_SUBSYS_ID_eq_UO_SRC_ACCT_STAT_CD_eq_null_IP_AR_RELATN_TYPE_CD_eq_SOL_or_BOR_MORT_COMM_TYPE_eq_Residential_MAT_DT_eq_5OR6MONTHS              | 6      |
#      | N_5787_ACCT_SUBSYS_ID_eq_UO_SRC_ACCT_STAT_CD_eq_Active_IP_AR_RELATN_TYPE_CD_ne_SOL_or_BOR_MORT_COMM_TYPE_eq_Residential_MAT_DT_eq_5OR6MONTHS            | 6      |
#      | N_5787_ACCT_SUBSYS_ID_eq_UO_SRC_ACCT_STAT_CD_eq_Active_IP_AR_RELATN_TYPE_CD_eq_NULL_MORT_COMM_TYPE_eq_Residential_MAT_DT_eq_5OR6MONTHS                  | 5      |
#      | N_5787_ACCT_SUBSYS_ID_eq_UO_SRC_ACCT_STAT_CD_eq_Active_IP_AR_RELATN_TYPE_CD_eq_SOL_or_BOR_MORT_COMM_TYPE_ne_Residential_MAT_DT_eq_5OR6MONTHS            | 6      |
#      | N_5787_ACCT_SUBSYS_ID_eq_UO_SRC_ACCT_STAT_CD_eq_Active_IP_AR_RELATN_TYPE_CD_eq_SOL_or_BOR_MORT_COMM_TYPE_eq_NULL_MAT_DT_eq_5OR6MONTHS                   | 5      |
      | N_5787_ACCT_SUBSYS_ID_eq_UO_SRC_ACCT_STAT_CD_eq_Active_IP_AR_RELATN_TYPE_CD_eq_SOL_or_BOR_MORT_COMM_TYPE_eq_Residential_MAT_DT_lt_5MONTHS               | 4      |
      | N_5787_ACCT_SUBSYS_ID_eq_UO_SRC_ACCT_STAT_CD_eq_Active_IP_AR_RELATN_TYPE_CD_eq_SOL_or_BOR_MORT_COMM_TYPE_eq_Residential_MAT_DT_gt_6MONTHS               | 7      |
      | N_5787_GICs maturing in the next month AND PLN_ACCT_CD_MASTER = RDSP                                                                                    | 1      |
#      | N_5787_GICs maturing in the next month AND PRD_CD_MASTER = ROC                                                                                          | 1      |
#      | N_5787_GICs maturing in the next month AND CRNT_BAL_AMT < 500                                                                                          | 1      |
#      | N_5787_GICs maturing in the next month AND CRNT_BAL_AMT = 0                                                                                             | 1      |
#      | N_5787_GICs maturing in the next month AND CRNT_BAL_AMT = NULL                                                                                          | 1      |
#      | N_5787_ACCT_SUBSYS_ID_ne_UF_PRD_CD_MASTER_eq_NOTNULL_PRD_ACCT_STAT_CD_eq_A_SRC_ACCT_STAT_CD_eq_Active_PRIMARY_ACCT_HOLDER_FLAG_eq_Y_MAT_DT_eq_1MONTH    | 1      |
#      | N_5787_ACCT_SUBSYS_ID_eq_NULL_PRD_CD_MASTER_eq_NOTNULL_PRD_ACCT_STAT_CD_eq_A_SRC_ACCT_STAT_CD_eq_Active_PRIMARY_ACCT_HOLDER_FLAG_eq_Y_MAT_DT_eq_1MONTH  | 1      |
#      | N_5787_ACCT_SUBSYS_ID_eq_UF_PRD_CD_MASTER_eq_NULL_PRD_ACCT_STAT_CD_eq_A_SRC_ACCT_STAT_CD_eq_Active_PRIMARY_ACCT_HOLDER_FLAG_eq_Y_MAT_DT_eq_1MONTH       | 1      |
#      | N_5787_ACCT_SUBSYS_ID_eq_UF_PRD_CD_MASTER_eq_NOTNULL_PRD_ACCT_STAT_CD_ne_A_SRC_ACCT_STAT_CD_eq_Active_PRIMARY_ACCT_HOLDER_FLAG_eq_Y_MAT_DT_eq_1MONTH    | 1      |
#      | N_5787_ACCT_SUBSYS_ID_eq_UF_PRD_CD_MASTER_eq_NOTNULL_PRD_ACCT_STAT_CD_eq_NULL_SRC_ACCT_STAT_CD_eq_Active_PRIMARY_ACCT_HOLDER_FLAG_eq_Y_MAT_DT_eq_1MONTH | 1      |
#      | N_5787_ACCT_SUBSYS_ID_eq_UF_PRD_CD_MASTER_eq_NOTNULL_PRD_ACCT_STAT_CD_eq_A_SRC_ACCT_STAT_CD_ne_Active_PRIMARY_ACCT_HOLDER_FLAG_eq_Y_MAT_DT_eq_1MONTH    | 1      |
#      | N_5787_ACCT_SUBSYS_ID_eq_UF_PRD_CD_MASTER_eq_NOTNULL_PRD_ACCT_STAT_CD_eq_A_SRC_ACCT_STAT_CD_eq_NULL_PRIMARY_ACCT_HOLDER_FLAG_eq_Y_MAT_DT_eq_1MONTH      | 1      |
#      | N_5787_ACCT_SUBSYS_ID_eq_UF_PRD_CD_MASTER_eq_NOTNULL_PRD_ACCT_STAT_CD_eq_A_SRC_ACCT_STAT_CD_eq_Active_PRIMARY_ACCT_HOLDER_FLAG_ne_Y_MAT_DT_eq_1MONTH    | 1      |
#      | N_5787_ACCT_SUBSYS_ID_eq_UF_PRD_CD_MASTER_eq_NOTNULL_PRD_ACCT_STAT_CD_eq_A_SRC_ACCT_STAT_CD_eq_Active_PRIMARY_ACCT_HOLDER_FLAG_eq_NULL_MAT_DT_eq_1MONTH | 1      |
#      | N_5787_ACCT_SUBSYS_ID_eq_UF_PRD_CD_MASTER_eq_NOTNULL_PRD_ACCT_STAT_CD_eq_A_SRC_ACCT_STAT_CD_eq_Active_PRIMARY_ACCT_HOLDER_FLAG_eq_Y_MAT_DT_lt_1MONTH    | 0      |
#      | N_5787_ACCT_SUBSYS_ID_eq_UF_PRD_CD_MASTER_eq_NOTNULL_PRD_ACCT_STAT_CD_eq_A_SRC_ACCT_STAT_CD_eq_Active_PRIMARY_ACCT_HOLDER_FLAG_eq_Y_MAT_DT_gt_1MONTH    | 2      |

  @ODPAcquisition_SF_5787_negative @ODPACquisition_MATDT_NULL_negative
  Scenario Outline: ODP Acquisition_OP13028_5787_SF Create test data for negative testcases
    Given load data from "ODPAcq_SF" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
    And  write Scotia card Number into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
    Then insert customer account details in "ACCT_DIM" table having "3" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "3" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "3" accounts

    Examples:
      | Test cases                                                                                                                                         |
      | N_5787_ACCT_SUBSYS_ID_eq_UO_SRC_ACCT_STAT_CD_eq_Active_IP_AR_RELATN_TYPE_CD_eq_SOL_or_BOR_MORT_COMM_TYPE_eq_Residential_MAT_DT_eq_NULL             |
#      | N_5787_ACCT_SUBSYS_ID_eq_UF_PRD_CD_MASTER_eq_NOTNULL_PRD_ACCT_STAT_CD_eq_A_SRC_ACCT_STAT_CD_eq_Active_PRIMARY_ACCT_HOLDER_FLAG_eq_Y_MAT_DT_eq_Null |

