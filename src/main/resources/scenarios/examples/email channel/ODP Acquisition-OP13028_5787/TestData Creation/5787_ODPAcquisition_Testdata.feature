@ODPAcquisition_Email_5787
Feature: Test data creation for Email ODP Acquisition


  @ODPAcquisition_Email_5787_positive
  Scenario Outline: ODP Acquisition_OP13028_5787_EMAIL Create test data for positive testcases
    Given load data from "ODPAcq_EML" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    And  write Scotia card Number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts

    Examples:
      | Test cases                                                                                       |
#      | 5787_BASE SCENARIO                                                                               |
#      | 5787_CC_VIP_IND =NULL or not in (2, 9)                                                           |
#      | 5787_CUST_AGE = 18                                                                               |
#      | 5787_CUST_AGE = 80                                                                               |
#      | 5787_LANG_CD = en                                                                                |
#      | 5787_LANG_CD = fr                                                                                |
#      | 5787_ACCT_SUBSYS_ID = AC and EDW_ACCT_STAT_CD = A and SCD_NUM != NULL                            |
#      | 5787_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD = A and PRIMARY_ACCT_HOLDER_FLAG = Y               |
      | 5787_SRC_SYS_PRD_CD = 01 and SRC_SYS_SUB_PRD_CD = 01                                             |
      | 5787_SRC_SYS_PRD_CD = 01 and SRC_SYS_SUB_PRD_CD = 02                                             |
      | 5787_SRC_SYS_PRD_CD = 01 and SRC_SYS_SUB_PRD_CD = 03                                             |
      | 5787_SRC_SYS_PRD_CD = 01 and SRC_SYS_SUB_PRD_CD = 04                                             |
      | 5787_SRC_SYS_PRD_CD = 02 and SRC_SYS_SUB_PRD_CD = 01                                             |
      | 5787_SRC_SYS_PRD_CD = 02 and SRC_SYS_SUB_PRD_CD = 02                                             |
      | 5787_SRC_SYS_PRD_CD = 02 and SRC_SYS_SUB_PRD_CD = 03                                             |
      | 5787_SRC_SYS_PRD_CD = 07 and SRC_SYS_SUB_PRD_CD = 01                                             |
      | 5787_SRC_SYS_PRD_CD = 07 and SRC_SYS_SUB_PRD_CD = 02                                             |
      | 5787_SRC_SYS_PRD_CD = 07 and SRC_SYS_SUB_PRD_CD = 03                                             |
      | 5787_SRC_SYS_PRD_CD = 07 and SRC_SYS_SUB_PRD_CD = 04                                             |
      | 5787_SRC_SYS_PRD_CD = 07 and SRC_SYS_SUB_PRD_CD = 06                                             |
      | 5787_SRC_SYS_PRD_CD = 07 and SRC_SYS_SUB_PRD_CD = 07                                             |
      | 5787_SRC_SYS_PRD_CD = 07 and SRC_SYS_SUB_PRD_CD = 08                                             |
      | 5787_SRC_SYS_PRD_CD = 07 and SRC_SYS_SUB_PRD_CD = 09                                             |
      | 5787_SRC_SYS_PRD_CD = 07 and SRC_SYS_SUB_PRD_CD = 11                                             |
      | 5787_SRC_SYS_PRD_CD = 07 and SRC_SYS_SUB_PRD_CD = 12                                             |
      | 5787_SRC_SYS_PRD_CD = 07 and SRC_SYS_SUB_PRD_CD = 18                                             |
      | 5787_SRC_SYS_PRD_CD = 07 and SRC_SYS_SUB_PRD_CD = 19                                             |
      | 5787_SRC_SYS_PRD_CD = 12 and SRC_SYS_SUB_PRD_CD = 01                                             |
      | 5787_SRC_SYS_PRD_CD = 12 and SRC_SYS_SUB_PRD_CD = 03                                             |
      | 5787_SRC_SYS_PRD_CD = 12 and SRC_SYS_SUB_PRD_CD = 07                                             |
      | 5787_SRC_SYS_PRD_CD = 12 and SRC_SYS_SUB_PRD_CD = 08                                             |
      | 5787_SRC_SYS_PRD_CD = 13 and SRC_SYS_SUB_PRD_CD = 01                                             |
      | 5787_SRC_SYS_PRD_CD = 13 and SRC_SYS_SUB_PRD_CD = 03                                             |
      | 5787_SRC_SYS_PRD_CD = 13 and SRC_SYS_SUB_PRD_CD = 07                                             |
      | 5787_SRC_SYS_PRD_CD = 13 and SRC_SYS_SUB_PRD_CD = 08                                             |
      | 5787_SRC_SYS_PRD_CD = 19 and SRC_SYS_SUB_PRD_CD = 01                                             |
      | 5787_SRC_SYS_PRD_CD = 19 and SRC_SYS_SUB_PRD_CD = 02                                             |
      | 5787_SRC_SYS_PRD_CD = 19 and SRC_SYS_SUB_PRD_CD = 03                                             |
      | 5787_SRC_SYS_PRD_CD = 19 and SRC_SYS_SUB_PRD_CD = 04                                             |
      | 5787_SRC_SYS_PRD_CD = 19 and SRC_SYS_SUB_PRD_CD = 07                                             |
      | 5787_SRC_SYS_PRD_CD = 19 and SRC_SYS_SUB_PRD_CD = 08                                             |
      | 5787_SRC_SYS_PRD_CD = 23 and SRC_SYS_SUB_PRD_CD = 01                                             |
      | 5787_SRC_SYS_PRD_CD = 23 and SRC_SYS_SUB_PRD_CD = 03                                             |
#      | 5787_EMAIL File_VLD_EMAIL_F = Y                                                                  |
#      | 5787_EMAIL File_PRIM_EMAIL_ADDR not null /blank                                                  |
#      | 5787_EMAIL File_INDV_FRST_NM not null/blank                                                      |
#      | 5787_EMAIL File_DO_NOT_EMAIL_F  = N                                                              |
#      | 5787_EMAIL File_MK_LOC_LOANS_EMAIL_F !=N                                                         |
#      | 5787_EMAIL File_DIGITAL_ACTVTN_F = Y                                                             |
##      Added for Dec 8th 2022 release
#      | 5787_ASSIGNED_FA_TRANSIT_ne_null                                                                 |
#      | 5787_ASSIGNED_FA_TRANSIT_eq_null_RESP_TRNST_NUM_ne_NULL                                          |
#      | 5787_ASSIGNED_FA_TRANSIT_eq_null_RESP_TRNST_NUM_eq_NULL_CLOSEST_TRANSIT_NUM_ne_NULL              |
#      | 5787_ASSIGNED_FA_TRANSIT_eq_null_RESP_TRNST_NUM_ne_TRANSIT.TR_NUMBER_CLOSEST_TRANSIT_NUM_ne_NULL |
#      | 5787_DO_NOT_SOLICIT_F != Y                                                                       |
#      | 5787_DO_NOT_SOLICIT_F = NULL                                                                     |


  @ODPAcquisition_Email_5787_positive_segmentation
  Scenario Outline: ODP Acquisition_OP13028_5787_EMAIL Create test data for positive testcases
    Given load data from "ODPAcq_EML" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    And  write Scotia card Number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts

    Examples:
      | Test cases                                                                                                                                     |
      | 5787_PreapprovedCustomer_PA_TU_FILE_DT != null_PA_ODP_LIMIT > 0                                                                                |
      | 5787_PreapprovedCustomer_PA_TU_FILE_DT != null_Rest of Canada_DOES NOT have an Ultimate account_PRIM_PROV_CD != QC                             |
      | 5787_PreapprovedCustomer_PA_TU_FILE_DT != null_Rest of Canada + Ultimate Account Holders_ACCT_SUBSYS_ID = BB and ACCT_DIM.SRC_ACCT_STAT_CD = A |
      | 5787_PreapprovedCustomer_PA_TU_FILE_DT != null_Rest of Canada + Ultimate Account Holders_SRC_PRD_CD = 23 and SRC_SUB_PRD_CD in 01              |
      | 5787_PreapprovedCustomer_PA_TU_FILE_DT != null_Rest of Canada + Ultimate Account Holders_SRC_PRD_CD = 23 and SRC_SUB_PRD_CD in 03              |
      | 5787_PreapprovedCustomer_PA_TU_FILE_DT != null_Rest of Canada + Ultimate Account Holders_JOINT_ACCT_FLAG = N                                   |
      | 5787_PreapprovedCustomer_PA_TU_FILE_DT != null_Rest of Canada + Ultimate Account Holders_PRIMARY_ACCT_HOLDER_FLAG = Y                          |
      | 5787_PreapprovedCustomer_PA_TU_FILE_DT != null_Quebec_DOES NOT have an Ultimate account_PRIM_PROV_CD = QC                                      |
      | 5787_PreapprovedCustomer_PA_TU_FILE_DT != null_Quebec + Ultimate Account Holders_ACCT_SUBSYS_ID = BB and ACCT_DIM.SRC_ACCT_STAT_CD = A         |
      | 5787_PreapprovedCustomer_PA_TU_FILE_DT != null_Quebec + Ultimate Account Holders_SRC_PRD_CD = 23 and SRC_SUB_PRD_CD in 01                      |
      | 5787_PreapprovedCustomer_PA_TU_FILE_DT != null_Quebec + Ultimate Account Holders_SRC_PRD_CD = 23 and SRC_SUB_PRD_CD in 03                      |
      | 5787_PreapprovedCustomer_PA_TU_FILE_DT != null_Quebec + Ultimate Account Holders_JOINT_ACCT_FLAG = N                                           |
      | 5787_PreapprovedCustomer_PA_TU_FILE_DT != null_Quebec + Ultimate Account Holders_PRIMARY_ACCT_HOLDER_FLAG = Y                                  |
      | 5787_PayrollCustomer_Not eligible for Preapproved segment_PA_ODP_LIMIT = 0                                                                     |
      | 5787_PayrollCustomer_Not eligible for Preapproved segment_PA_ODP_LIMIT < 0                                                                     |
      | 5787_PayrollCustomer_PAC_PAYRL_F = 1                                                                                                           |
      | 5787_PayrollCustomer_FICO_SCORE >600                                                                                                           |
      | 5787_PayrollCustomer_FICO_SCORE =600                                                                                                           |
      | 5787_PayrollCustomer_CR_RSK_IND = A                                                                                                            |
      | 5787_PayrollCustomer_CR_RSK_IND = B                                                                                                            |
      | 5787_PayrollCustomer_CR_RSK_IND = C                                                                                                            |
      | 5787_PayrollCustomer_Rest of Canada_DOES NOT have an Ultimate account_PRIM_PROV_CD != QC                                                       |
      | 5787_PayrollCustomer_Rest of Canada + Ultimate Account Holders_ACCT_SUBSYS_ID = BB and ACCT_DIM.SRC_ACCT_STAT_CD = A                           |
      | 5787_PayrollCustomer_Rest of Canada + Ultimate Account Holders_SRC_PRD_CD = 23 and SRC_SUB_PRD_CD in 01                                        |
      | 5787_PayrollCustomer_Rest of Canada + Ultimate Account Holders_SRC_PRD_CD = 23 and SRC_SUB_PRD_CD in 03                                        |
      | 5787_PayrollCustomer_Rest of Canada + Ultimate Account Holders_JOINT_ACCT_FLAG = N                                                             |
      | 5787_PayrollCustomer_Rest of Canada + Ultimate Account Holders_PRIMARY_ACCT_HOLDER_FLAG = Y                                                    |
      | 5787_PayrollCustomer_Quebec_DOES NOT have an Ultimate account_PRIM_PROV_CD = QC                                                                |
      | 5787_PayrollCustomer_Quebec + Ultimate Account Holders_ACCT_SUBSYS_ID = BB and ACCT_DIM.SRC_ACCT_STAT_CD = A                                   |
      | 5787_PayrollCustomer_Quebec + Ultimate Account Holders_SRC_PRD_CD = 23 and SRC_SUB_PRD_CD in 01                                                |
      | 5787_PayrollCustomer_Quebec + Ultimate Account Holders_SRC_PRD_CD = 23 and SRC_SUB_PRD_CD in 03                                                |
      | 5787_PayrollCustomer_Quebec + Ultimate Account Holders_JOINT_ACCT_FLAG = N                                                                     |
      | 5787_PayrollCustomer_Quebec + Ultimate Account Holders_PRIMARY_ACCT_HOLDER_FLAG = Y                                                            |

  @ODPAcquisition_Email_5787_negative
  Scenario Outline: ODP Acquisition_OP13028_5787_EMAIL Create test data for negative testcases
    Given load data from "ODPAcq_EML" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    And  write Scotia card Number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts

    Examples:
      | Test cases                                                                            |
      | N-5787_DECEASED_F != N                                                                |
      | N-5787_DECEASED_F = NULL                                                              |
      | N-5787_CUST_TP_CD != PSNL                                                             |
      | N-5787_CUST_TP_CD = NULL                                                              |
      | N-5787_PRIM_CNTRY_CD != CA                                                            |
      | N-5787_PRIM_CNTRY_CD = NULL                                                           |
      | N-5787_CC_VIP_IND = 2                                                                 |
      | N-5787_CC_VIP_IND = 9                                                                 |
      | N-5787_CUST_AGE = 17                                                                  |
      | N-5787_CUST_AGE = 81                                                                  |
      | N-5787_CUST_AGE = NULL                                                                |
      | N-5787_LANG_CD != (en , fr)                                                           |
      | N-5787_LANG_CD = NULL                                                                 |
      | N-5787_MRKTBLE_F != Y                                                                 |
      | N-5787_MRKTBLE_F = NULL                                                               |
      | 5787_ITRADE_MCLEOD_F = Y                                                              |
      | N-5787_NOT_AML_KYC =  Y                                                               |
      | 5787_DEDICATED_INVSTMNT_ADVISOR_F =Y                                                  |
      | N-5787_EMAIL File_VLD_EMAIL_F != Y                                                    |
      | N-5787_EMAIL File_VLD_EMAIL_F = NULL                                                  |
      | N-5787_EMAIL File_PRIM_EMAIL_ADDR is null                                             |
      | N-5787_EMAIL File_PRIM_EMAIL_ADDR is blank                                            |
      | N-5787_EMAIL File_INDV_FRST_NM is null                                                |
      | N-5787_EMAIL File_INDV_FRST_NM is blank                                               |
      | N-5787_EMAIL File_INDV_LAST_NM is null                                                |
      | N-5787_EMAIL File_DO_NOT_EMAIL_F  != N                                                |
      | N-5787_EMAIL File_DO_NOT_EMAIL_F  = NULL                                              |
      | N-5787_EMAIL File_MK_LOC_LOANS_EMAIL_F = N                                            |
      | N-5787_EMAIL File_DIGITAL_ACTVTN_F != Y                                               |
      | N-5787_EMAIL File_DIGITAL_ACTVTN_F = NULL                                             |
      | N-5787_ACCT_DIM.ACCT_SUBSYS_ID != AC and EDW_ACCT_STAT_CD = A and SCD_NUM != NULL     |
      | N-5787_ACCT_DIM.ACCT_SUBSYS_ID = AC and EDW_ACCT_STAT_CD != A and SCD_NUM != NULL     |
      | N-5787_ACCT_SUBSYS_ID != BB and SRC_ACCT_STAT_CD = A and PRIMARY_ACCT_HOLDER_FLAG = Y |
      | N-5787_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD != A and PRIMARY_ACCT_HOLDER_FLAG = Y |
      | N-5787_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD = A and PRIMARY_ACCT_HOLDER_FLAG != Y |
      | N-5787_PreapprovedCustomer_PA_ODP_LIMIT < 0                                           |
      | N-5787_PreapprovedCustomer_PA_ODP_LIMIT = 0                                           |
      | N-5787_PreapprovedCustomer_PA_TU_FILE_DT = NULL                                       |
      | N-5787_PayrollCustomer_PA_ODP_LIMIT > 0                                               |
      | N-5787_PayrollCustomer_PAC_PAYRL_F != 1                                               |
      | N-5787_PayrollCustomer_PAC_PAYRL_F = NULL                                             |
      | N-5787_PayrollCustomer_FICO_SCORE < 600                                               |
      | N-5787_PayrollCustomer_FICO_SCORE = NULL                                              |
      | N-5787_PayrollCustomer_CR_RSK_IND != (A , B , C)                                      |
      | N-5787_Ultimate Account Holders_JOINT_ACCT_FLAG != N                                  |
      | N-5787_Ultimate Account Holders_JOINT_ACCT_FLAG = NULL                                |
      | N-5787_IP_AR_RELATN_TYPE_CD_eq_NULL                                                   |
      | N-5787_IP_AR_RELATN_TYPE_CD_ne_SOL                                                    |
    #      Added for Dec 8th 2022 release
      | N-5787_ASSIGNED_FA_TRANSIT_eq_null_RESP_TRNST_NUM_eq_NULL_CLOSEST_TRANSIT_NUM_eq_NULL |
      | N-5787_DO_NOT_SOLICIT_F =Y                                                            |


  @ODPAcquisition_Email_5787_negative
  Scenario Outline: ODP Acquisition_OP13028_5787_EMAIL Create test data for positive testcases
    Given load data from "ODPAcq_EML" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts

    Examples:
      | Test cases                                                                      |
      | N-5787_ACCT_DIM.ACCT_SUBSYS_ID = AC and EDW_ACCT_STAT_CD = A and SCD_NUM = NULL |


  @ODPAcquisition_Email_5787_positive_negative_Exclusion
  Scenario Outline: ODP Acquisition_OP13028_5787_EMAIL Create test data for positive and negative exclusion testcases
    Given load data from "ODPAcq_EML" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When write "ARRV_DT" for "<arrvdt>" into "CUST_DIM" sheet for "<Test cases>" for decrement in days
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    And  write Scotia card Number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts

    Examples:
      | Test cases                                                                                                            | arrvdt |
      | 5787_MCB_IND = Y and Current Date - ARRV_DT = 1095 Days AND IMMGRTN_CAT_CD in EN2                                     | 1095   |
      | 5787_MCB_IND = Y and Current Date - ARRV_DT > 1095 Days AND IMMGRTN_CAT_CD in C2                                      | 1096   |
      | 5787_MCB_IND = Y and Current Date - ARRV_DT = 1095 Days AND IMMGRTN_CAT_CD in C1                                      | 1095   |
      | 5787_MCB_IND = Y and Current Date - ARRV_DT > 1095 AND IMMGRTN_CAT_CD in NV5                                          | 1096   |
      | 5787_MCB_IND = Y and Current Date - ARRV_DT = 1095 AND IMMGRTN_CAT_CD in PV2                                          | 1095   |
      | 5787_MCB_IND = Y and Current Date - ARRV_DT > 1095 Days AND IMMGRTN_CAT_CD in SE2                                     | 1096   |
      | 5787_MCB_IND = Y and Current Date - ARRV_DT > 1095 Days AND IMMGRTN_CAT_CD in SW1                                     | 1096   |
      | 5787_MCB_IND = N and Current Date - ARRV_DT > 1095 Days                                                               | 1096   |
      | 5787_MCB_IND = N and Current Date - ARRV_DT = 1095 Days                                                               | 1095   |
      | 5787_MCB_IND = N and IMMGRTN_CAT_CD in (EN2, C2, C1, NV5, PV2, SE2, SW1))                                             | 1094   |
      | 5787_MCB_IND = N and (Current Date - ARRV_DT < 1095 Days AND IMMGRTN_CAT_CD not in (EN2, C2, C1, NV5, PV2, SE2, SW1)) | 1094   |
      | 5787_MCB_IND = N and (ARRV_DT is null AND IMMGRTN_CAT_CD not in (EN2, C2, C1, NV5, PV2, SE2, SW1))                    | NULL   |
      | 5787_MCB_IND = Y and Current Date - ARRV_DT < 1095 Days                                                               | 1094   |
      | 5787_MCB_IND = Y and ARRV_DT is null                                                                                  | NULL   |
      | 5787_MCB_IND = Y and IMMGRTN_CAT_CD not in (EN2, C2, C1, NV5, PV2, SE2, SW1))                                         | 1095   |


  @ODPAcquisition_Email_5787_positive_negative_exclusion_tripleaccounts
  Scenario Outline: ODP Acquisition_OP13028_5787_EMAIL Create test data for positive  and negative exclusion testcases
    Given load data from "ODPAcq_EML" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
    And  write Scotia card Number into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
    Then insert customer account details in "ACCT_DIM" table having "3" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "3" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "3" accounts

    Examples:
      | Test cases                                                                                                                               |
      | 5787_ACCT_SUBSYS_ID != BB and SRC_ACCT_STAT_CD = A and PROD_HIER_LEVEL_4 = Chequing Accounts and OV_DRAFT_LMT_AMT > 0                    |
      | 5787_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD != A and PROD_HIER_LEVEL_4 = Chequing Accounts and OV_DRAFT_LMT_AMT > 0                    |
      | 5787_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD = A and PROD_HIER_LEVEL_4 != Chequing Accounts and OV_DRAFT_LMT_AMT > 0                    |
      | 5787_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD = A and PROD_HIER_LEVEL_4 = Chequing Accounts and OV_DRAFT_LMT_AMT < 0                     |
      | 5787_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD = A and PROD_HIER_LEVEL_4 = Chequing Accounts and OV_DRAFT_LMT_AMT = 0                     |
      | 5787_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD != A and PROD_HIER_LEVEL_4 = Chequing Accounts and IP_AR_RELATN_TYPE_CD in (JNT , JN1)     |
      | 5787_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD = A and PROD_HIER_LEVEL_4 != Chequing Accounts and IP_AR_RELATN_TYPE_CD in (JNT , JN1)     |
      | 5787_ACCT_SUBSYS_ID != BB and SRC_ACCT_STAT_CD = A and PROD_HIER_LEVEL_4 = Chequing Accounts and IP_AR_RELATN_TYPE_CD in (JNT , JN1)     |
      | 5787_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD = A and PROD_HIER_LEVEL_4 = Chequing Accounts and IP_AR_RELATN_TYPE_CD  not in (JNT , JN1) |
      | N-5787_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD = A and PROD_HIER_LEVEL_4 = Chequing Accounts and OV_DRAFT_LMT_AMT > 0                   |
      | 5787_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD = A and PROD_HIER_LEVEL_4 = Chequing Accounts and IP_AR_RELATN_TYPE_CD in JNT              |
      | 5787_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD = A and PROD_HIER_LEVEL_4 = Chequing Accounts and IP_AR_RELATN_TYPE_CD in JN1              |

