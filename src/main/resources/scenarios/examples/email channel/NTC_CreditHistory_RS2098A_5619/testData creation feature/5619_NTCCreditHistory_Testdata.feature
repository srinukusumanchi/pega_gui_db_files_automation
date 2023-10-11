@NTCCreditHistory_5619_Email
Feature: Test data creation for NTC Credit History


  @NTCCreditHistory_Email_5619_111
  Scenario Outline: NTC Credit History_RS2098A_5619_EMAIL Create test data for 111
    Given load data from "NTCCreditHistory" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "ARRV_DT" field with "<Arrival_Dt_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    Examples:
      | Test cases                       | Arrival_Dt_Val | ACCT_ODT_Val | Acct_Cnt |
#      | 5619_EMAIL_Customer Not Deceased                        | 45             | 32           | 1        |
#      | 5619_EMAIL_CUST_AGE=18                                  | 45             | 32           | 1        |
#      | 5619_EMAIL_LANG_CD=E                                    | 45             | 32           | 1        |
#      | 5619_EMAIL_LANG_CD=EN                                   | 45             | 32           | 1        |
#      | 5619_EMAIL_LANG_CD=e_LowerCase                          | 45             | 32           | 1        |
#      | 5619_EMAIL_LANG_CD=en_LowerCase                         | 45             | 32           | 1        |
#      | 5619_EMAIL_DO_NOT_SOLICIT_F=NULL                        | 45             | 32           | 1        |
#      | 5619_EMAIL_MCB_IND = Y           | 45             | 32           | 1        |
#      | 5619_EMAIL_ARR_DT LT 5 years     | 1825           | 32           | 1        |
#      | 5619_EMAIL_13_01                                        | 45             | 32           | 1        |
#      | 5619_EMAIL_13_03                                        | 45             | 32           | 1        |
#      | 5619_EMAIL_13_07                                        | 45             | 32           | 1        |
#      | 5619_EMAIL_13_08                                        | 45             | 32           | 1        |
#      | 5619_EMAIL_07_11                                        | 45             | 32           | 1        |
#      | 5619_EMAIL_07_12                                        | 45             | 32           | 1        |
#      | 5619_EMAIL_Acct_Odt_GE_30_TO_LE_45                      | 45             | 32           | 1        |
#      | 5619_EMAIL_ACCT_SUBSYS_ID = BB AND SRC_ACCT_STAT_CD = A | 45             | 32           | 1        |
#      | 5619_EMAIL_PRIMARY_ACCT_HOLDER_FLAG = Y                 | 45             | 32           | 1        |
#      | 5619_EMAIL_DO_NOT_EMAIL_F=N                             | 45             | 32           | 1        |
#      | 5619_EMAIL_VLD_EMAIL=Y                                  | 45             | 32           | 1        |
#      | 5619_EMAIL_PRIM_EMAIL_ADDR!=NULL                        | 45             | 32           | 1        |
#      | 5619_EMAIL_INDV_FRST_NM!=NULL                           | 45             | 32           | 1        |
#      | 5619_EMAIL_INDV_LAST_NM!=NULL                           | 45             | 32           | 1        |
#      | 5619_EMAIL_MK_BK_INFO_ACCTS_EMAIL_F =Y                  | 45             | 32           | 1        |
#      | 5619_EMAIL_MK_BK_INFO_ACCTS_EMAIL_F =NULL               | 45             | 32           | 1        |
#      | N-5619_EMAIL_Deceased=Y                                 | 45             | 32           | 1        |
#      | N-5619_EMAIL_Deceased=NULL                              | 45             | 32           | 1        |
#      | N-5619_EMAIL_CUST_TP_CD!=PSNL                           | 45             | 32           | 1        |
#      | N-5619_EMAIL_CUST_TP_CD=NULL                            | 45             | 32           | 1        |
#      | N-5619_EMAIL_PRIM_CNTRY_CD!=CA                          | 45             | 32           | 1        |
#      | N-5619_EMAIL_PRIM_CNTRY_CD=NULL                         | 45             | 32           | 1        |
#      | N-5619_EMAIL_CUST_AGE=NULL                              | 45             | 32           | 1        |
#      | N-5619_EMAIL_CUST_AGE<18                                | 45             | 32           | 1        |
#      | N-5619_EMAIL_LANG_CD=G                                  | 45             | 32           | 1        |
#      | N-5619_EMAIL_LANG_CD=NULL                               | 45             | 32           | 1        |
#      | N-5619_EMAIL_DO_NOT_SOLICIT_F=Y                         | 45             | 32           | 1        |
#      | N-5619_EMAIL_MRKTBLE_F=N                                | 45             | 32           | 1        |
#      | N-5619_EMAIL_MRKTBLE_F=NULL                             | 45             | 32           | 1        |
#      | N-5619_EMAIL_MCB_IND = N                                | 45             | 32           | 1        |
#      | N-5619_EMAIL_MCB_IND = NULL                             | 45             | 32           | 1        |
#      | N-5619_EMAIL_ARR_DT_eq_5years    | 1826           | 32           | 1        |
      | N-5619_EMAIL_ARR_DT GT 5 years | 1827           | 32           | 1        |
#      | N-5619_EMAIL_ACCT_SUBSYS_ID!=BB                         | 45             | 32           | 1        |
#      | N-5619_EMAIL_SRC_ACCT_STAT_CD!=A                        | 45             | 32           | 1        |
#      | N-5619_EMAIL_ACCT_ODT < 30 days                         | 45             | 29           | 1        |
#      | N-5619_EMAIL_ACCT_ODT > 45 days                         | 45             | 48           | 1        |
#      | N-5619_EMAIL_SRC_PRD_CD=01 and SRC_SUB_PRD_CD=01        | 45             | 32           | 1        |
#      | N-5619_EMAIL_SRC_PRD_CD=01 and SRC_SUB_PRD_CD=02        | 45             | 32           | 1        |
#      | N-5619_EMAIL_SRC_PRD_CD=01 and SRC_SUB_PRD_CD=03        | 45             | 32           | 1        |
#      | N-5619_EMAIL_SRC_PRD_CD=01 and SRC_SUB_PRD_CD=04        | 45             | 32           | 1        |
#      | N-5619_EMAIL_SRC_PRD_CD=02 and SRC_SUB_PRD_CD=01        | 45             | 32           | 1        |
#      | N-5619_EMAIL_SRC_PRD_CD=02 and SRC_SUB_PRD_CD=02        | 45             | 32           | 1        |
#      | N-5619_EMAIL_SRC_PRD_CD=02 and SRC_SUB_PRD_CD=03        | 45             | 32           | 1        |
#      | N-5619_EMAIL_SRC_PRD_CD=19 and SRC_SUB_PRD_CD=01        | 45             | 32           | 1        |
#      | N-5619_EMAIL_SRC_PRD_CD=19 and SRC_SUB_PRD_CD=02        | 45             | 32           | 1        |
#      | N-5619_EMAIL_SRC_PRD_CD=19 and SRC_SUB_PRD_CD=03        | 45             | 32           | 1        |
#      | N-5619_EMAIL_SRC_PRD_CD=19 and SRC_SUB_PRD_CD=04        | 45             | 32           | 1        |
#      | N-5619_EMAIL_SRC_PRD_CD=19 and SRC_SUB_PRD_CD=07        | 45             | 32           | 1        |
#      | N-5619_EMAIL_SRC_PRD_CD=19 and SRC_SUB_PRD_CD=08        | 45             | 32           | 1        |
#      | N-5619_EMAIL_SRC_PRD_CD=23 and SRC_SUB_PRD_CD=01        | 45             | 32           | 1        |
#      | N-5619_EMAIL_SRC_PRD_CD=23 and SRC_SUB_PRD_CD=03        | 45             | 32           | 1        |
#      | N-5619_EMAIL_SRC_PRD_CD=13 and SRC_SUB_PRD_CD=02        | 45             | 32           | 1        |
#      | N-5619_EMAIL_SRC_PRD_CD=07 and SRC_SUB_PRD_CD=01        | 45             | 32           | 1        |
#      | N-5619_EMAIL_PRIMARY_ACCT_HOLDER_FLAG = N               | 45             | 32           | 1        |
#      | N-5619_EMAIL_PRIMARY_ACCT_HOLDER_FLAG = NULL            | 45             | 32           | 1        |
#      | N-5619_EMAIL_DO_NOT_EMAIL_F=Y                           | 45             | 32           | 1        |
#      | N-5619_EMAIL_DO_NOT_EMAIL_F=NULL                        | 45             | 32           | 1        |
#      | N-5619_EMAIL_VLD_EMAIL=N                                | 45             | 32           | 1        |
#      | N-5619_EMAIL_VLD_EMAIL=NULL                             | 45             | 32           | 1        |
#      | N-5619_EMAIL_PRIM_EMAIL_ADDR=NULL                       | 45             | 32           | 1        |
#      | N-5619_EMAIL_INDV_FRST_NM=NULL                          | 45             | 32           | 1        |
#      | N-5619_EMAIL_INDV_LAST_NM=NULL                          | 45             | 32           | 1        |
#      | N-5619_EMAIL_MK_BK_INFO_ACCTS_EMAIL_F =N                | 45             | 32           | 1        |
#      | N-5619_EMAIL_ARR_DT_eq_NULL      | NULL           | 32           | 1        |


  @NTCCreditHistory_Email_5619_122
  Scenario Outline: NTC Credit History_RS2098A_5619_EMAIL Create test data for 122
    Given load data from "NTCCreditHistory" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "ARRV_DT" field with "<Arrival_Dt_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts


    Examples:
      | Test cases                              | ACCT_ODT_Val | Arrival_Dt_Val | Acct_Cnt |
#      | 5619_EMAIL_Segment1_ACCT_SUBSYS_ID = KS | 32,32        | 45             | 2        |
#      | 5619_EMAIL_Segment1_SRC_ACCT_STAT_CD = Open             | 32       |
#      | 5619_EMAIL_Segment1_PROD_HIER_LEVEL_3 = Credit Cards    | 32       |
#      | N-5619_EMAIL_Segment1_ACCT_SUBSYS_ID != KS              | 32       |
#      | N-5619_EMAIL_Segment1_SRC_ACCT_STAT_CD != Open          | 32       |
#      | N-5619_EMAIL_Segment1_PROD_HIER_LEVEL_3 != Credit Cards | 32       |
#      | 5619_EMAIL_Segment1_PRIMARY_ACCT_HOLDER_FLAG = N        | 32       |
#      | 5619_EMAIL_Segment1_PRIMARY_ACCT_HOLDER_FLAG = NULL     | 32       |
#      | N-5619_EMAIL_2_BBAccounts_1301_0101                     | 32       |
#      | N-5619_EMAIL_2_BBAccounts_0711_0201                     | 32       |
