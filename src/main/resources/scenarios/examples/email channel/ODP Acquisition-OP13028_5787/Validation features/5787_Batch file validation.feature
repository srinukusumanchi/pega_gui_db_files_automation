@5725_D2DPaymentMethods_BatchValidationFeature
Feature: Batch Validation for 5725 D2D Payment Methods

  @ODPAcquisition_Email_5787_BatchValidation
  Scenario Outline: ODP Acquisition_OP13028_5787_EMAIL Validate offer details against batch file for Base Positive test cases
    Given load data from "ODPAcq_EML" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "ODPAcq" extract file with batch "odplimit;AccNum;creativeversion;" Email Specific Text Header

#    And the user navigates to pega url
#    When the user enters user name, password and click on login in pega Login screen
#    And get ddr records data from ddr table
#    And get ODP Acq MailID from ddr records
#    And get ODP Acq wave expiry date from ddr records
#    And click on interaction History by customer link
#    And click on interaction History by customer link
#    And click on actions and run in interactions history By customer screen
#    And click on period link and clear today value
#    And enter customer id in ih by customer screen and get IH table data

    Then Validate ODP Acquisition details in batch file against database and pega
    Examples:
      | Test cases                                                                                                                                     |
#      | 5787_BASE SCENARIO                                                                                                                             |
#      | 5787_CC_VIP_IND =NULL or not in (2, 9)                                                                                                         |
#      | 5787_CUST_AGE = 18                                                                                                                             |
#      | 5787_CUST_AGE = 70                                                                                                                             |
#      | 5787_LANG_CD = en                                                                                                                              |
#      | 5787_LANG_CD = fr                                                                                                                              |
#      | 5787_ACCT_SUBSYS_ID = AC and EDW_ACCT_STAT_CD = A and SCD_NUM != NULL                                                                          |
#      | 5787_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD = A and PRIMARY_ACCT_HOLDER_FLAG = Y                                                             |
      | 5787_SRC_SYS_PRD_CD = 01 and SRC_SYS_SUB_PRD_CD = 01                                                                                           |
#      | 5787_SRC_SYS_PRD_CD = 01 and SRC_SYS_SUB_PRD_CD = 02                                                                                           |
#      | 5787_SRC_SYS_PRD_CD = 01 and SRC_SYS_SUB_PRD_CD = 03                                                                                           |
#      | 5787_SRC_SYS_PRD_CD = 01 and SRC_SYS_SUB_PRD_CD = 04                                                                                           |
#      | 5787_SRC_SYS_PRD_CD = 02 and SRC_SYS_SUB_PRD_CD = 01                                                                                           |
#      | 5787_SRC_SYS_PRD_CD = 02 and SRC_SYS_SUB_PRD_CD = 02                                                                                           |
#      | 5787_SRC_SYS_PRD_CD = 02 and SRC_SYS_SUB_PRD_CD = 03                                                                                           |
#      | 5787_SRC_SYS_PRD_CD = 07 and SRC_SYS_SUB_PRD_CD = 01                                                                                           |
#      | 5787_SRC_SYS_PRD_CD = 07 and SRC_SYS_SUB_PRD_CD = 02                                                                                           |
#      | 5787_SRC_SYS_PRD_CD = 07 and SRC_SYS_SUB_PRD_CD = 03                                                                                           |
#      | 5787_SRC_SYS_PRD_CD = 07 and SRC_SYS_SUB_PRD_CD = 04                                                                                           |
#      | 5787_SRC_SYS_PRD_CD = 07 and SRC_SYS_SUB_PRD_CD = 06                                                                                           |
#      | 5787_SRC_SYS_PRD_CD = 07 and SRC_SYS_SUB_PRD_CD = 07                                                                                           |
#      | 5787_SRC_SYS_PRD_CD = 07 and SRC_SYS_SUB_PRD_CD = 08                                                                                           |
#      | 5787_SRC_SYS_PRD_CD = 07 and SRC_SYS_SUB_PRD_CD = 09                                                                                           |
#      | 5787_SRC_SYS_PRD_CD = 07 and SRC_SYS_SUB_PRD_CD = 11                                                                                           |
#      | 5787_SRC_SYS_PRD_CD = 07 and SRC_SYS_SUB_PRD_CD = 12                                                                                           |
#      | 5787_SRC_SYS_PRD_CD = 07 and SRC_SYS_SUB_PRD_CD = 18                                                                                           |
#      | 5787_SRC_SYS_PRD_CD = 07 and SRC_SYS_SUB_PRD_CD = 19                                                                                           |
#      | 5787_SRC_SYS_PRD_CD = 12 and SRC_SYS_SUB_PRD_CD = 01                                                                                           |
#      | 5787_SRC_SYS_PRD_CD = 12 and SRC_SYS_SUB_PRD_CD = 03                                                                                           |
#      | 5787_SRC_SYS_PRD_CD = 12 and SRC_SYS_SUB_PRD_CD = 07                                                                                           |
#      | 5787_SRC_SYS_PRD_CD = 12 and SRC_SYS_SUB_PRD_CD = 08                                                                                           |
#      | 5787_SRC_SYS_PRD_CD = 13 and SRC_SYS_SUB_PRD_CD = 01                                                                                           |
#      | 5787_SRC_SYS_PRD_CD = 13 and SRC_SYS_SUB_PRD_CD = 03                                                                                           |
#      | 5787_SRC_SYS_PRD_CD = 13 and SRC_SYS_SUB_PRD_CD = 07                                                                                           |
#      | 5787_SRC_SYS_PRD_CD = 13 and SRC_SYS_SUB_PRD_CD = 08                                                                                           |
#      | 5787_SRC_SYS_PRD_CD = 19 and SRC_SYS_SUB_PRD_CD = 01                                                                                           |
#      | 5787_SRC_SYS_PRD_CD = 19 and SRC_SYS_SUB_PRD_CD = 02                                                                                           |
#      | 5787_SRC_SYS_PRD_CD = 19 and SRC_SYS_SUB_PRD_CD = 03                                                                                           |
#      | 5787_SRC_SYS_PRD_CD = 19 and SRC_SYS_SUB_PRD_CD = 04                                                                                           |
#      | 5787_SRC_SYS_PRD_CD = 19 and SRC_SYS_SUB_PRD_CD = 07                                                                                           |
#      | 5787_SRC_SYS_PRD_CD = 19 and SRC_SYS_SUB_PRD_CD = 08                                                                                           |
#      | 5787_SRC_SYS_PRD_CD = 23 and SRC_SYS_SUB_PRD_CD = 01                                                                                           |
#      | 5787_SRC_SYS_PRD_CD = 23 and SRC_SYS_SUB_PRD_CD = 03                                                                                           |
#      | 5787_EMAIL File_VLD_EMAIL_F = Y                                                                                                                |
#      | 5787_EMAIL File_PRIM_EMAIL_ADDR not null /blank                                                                                                |
#      | 5787_EMAIL File_INDV_FRST_NM not null/blank                                                                                                    |
#      | 5787_EMAIL File_DO_NOT_EMAIL_F  = N                                                                                                            |
#      | 5787_EMAIL File_MK_LOC_LOANS_EMAIL_F !=N                                                                                                       |
#      | 5787_EMAIL File_DIGITAL_ACTVTN_F = Y                                                                                                           |
#      | 5787_ACCT_SUBSYS_ID != BB and SRC_ACCT_STAT_CD = A and PROD_HIER_LEVEL_4 = Chequing Accounts and OV_DRAFT_LMT_AMT > 0                          |
#      | 5787_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD != A and PROD_HIER_LEVEL_4 = Chequing Accounts and OV_DRAFT_LMT_AMT > 0                          |
#      | 5787_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD = A and PROD_HIER_LEVEL_4 != Chequing Accounts and OV_DRAFT_LMT_AMT > 0                          |
#      | 5787_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD = A and PROD_HIER_LEVEL_4 = Chequing Accounts and OV_DRAFT_LMT_AMT < 0                           |
#      | 5787_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD = A and PROD_HIER_LEVEL_4 = Chequing Accounts and OV_DRAFT_LMT_AMT = 0                           |
#      | 5787_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD != A and PROD_HIER_LEVEL_4 = Chequing Accounts and IP_AR_RELATN_TYPE_CD in (JNT , JN1)           |
#      | 5787_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD = A and PROD_HIER_LEVEL_4 != Chequing Accounts and IP_AR_RELATN_TYPE_CD in (JNT , JN1)           |
#      | 5787_ACCT_SUBSYS_ID != BB and SRC_ACCT_STAT_CD = A and PROD_HIER_LEVEL_4 = Chequing Accounts and IP_AR_RELATN_TYPE_CD in (JNT , JN1)           |
#      | 5787_ACCT_SUBSYS_ID = BB and SRC_ACCT_STAT_CD = A and PROD_HIER_LEVEL_4 = Chequing Accounts and IP_AR_RELATN_TYPE_CD  not in (JNT , JN1)       |
#      | 5787_PreapprovedCustomer_PA_TU_FILE_DT != null_PA_ODP_LIMIT > 0                                                                                |
#      | 5787_PreapprovedCustomer_PA_TU_FILE_DT != null_Rest of Canada_DOES NOT have an Ultimate account_PRIM_PROV_CD != QC                             |
#      | 5787_PreapprovedCustomer_PA_TU_FILE_DT != null_Rest of Canada + Ultimate Account Holders_ACCT_SUBSYS_ID = BB and ACCT_DIM.SRC_ACCT_STAT_CD = A |
#      | 5787_PreapprovedCustomer_PA_TU_FILE_DT != null_Rest of Canada + Ultimate Account Holders_SRC_PRD_CD = 23 and SRC_SUB_PRD_CD in 01              |
#      | 5787_PreapprovedCustomer_PA_TU_FILE_DT != null_Rest of Canada + Ultimate Account Holders_SRC_PRD_CD = 23 and SRC_SUB_PRD_CD in 03              |
#      | 5787_PreapprovedCustomer_PA_TU_FILE_DT != null_Rest of Canada + Ultimate Account Holders_JOINT_ACCT_FLAG = N                                   |
#      | 5787_PreapprovedCustomer_PA_TU_FILE_DT != null_Rest of Canada + Ultimate Account Holders_PRIMARY_ACCT_HOLDER_FLAG = Y                          |
#      | 5787_PreapprovedCustomer_PA_TU_FILE_DT != null_Quebec_DOES NOT have an Ultimate account_PRIM_PROV_CD = QC                                      |
#      | 5787_PreapprovedCustomer_PA_TU_FILE_DT != null_Quebec + Ultimate Account Holders_ACCT_SUBSYS_ID = BB and ACCT_DIM.SRC_ACCT_STAT_CD = A         |
#      | 5787_PreapprovedCustomer_PA_TU_FILE_DT != null_Quebec + Ultimate Account Holders_SRC_PRD_CD = 23 and SRC_SUB_PRD_CD in 01                      |
#      | 5787_PreapprovedCustomer_PA_TU_FILE_DT != null_Quebec + Ultimate Account Holders_SRC_PRD_CD = 23 and SRC_SUB_PRD_CD in 03                      |
#      | 5787_PreapprovedCustomer_PA_TU_FILE_DT != null_Quebec + Ultimate Account Holders_JOINT_ACCT_FLAG = N                                           |
#      | 5787_PreapprovedCustomer_PA_TU_FILE_DT != null_Quebec + Ultimate Account Holders_PRIMARY_ACCT_HOLDER_FLAG = Y                                  |
#      | 5787_PayrollCustomer_Not eligible for Preapproved segment_PA_ODP_LIMIT = 0                                                                     |
#      | 5787_PayrollCustomer_Not eligible for Preapproved segment_PA_ODP_LIMIT < 0                                                                     |
#      | 5787_PayrollCustomer_PAC_PAYRL_F = 1                                                                                                           |
#      | 5787_PayrollCustomer_FICO_SCORE >600                                                                                                           |
#      | 5787_PayrollCustomer_FICO_SCORE =600                                                                                                           |
#      | 5787_PayrollCustomer_CR_RSK_IND = A                                                                                                            |
#      | 5787_PayrollCustomer_CR_RSK_IND = B                                                                                                            |
#      | 5787_PayrollCustomer_CR_RSK_IND = C                                                                                                            |
#      | 5787_PayrollCustomer_Rest of Canada_DOES NOT have an Ultimate account_PRIM_PROV_CD != QC                                                       |
#      | 5787_PayrollCustomer_Rest of Canada + Ultimate Account Holders_ACCT_SUBSYS_ID = BB and ACCT_DIM.SRC_ACCT_STAT_CD = A                           |
#      | 5787_PayrollCustomer_Rest of Canada + Ultimate Account Holders_SRC_PRD_CD = 23 and SRC_SUB_PRD_CD in 01                                        |
#      | 5787_PayrollCustomer_Rest of Canada + Ultimate Account Holders_SRC_PRD_CD = 23 and SRC_SUB_PRD_CD in 03                                        |
#      | 5787_PayrollCustomer_Rest of Canada + Ultimate Account Holders_JOINT_ACCT_FLAG = N                                                             |
#      | 5787_PayrollCustomer_Rest of Canada + Ultimate Account Holders_PRIMARY_ACCT_HOLDER_FLAG = Y                                                    |
#      | 5787_PayrollCustomer_Quebec_DOES NOT have an Ultimate account_PRIM_PROV_CD = QC                                                                |
#      | 5787_PayrollCustomer_Quebec + Ultimate Account Holders_ACCT_SUBSYS_ID = BB and ACCT_DIM.SRC_ACCT_STAT_CD = A                                   |
#      | 5787_PayrollCustomer_Quebec + Ultimate Account Holders_SRC_PRD_CD = 23 and SRC_SUB_PRD_CD in 01                                                |
#      | 5787_PayrollCustomer_Quebec + Ultimate Account Holders_SRC_PRD_CD = 23 and SRC_SUB_PRD_CD in 03                                                |
#      | 5787_PayrollCustomer_Quebec + Ultimate Account Holders_JOINT_ACCT_FLAG = N                                                                     |
#      | 5787_PayrollCustomer_Quebec + Ultimate Account Holders_PRIMARY_ACCT_HOLDER_FLAG = Y                                                            |
#      | 5787_MCB_IND = Y and Current Date - ARRV_DT = 1095 Days AND IMMGRTN_CAT_CD in EN2                                                              |
#      | 5787_MCB_IND = Y and Current Date - ARRV_DT > 1095 Days AND IMMGRTN_CAT_CD in C2                                                               |
#      | 5787_MCB_IND = Y and Current Date - ARRV_DT = 1095 Days AND IMMGRTN_CAT_CD in C1                                                               |
#      | 5787_MCB_IND = Y and Current Date - ARRV_DT > 1095 AND IMMGRTN_CAT_CD in NV5                                                                   |
#      | 5787_MCB_IND = Y and Current Date - ARRV_DT = 1095 AND IMMGRTN_CAT_CD in PV2                                                                   |
#      | 5787_MCB_IND = Y and Current Date - ARRV_DT > 1095 Days AND IMMGRTN_CAT_CD in SE2                                                              |
#      | 5787_MCB_IND = Y and Current Date - ARRV_DT > 1095 Days AND IMMGRTN_CAT_CD in SW1                                                              |
#      | 5787_MCB_IND = N and Current Date - ARRV_DT > 1095 Days                                                                                        |
#      | 5787_MCB_IND = N and Current Date - ARRV_DT = 1095 Days                                                                                        |
#      | 5787_MCB_IND = N and IMMGRTN_CAT_CD in (EN2, C2, C1, NV5, PV2, SE2, SW1))                                                                      |
#      | 5787_MCB_IND = N and (Current Date - ARRV_DT < 1095 Days AND IMMGRTN_CAT_CD not in (EN2, C2, C1, NV5, PV2, SE2, SW1))                          |
#      | 5787_MCB_IND = N and (ARRV_DT is null AND IMMGRTN_CAT_CD not in (EN2, C2, C1, NV5, PV2, SE2, SW1))                                             |
## Added on Dec 8th 2022 release
#      | 5787_ASSIGNED_FA_TRANSIT_ne_null                                                                                                               |
#      | 5787_ASSIGNED_FA_TRANSIT_eq_null_RESP_TRNST_NUM_ne_NULL                                                                                        |
#      | 5787_ASSIGNED_FA_TRANSIT_eq_null_RESP_TRNST_NUM_eq_NULL_CLOSEST_TRANSIT_NUM_ne_NULL                                                            |
#      | 5787_ASSIGNED_FA_TRANSIT_eq_null_RESP_TRNST_NUM_ne_TRANSIT.TR_NUMBER_CLOSEST_TRANSIT_NUM_ne_NULL                                               |
#      | 5787_DO_NOT_SOLICIT_F != Y                                                                                                                     |
#      | 5787_DO_NOT_SOLICIT_F = NULL                                                                                                                   |






