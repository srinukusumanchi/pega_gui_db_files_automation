@InsuranceClaimReminder_5784_EMAIL
Feature: Test data creation for EMail Insurance Claim Reminder

  @InsuranceClaimReminder_5784 @EMAIL @InsuranceClaimReminder_5784_BASE_TESTDATA @RS22075 @5784
  Scenario Outline: InsuranceClaimReminder_RS22075_5784_EMAIL Create test data for Base test cases
    Given load data from "InsuranceClaimReminder_EML" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    And write Credit Card Number into sheet "ACCT_DIM" for "<Test cases>" having "1" accounts

    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table

    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write "INSUR_STAT_LAST_CHNG_DT" for "<INSUR_STAT_LAST_CHNG_DT_Val>" into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>" for decrement in days

    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases       | INSUR_STAT_LAST_CHNG_DT_Val |
      | 5784_EML_BASE_01 | NULL                        |
      | 5784_EML_BASE_02 | NULL                        |
      | 5784_EML_BASE_03 | 20                          |


  @InsuranceClaimReminder_5784 @EMAIL @InsuranceClaimReminder_5784_Positive_Single_Account_TESTDATA @RS22075 @5784
  Scenario Outline: InsuranceClaimReminder_RS22075_5784_EMAIL Create test data for Positive Single Account test cases
    Given load data from "InsuranceClaimReminder_EML" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    And write Credit Card Number into sheet "ACCT_DIM" for "<Test cases>" having "1" accounts

    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table

    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write "INSUR_STAT_LAST_CHNG_DT" for "<INSUR_STAT_LAST_CHNG_DT_Val>" into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>" for decrement in days

    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                                                                  | INSUR_STAT_LAST_CHNG_DT_Val |
      | 5784_EML_Seg_01_LANG_CD_eq_fr and DO_NOT_SOLICIT_F=NULL                                     | NULL                        |
      | 5784_CUST_LvL_EML_CUST_AGE = 18 and Unsubscribe=N                                           | NULL                        |
      | 5784_CUST_LvL_EML_CUST_AGE = 69                                                             | NULL                        |
      | 5784_CUST_LvL_Preference Category of MK_INSURANCE_EMAIL_F = NULL_HARDBOUNCE_EMAIL_F_eq_NULL | NULL                        |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=AXG and SRC_SYS_SUB_PRD_CD=GC                               | NULL                        |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=AXG and SRC_SYS_SUB_PRD_CD=GS                               | NULL                        |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=AXG and SRC_SYS_SUB_PRD_CD=PC                               | NULL                        |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=AXG and SRC_SYS_SUB_PRD_CD=SC                               | NULL                        |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=AXG and SRC_SYS_SUB_PRD_CD=SS                               | NULL                        |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VCL and SRC_SYS_SUB_PRD_CD=DM                               | NULL                        |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VCL and SRC_SYS_SUB_PRD_CD=NF                               | NULL                        |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VCL and SRC_SYS_SUB_PRD_CD=NH                               | NULL                        |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VCL and SRC_SYS_SUB_PRD_CD=RG                               | NULL                        |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VCL and SRC_SYS_SUB_PRD_CD=SC                               | NULL                        |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VCL and SRC_SYS_SUB_PRD_CD=SL                               | NULL                        |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VCL and SRC_SYS_SUB_PRD_CD=SS                               | NULL                        |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VCL and SRC_SYS_SUB_PRD_CD=ST                               | NULL                        |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VCL and SRC_SYS_SUB_PRD_CD=SV                               | NULL                        |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VCL and SRC_SYS_SUB_PRD_CD=ZZ                               | NULL                        |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VFA and SRC_SYS_SUB_PRD_CD=A1                               | NULL                        |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VFA and SRC_SYS_SUB_PRD_CD=A3                               | NULL                        |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VFF and SRC_SYS_SUB_PRD_CD=F1                               | NULL                        |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VFF and SRC_SYS_SUB_PRD_CD=TR                               | NULL                        |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VFF and SRC_SYS_SUB_PRD_CD=TS                               | NULL                        |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VGD and SRC_SYS_SUB_PRD_CD=NF                               | NULL                        |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VGD and SRC_SYS_SUB_PRD_CD=RG                               | NULL                        |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VGD and SRC_SYS_SUB_PRD_CD=SP                               | NULL                        |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VGD and SRC_SYS_SUB_PRD_CD=ST                               | NULL                        |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VLR and SRC_SYS_SUB_PRD_CD=NF                               | NULL                        |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VLR and SRC_SYS_SUB_PRD_CD=RC                               | NULL                        |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VLR and SRC_SYS_SUB_PRD_CD=RG                               | NULL                        |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VUS and SRC_SYS_SUB_PRD_CD=RG                               | NULL                        |
      | 5784_EML_Acc_LvlCREDIT_ARREARS_DAYS = 120                                                   | NULL                        |
      | 5784_EML_Acc_LvlCREDIT_ARREARS_DAYS = 30                                                    | NULL                        |
      | 5784_Acc_Lvl_INS_STATUS_CODE = X AND Current Date -INSUR_STAT_LAST_CHNG_DT =40 days         | 40                          |
      | 5784_Acc_Lvl_INS_STATUS_CODE = X AND Current Date -INSUR_STAT_LAST_CHNG_DT = 1 days         | 1                           |


  @InsuranceClaimReminder_5784 @EMAIL @InsuranceClaimReminder_5784_Negative_Single_Account_TESTDATA @RS22075 @5784
  Scenario Outline: InsuranceClaimReminder_RS22075_5784_EMAIL Create test data for Negative Single Account test cases
    Given load data from "InsuranceClaimReminder_EML" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    And write Credit Card Number into sheet "ACCT_DIM" for "<Test cases>" having "1" accounts

    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table

    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write "INSUR_STAT_LAST_CHNG_DT" for "<INSUR_STAT_LAST_CHNG_DT_Val>" into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>" for decrement in days

    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                                                               | INSUR_STAT_LAST_CHNG_DT_Val |
      | N_5784_CUST_LvL_EML_CUST_TP_CD != PSNL                                                   | NULL                        |
      | N_5784_CUST_LvL_EML_CUST_TP_CD = NULL                                                    | NULL                        |
      | N_5784_CUST_LvL_EML_PRIM_CNTRY_CD != CA                                                  | NULL                        |
      | N_5784_CUST_LvL_EML_PRIM_CNTRY_CD = NULL                                                 | NULL                        |
      | N_5784_CUST_LvL_EML_Lang_CD_!= (en,fr)                                                   | NULL                        |
      | N_5784_CUST_LvL_EML_Lang_CD_= NULL                                                       | NULL                        |
      | N_5784_CUST_LvL_EML_MRKTBLE_F != Y                                                       | NULL                        |
      | N_5784_CUST_LvL_EML_MRKTBLE_F= NULL                                                      | NULL                        |
      | N_5784_CUST_LvL_VLD_EMAIL_F != Y                                                         | NULL                        |
      | N_5784_CUST_LvL_PRIM_EMAIL_ADDR IS NULL                                                  | NULL                        |
      | N_5784_CUST_LvL_INDV_FRST_NM IS NULL                                                     | NULL                        |
      | N_5784_CUST_LvL_ INDV_LAST_NM IS NULL                                                    | NULL                        |
      | N_5784_CUST_LvL_HARDBOUNCE_EMAIL_F !=N                                                   | NULL                        |
      | N_5784_CUST_LvL_Preference Category of MK_INSURANCE_EMAIL_F =N                           | NULL                        |
      | N_5784_CUST_LvL_EML_CUST_AGE < 18                                                        | NULL                        |
      | N_5784_CUST_LvL_EML_CUST_AGE = NULL                                                      | NULL                        |
      | N_5784_CUST_LvL_EML_CUST_AGE > 70                                                        | NULL                        |
      | N_5784_CUST_LvL_UNSUBSCRIBED_F=Y                                                         | NULL                        |
      | N_5784_CUST_LvL_DO_NOT_SOLICIT_F=Y                                                       | NULL                        |
      | N_5784_CUST_LvL_DO_NOT_EMAIL_F!=Y                                                        | NULL                        |
      | N_5784_CUST_LvL_DO_NOT_EMAIL_F = NULL                                                    | NULL                        |
      | N_5784_EML_Acc_Lvl_ACCT_SUBSYS_ID != KS                                                  | NULL                        |
      | N_5784_EML_Acc_Lvl_ACCT_SUBSYS_ID = NULL                                                 | NULL                        |
      | N_5784_EML_Acc_Lvl_SRC_ACCT_STAT_CD != Open                                              | NULL                        |
      | N_5784_EML_Acc_Lvl_SRC_ACCT_STAT_CD = NULL                                               | NULL                        |
      | N_5784_EML_Acc_Lvl_PROD_HIER_LEVEL_3 != Credit Cards                                     | NULL                        |
      | N_5784_EML_Acc_Lvl_PROD_HIER_LEVEL_3 = NULL                                              | NULL                        |
      | N_5784_EML_Acc_Lvl_SRC_SYS_PRD_CD!=AXG and SRC_SYS_SUB_PRD_CD =GC                        | NULL                        |
      | N_5784_EML_Acc_Lvl_SRC_SYS_PRD_CD!=AXG and SRC_SYS_SUB_PRD_CD =NULL                      | NULL                        |
      | N_5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=AXG and SRC_SYS_SUB_PRD_CD=!GS                         | NULL                        |
      | N_5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=NULL and SRC_SYS_SUB_PRD_CD=PC                         | NULL                        |
      | N_5784_EML_Acc_Lvl_CR_CRD_PRTCTN_F!= Y                                                   | NULL                        |
      | N_5784_EML_Acc_Lvl_CR_CRD_PRTCTN_F=NULL                                                  | NULL                        |
      | N_5784_EML_Acc_LvlCREDIT_ARREARS_DAYS > 120                                              | NULL                        |
      | N_5784_EML_Acc_LvlCREDIT_ARREARS_DAYS < 30                                               | NULL                        |
      | N_5784_EML_Acc_LvlCREDIT_ARREARS_DAYS = NULL                                             | NULL                        |
      | N_5784_Acc_Lvl_INS_STATUS_CODE != 101                                                    | NULL                        |
      | N_5784_Acc_Lvl_INS_STATUS_CODE = NULL                                                    | NULL                        |
      | N_5784_Acc_Lvl_INS_STATUS_CODE = X AND Current Date -INSUR_STAT_LAST_CHNG_DT > 40 days   | 41                          |
      | N_5784_Acc_Lvl_INS_STATUS_CODE = X AND Current Date -INSUR_STAT_LAST_CHNG_DT < 1 days    | 0                           |
      | N_5784_Acc_Lvl_INS_STATUS_CODE = X AND Current Date -INSUR_STAT_LAST_CHNG_DT = NULL      | NULL                        |
      | N_5784_Acc_Lvl_INS_STATUS_CODE != X AND Current Date -INSUR_STAT_LAST_CHNG_DT <  40 days | 20                          |
      | N_5784_Acc_Lvl_PRIMARY_ACCT_HOLDER_FLAG != Y                                             | NULL                        |
      | N_5784_Acc_Lvl_PRIMARY_ACCT_HOLDER_FLAG = NULL                                           | NULL                        |


  @InsuranceClaimReminder_5784 @EMAIL @InsuranceClaimReminder_5784_Positive_Multiple_Accounts_TESTDATA @RS22075 @5784
  Scenario Outline: InsuranceClaimReminder_RS22075_5784_EMAIL Create test data for Positive Multiple Accounts test cases
    Given load data from "InsuranceClaimReminder_EML" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    And write Credit Card Number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts

    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    #Update
    #When write "INSUR_STAT_LAST_CHNG_DT" for "<INSUR_STAT_LAST_CHNG_DT_Val>" into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>" for decrement in days
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts

    Examples:
      | Test cases                                |
      | 5784_EML_Acct_Lvl_2_Accounts_Diff_Balance |
      | 5784_EML_Acct_Lvl_2_Accounts_Same_Balance |






