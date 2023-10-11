@5724_MAT_TestDataCreation
Feature: Test data creation for D2D Acq Cross Sell for MAT Channel

  @RSP_RIF_Conversion @RSP_RIF_Conversion_MAT_5724_Positive_TestData  @5724 @MAT @ET02003
  Scenario Outline: RSP RIF Conversion 5724_MAT Create test data for positive test cases
    Given load data from "RSP_RIF_Conv_MAT" excel sheet
    #CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When write birth date "<DoB>" and "<DD>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    #ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts
    #CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts
    Examples:
      | Test cases                                                                          | Acct_Cnt | DoB | DD |
      | 5724_MAT_BASE_01                                                                    | 1        | 1   | 01 |
      | 5724_MAT_LANG_CD_eq_fr                                                              | 1        | 1   | 05 |
      | 5724_MAT_DO_NOT_SOLICIT_F_eq_NULL_NOT_AML_KYC_eq_NULL                               | 1        | 1   | 10 |
      | 5724_MAT_RSP_Account_Count_eq_3                                                     | 3        | 1   | 15 |
      | 5724_MAT_GIVEN_NAME_ne_NULL_ASSIGNED_FA_TRANSIT_ne_NULL                             | 1        | 1   | 20 |
      | 5724_MAT_INDV_TTL_NM_ne_NULL_RESP_TRNST_NUM_is_Valid                                | 1        | 1   | 25 |
      | 5724_MAT_INDV_FRST_NM_ne_NULL_RESP_TRNST_NUM_is_InValid_CLOSEST_TRANSIT_NUM_ne_NULL | 1        | 1   | 30 |
      | 5724_MAT_INDV_LAST_NM_ne_NULL_RESP_TRNST_NUM_eq_NULL_CLOSEST_TRANSIT_NUM_ne_NULL    | 1        | 1   | 07 |
      | 5724_MAT_ALL_NAME_ne_NULL                                                           | 1        | 1   | 13 |


  @RSP_RIF_Conversion @RSP_RIF_Conversion_MAT_5724_Negative_TestData  @5724 @MAT @ET02003
  Scenario Outline: RSP RIF Conversion 5724_MAT Create test data for Negative test cases
    Given load data from "RSP_RIF_Conv_MAT" excel sheet
    #CUST_DIM
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When write birth date "<DoB>" and "<DD>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    #ACCT_DIM
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts
    #CUST_ACCT_RLTNP_DIM
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts
    Examples:
      | Test cases                                      | Acct_Cnt | DoB  | DD   |
      | N_5724_MAT_DECEASED_F_ne_N                      | 1        | 1    | 15   |
      | N_5724_MAT_DECEASED_F_eq_NULL                   | 1        | 1    | 15   |
      | N_5724_MAT_PRIM_CNTRY_CD_ne_CA                  | 1        | 1    | 15   |
      | N_5724_MAT_PRIM_CNTRY_CD_eq_NULL                | 1        | 1    | 15   |
      | N_5724_MAT_CUST_AGE_eq_64                       | 1        | 1    | 15   |
      | N_5724_MAT_CUST_AGE_eq_70                       | 1        | 1    | 15   |
      | N_5724_MAT_CUST_AGE_eq_NULL                     | 1        | 1    | 15   |
      | N_5724_MAT_INDV_BRTH_DT_eq_0                    | 1        | 0    | 15   |
      | N_5724_MAT_INDV_BRTH_DT_eq_2                    | 1        | 2    | 15   |
      | N_5724_MAT_INDV_BRTH_DT_eq_NULL                 | 1        | NULL | NULL |
      | N_5724_MAT_LANG_CD_eq_bn                        | 1        | 1    | 15   |
      | N_5724_MAT_LANG_CD_eq_NULL                      | 1        | 1    | 15   |
      | N_5724_MAT_DO_NOT_SOLICIT_F_eq_Y                | 1        | 1    | 15   |
      | N_5724_MAT_MRKTBLE_F_eq_N                       | 1        | 1    | 15   |
      | N_5724_MAT_MRKTBLE_F_eq_NULL                    | 1        | 1    | 15   |
      | N_5724_MAT_NOT_AML_KYC_eq_Y                     | 1        | 1    | 15   |
      | N_5724_MAT_DO_NOT_CALL_F_eq_Y                   | 1        | 1    | 15   |
      | N_5724_MAT_DO_NOT_CALL_F_eq_NULL                | 1        | 1    | 15   |
      | N_5724_MAT_ACCT_SUBSYS_ID_ne_UF                 | 1        | 1    | 15   |
      | N_5724_MAT_ACCT_SUBSYS_ID_eq_NULL               | 1        | 1    | 15   |
      | N_5724_MAT_PLN_ACCT_CD_MASTER_ne_RRSP           | 1        | 1    | 15   |
      | N_5724_MAT_PLN_ACCT_CD_MASTER_eq_NULL           | 1        | 1    | 15   |
      | N_5724_MAT_SRC_ACCT_STAT_CD_ne_Active           | 1        | 1    | 15   |
      | N_5724_MAT_SRC_ACCT_STAT_CD_eq_NULL             | 1        | 1    | 15   |
      | N_5724_MAT_RSP_Account_Count_eq_0               | 1        | 1    | 15   |
      | N_5724_MAT_ALL_NAME_eq_NULL                     | 1        | 1    | 15   |
      | N_5724_MAT_ALL_Transit_eq_NULL                  | 1        | 1    | 15   |
      | N_5724_MAT_RESP_TRNST_NUM_is_InValid            | 1        | 1    | 15   |
      | N_5724_MAT_DEDICATED_INVSTMNT_ADVISOR_F_ne_Y    | 1        | 1    | 01   |
      | N_5724_MAT_DEDICATED_INVSTMNT_ADVISOR_F_eq_NULL | 1        | 1    | 01   |
      | N_5724_MAT_ASSIGNED_FA_ID_eq_NULL               | 1        | 1    | 01   |

