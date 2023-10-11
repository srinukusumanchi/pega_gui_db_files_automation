Feature: Test Data Creation For GIC Renewal SOL Channel


#  As part of D2D Early Engagement Program, this welcome message will target new and existing customers
#  to introduce them to their new D2D account / Scotiabank.
#  It also include a test of the target population who are NEW TO BANK based on Customer relationship date within the last 7 days

  @GICRenewalSOL @GICRenewalSOL_Positive_TestData_dualaccounts_1210 @1210 @SOL @ET14061
  Scenario Outline: GIC Renewal SOL Dual Accounts test data for positive test cases for 1210
    Given load data from "GIC_SOL" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    And  write Scotia card Number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    And  write MATURITY_DATE "<MAT_DT>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write certificate number into "ACCT_DIM" sheet for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Examples:
      | Test cases                                                                                                                            | MAT_DT |
      | 1210_ISSUE =Renewal Group=Investments                                                                                                 | 12     |
      | 1210_Primary Country Cd =CA                                                                                                           | 23     |
      | 1210_CUST_TP_CD= PSNL                                                                                                                 | 23     |
      | 1210_CUST_AGE=18                                                                                                                      | 23     |
      | 1210_CUST_AGE>18                                                                                                                      | 23     |
      | 1210_MRKTBLE_F=Y                                                                                                                      | 23     |
      | 1210_Deceased_F=N                                                                                                                     | 23     |
      | 1210_LANG_CD = E                                                                                                                      | 23     |
      | 1210_LANG_CD = EN                                                                                                                     | 23     |
      | 1210_LANG_CD = F                                                                                                                      | 23     |
      | 1210_LANG_CD = FR                                                                                                                     | 23     |
      | 1210_LANG_CD == e                                                                                                                     | 23     |
      | 1210_LANG_CD == en                                                                                                                    | 23     |
      | 1210_LANG_CD == f                                                                                                                     | 23     |
      | 1210_LANG_CD == fr                                                                                                                    | 23     |
      | 1210_GIVEN_NAME!=NULL                                                                                                                 | 23     |
      | 1210_INDV_FRST_NM != NULL                                                                                                             | 23     |
      | 1210_INDV_LAST_NM!=NULL                                                                                                               | 23     |
      | 1210_INDV_TTL_NM!=NULL                                                                                                                | 23     |
      | 1210_MOB_LAST_LOGIN_DT within last 6 months                                                                                           | 23     |
      | 1210_SOL_LAST_LOGIN_DT  within last 6 months                                                                                          | 23     |
      | 1210_MC_ELIG_F = Y                                                                                                                    | 23     |
      | 1210_PRIM_ADDR_LINE_1!=NULL                                                                                                           | 23     |
      | 1210_PRIM_CITY_NM!=NULL                                                                                                               | 23     |
      | 1210_PRIM_PROV_CD!=NULL                                                                                                               | 23     |
      | 1210_PRIM_POST_CD!=NULL                                                                                                               | 23     |
      | 1210_ASSIGNED_FA_TRANSIT is not NULL                                                                                                  | 23     |
      | 1210_ASSIGNED_FA_TRANSIT is  NULL                                                                                                     | 23     |
      | 1210_PRIM_EMAIL_ADDR!= NULL                                                                                                           | 23     |
      | 1210_SRC_SYS_PRD_CD=NRS                                                                                                               | 23     |
      | 1210_SRC_SYS_PRD_CD=TFSSB                                                                                                             | 23     |
      | 1210_SRC_SYS_PRD_CD=RRSSB                                                                                                             | 23     |
      | 1210_SRC_SYS_PRD_CD=NRSPR                                                                                                             | 23     |
      | 1210_SRC_SYS_PRD_CD=TFS                                                                                                               | 23     |
      | 1210_SRC_SYS_PRD_CD=RRS                                                                                                               | 23     |
      | 1210_account has a scotia card with ACCT_SUBSYS_ID = AC, EDW_ACCT_STAT_CD = A  and (ACCT_ODT,SRC_SYS_PRD_CD,SRC_SYS_SUB_PRD_CD)!=NULL | 23     |
      | 1210_PRD_CD_MASTER!=NULL                                                                                                              | 23     |
      | 1210_PRD_CD_MASTER!=BLANK                                                                                                             | 23     |
      | 1210_PRD_ACCT_STAT_CD=A                                                                                                               | 23     |
      | 1210_CRNT_BAL_AMT>$500                                                                                                                | 23     |
      | 1210_CRNT_BAL_AMT=$500                                                                                                                | 23     |
      | 1210_MAT_DT=Current Month+2 months                                                                                                    | 23     |
      | 1210_SRC_ACCT_STAT_CD is Active                                                                                                       | 23     |
      | 1210_ACCT_CRFC_NUM is not blank                                                                                                       | 23     |
      | 1210_ACCT_CRFC_NUM!=NULL                                                                                                              | 23     |
      | 1210_ACCT_CRFC_NUM is alphanumeric                                                                                                    | 23     |
      | 1210_MAT_VAL_AMT>$0                                                                                                                   | 23     |
      | 1210_ACCT_SUBSYS_ID=UF                                                                                                                | 23     |
      | 1210_ACCT_NUM IS 23 DIGIT                                                                                                             | 23     |
      | 1210_IP_PRD_CD!=NULL                                                                                                                  | 23     |
      | 1210_term_mth!=NULL                                                                                                                   | 23     |
      | 1210_If customer has only one or two GICs then N(426)                                                                                 | 23     |
      | 1210_If PLN_ACCT_INVSTMNT_CAT = REGISTERED, then R(466)                                                                               | 23     |
      | 1210_If PLN_ACCT_INVSTMNT_CAT! = REGISTERED then N(466)                                                                               | 23     |
      | 1210_If ASSIGNED_FA_TRANSIT is populated, then Y(671)                                                                                 | 23     |
      | 1210_If ASSIGNED_FA_TRANSIT is not populated, then N(671)                                                                             | 23     |
      | 1210_If DO_NOT_CALL_F = Y, then Y(674)                                                                                                | 23     |
      | 1210_If DO_NOT_CALL_F = N, then N(674)                                                                                                | 23     |
      | 1210_PRIMARY_ACCT_HOLDER_FLAG=Y                                                                                                       | 23     |
      | 1210_PLN_ACCT_CD_MASTER=NRS                                                                                                           | 25     |
      | 1210_PLN_ACCT_CD_MASTER=TFSA                                                                                                          | 25     |
      | 1210_PLN_ACCT_CD_MASTER=LRSP                                                                                                          | 25     |
      | 1210_PLN_ACCT_CD_MASTER=RLSP                                                                                                          | 25     |
      | 1210_PLN_ACCT_CD_MASTER=RRSP                                                                                                          | 25     |
      | 1210_PLN_ACCT_DLR=BNS                                                                                                                 | 25     |
      | 1210_PLN_ACCT_DLR=SSI                                                                                                                 | 25     |
      | 1210_INDV_TTL_NM is NULL                                                                                                              | 23     |


  @GICRenewalSOL @GICRenewalSOL_Negative_TestData_DualAccounts_1210 @1210 @SOL @ET14061
  Scenario Outline: GIC Renewal 1210 SOL Dual Accounts test data for Negative test cases
    Given load data from "GIC_SOL" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    And  write Scotia card Number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    And  write MATURITY_DATE "<MAT_DT>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write certificate number into "ACCT_DIM" sheet for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Examples:
      | Test cases                                              | MAT_DT |
      | 1210_N_PRIM_CNTRY_CD!  = CA                             | 23     |
      | 1210_N_PRIM_CNTRY_CD = NULL                             | 23     |
      | 1210_N_CUST_TP_CD != PSNL                               | 23     |
      | 1210_N_CUST_TP_CD =  NULL                               | 23     |
      | 1210_N_CUST_AGEless than 18                             | 23     |
      | 1210_N_CUST_AGE Equal to NULL                           | 23     |
      | 1210_N_Deceased_F=Y                                     | 23     |
      | 1210_N_Deceased_F = NULL                                | 23     |
      | 1210_N_LANG_CD = K                                      | 23     |
      | 1210_N_LANG_CD = NE                                     | 23     |
      | 1210_N_LANG_CD = NULL                                   | 23     |
      | 1210_N_MRKTBLE_F = N                                    | 23     |
      | 1210_N_MRKTBLE_F = NULL                                 | 23     |
      | 1210_N_PRIM_EMAIL_ADDR IS  NULL                         | 23     |
      | 1210_N_PRIM_EMAIL_ADDR IS  BLANK                        | 23     |
      | 1210_N_INDV_FRST_NM is BLANK                            | 23     |
      | 1210_N_INDV_FRST_NM is NULL                             | 23     |
      | 1210_N_INDV_LAST_NM is NULL                             | 23     |
      | 1210_N_INDV_LAST_NM is blank                            | 23     |
      | 1210_N_GIVEN_NAME is blank                              | 23     |
      | 1210_N_GIVEN_NAME is NULL                               | 23     |
      | 1210_N_MC_ELIG_F != Y                                   | 23     |
      | 1210_N_MC_ELIG_F=NULL                                   | 23     |
      | 1210_N_SOL_LAST_LOGIN_DT  NOT within last 6 months      | 23     |
      | 1210_N_MOB_LAST_LOGIN_DT  NOT within last 6 months      | 23     |
      | 1210_N_PRIM_ADDR_LINE_1 is NULL                         | 23     |
      | 1210_N_PRIM_CITY_NM is NULL                             | 23     |
      | 1210_N_PRIM_PROV_CD is NULL                             | 23     |
      | 1210_N_PRIM_POST_CD is NULL                             | 23     |
      | 1210_N_ASSIGNED_FA_TRANIST is NULL ,serv_trnst_num=NULL | 23     |
      | 1210_N_SRC_SYS_PRD_CD=01                                | 23     |
      | 1210_N_SRC_SYS_PRD_CD is NULL                           | 23     |
      | 1210_N_PRD_CD_MASTER=NULL                               | 23     |
      | 1210_N_PRD_CD_MASTER is blank                           | 23     |
      | 1210_N_PRD_CD_MASTER=ROC                                | 23     |
      | 1210_N_PRD_ACCT_STAT_CD!=A                              | 23     |
      | 1210_N_PRD_ACCT_STAT_CD=NULL                            | 23     |
      | 1210_N_PLN_ACCT_CD_MASTER=RDSP                          | 23     |
      | 1210_N_PLN_ACCT_CD_MASTER=NULL                          | 23     |
      | 1210_N_CRNT_BAL_AMT<$500                                | 23     |
      | 1210_N_SRC_ACCT_STAT_CD=Not Active                      | 23     |
      | 1210_N_SRC_ACCT_STAT_CD=NULL                            | 23     |
      | 1210_N_ACCT_SUBSYS_ID!=UF                               | 23     |
      | 1210_N_ACCT_SUBSYS_ID=NULL                              | 23     |
      | 1210_N_PRD_CD_MASTER=CT                                 | 23     |
      | 1210_N_PRD_CD_MASTER=CU                                 | 23     |
      | 1210_N_PRD_CD_MASTER=CV                                 | 23     |
      | 1210_N_PRD_CD_MASTER=CTI                                | 23     |
      | 1210_N_PRD_CD_MASTER=CUI                                | 23     |
      | 1210_N_PRD_CD_MASTER=CVI                                | 23     |
      | 1210_N_PRD_CD_MASTER=TU                                 | 23     |
      | 1210_N_PRD_CD_MASTER=TUI                                | 23     |
      | 1210_N_PLN_ACCT_CD_MASTER = RESP                        | 23     |
      | 1210_N_PLN_ACCT_CD_MASTER = RRIF                        | 23     |
      | 1210_N_PRD_CD_MASTER=ACC                                | 23     |
      | 1210_N_PRD_CD_MASTER=FLE                                | 23     |
      | 1210_N_PRD_CD_MASTER=UTL                                | 23     |
      | 1210_N_IN_TRUST_FOR_IND_CD=1                            | 23     |
      | 1210_N_PLN_OWNERSHIP_CD=2                               | 23     |
      | 1210_N_PLN_OWNERSHIP_CD=3                               | 23     |
      | 1210_N_SOL_LAST_LOGIN_DT  is NULL                       | 23     |
      | 1210_N_MOB_LAST_LOGIN_DT  is NULL                       | 23     |
      | 1210_N_PRIMARY_ACCT_HOLDER_FLAG=N                       | 23     |
      | 1210_N_PRIMARY_ACCT_HOLDER_FLAG=NULL                    | 23     |
      | 1210_N_PLN_ACCT_CD_MASTER!=(NRS,TFSA,LRSP,RLSP,RRSP)    | 25     |
      | 1210_N_PLN_ACCT_CD_MASTER=NULL                          | 25     |
      | 1210_N_PLN_ACCT_DLR! = (BNS,SSI)                        | 25     |
      | 1210_N_PLN_ACCT_DLR! = NULL                             | 25     |

  @GICRenewalSOL @GICRenewalSOL_NegativeMATDT_TestData_1210 @1210 @SOL @ET14061
  Scenario Outline: GIC Renewal 1210 ET14061 SOL Create test data when MAT date is < current month + 2 months
    Given load data from "GIC_SOL" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    And  write Scotia card Number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    And  write negative MATURITY_DATE "<MAT_DT>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write certificate number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Examples:
      | Test cases                            | MAT_DT |
      | 1210_N_MAT_DT< CURRENT MONTH+2 MONTHS | 23     |


  @GICRenewalSOL @GICRenewalSOL_NegativeMatDate_TestData_1210 @1210 @SB @ET14061
  Scenario Outline: GIC Renewal 1210 ET14061 SOL Create test data when MAT date is NULL
    Given load data from "GIC_SOL" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    And  write Scotia card Number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    When write certificate number into "ACCT_DIM" sheet for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts

    Examples:
      | Test cases         |
      | 1210_N_MAT_DT=NULL |


  @GICRenewalSOLDualAcc @GICRenewalSOLThreeAccounts_TestData_1210 @1210 @SOL @ET14061
  Scenario Outline: GIC Renewal 1210 SOL Dual Accounts test data for positive test cases
    Given load data from "GIC_SOL" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Testcases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Testcases>"
    Then insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Testcases>" having "3" accounts with gics
    And  write Scotia card Number into sheet "ACCT_DIM" for "<Testcases>" having "3" accounts
    When  write certificate number into sheet "ACCT_DIM" for "<Testcases>" having "3" accounts with gics
    And  write MATURITY_DATE "<MAT_DT>" value into sheet "ACCT_DIM" for "<Testcases>"
    And write maturity date "<MAT_DT_Dual_Account>" for dual accounts into "ACCT_DIM" sheet for "<Testcases>" having "3" accounts with gics
    Then insert customer account details in "ACCT_DIM" table having "3" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Testcases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts

    Examples:
      | Testcases                                                                                                                                   | MAT_DT | MAT_DT_Dual_Account |
      | 1210_If PLN_ACCT_INVSTMNT_CAT = REGISTERED, then R in multiple GICs for second GIC(550)                                                     | 23     | 23                  |
      | 1210_If PLN_ACCT_INVSTMNT_CAT! = REGISTERED then N in multiple GICs for second GIC(550)                                                     | 24     | 24                  |
      | 1210_multiple GICs then prioritised based on earliest mat_dt                                                                                | 20     | 25                  |
      | 1210_multiple GICs then prioritised based on highest maturtiy amount                                                                        | 10     | 10                  |
      | 1210_multiple GICs then prioritised based on  lowest certficate number                                                                      | 10     | 10                  |
      | 1210_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<$100K                                                                              | 10     | 10                  |
      | 1210_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=$100K                                                                              | 10     | 10                  |
      | 1210_GDD_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is equal to calendar day 1  of the particular month            | 01     | 01                  |
      | 1210_GDD_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is in between calendar day 1 and 7  of the particular month    | 05     | 05                  |
      | 1210_GDD_ SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is equal to calendar day 7  of the particular month           | 07     | 07                  |
      | 1210_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is equal to calendar day 8  of the particular month            | 08     | 08                  |
      | 1210_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  &&  MAT_DT is in between calendar day 8 and 14  of the particular month  | 10     | 10                  |
      | 1210_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is equal to calendar day 14  of the particular month           | 14     | 14                  |
      | 1210_GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is equal to calendar day 15  of the particular month           | 15     | 15                  |
      | 1210_GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  &&  MAT_DT is in between calendar day 15 and 22  of the particular month | 20     | 20                  |
      | 1210_ GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is equal to calendar day 22  of the particular month          | 22     | 22                  |
      | 1210_GGG_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is equal to calendar day 23  of the particular month           | 23     | 23                  |
      | 1210_GGG_ SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is greater than calendar day 23  of the particular month      | 26     | 26                  |
      | 1210_GDD_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  && MAT_DT is equal to calendar day 1  of the particular month            | 01     | 01                  |
      | 1210_GDD_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  && MAT_DT is in between calendar day 1 and 7  of the particular month    | 05     | 05                  |
      | 1210_GDD_ SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  && MAT_DT is equal to calendar day 7  of the particular month           | 07     | 07                  |
      | 1210_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  && MAT_DT is equal to calendar day 8  of the particular month            | 08     | 08                  |
      | 1210_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  &&  MAT_DT is in between calendar day 8 and 14  of the particular month  | 10     | 10                  |
      | 1210_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  && MAT_DT is equal to calendar day 14  of the particular month           | 14     | 14                  |
      | 1210_GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  && MAT_DT is equal to calendar day 15  of the particular month           | 15     | 15                  |
      | 1210_GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  &&  MAT_DT is in between calendar day 15 and 22  of the particular month | 20     | 20                  |
      | 1210_ GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  && MAT_DT is equal to calendar day 22  of the particular month          | 22     | 22                  |
      | 1210_GGG_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  &&MAT_DT is equal to calendar day 23  of the particular month            | 23     | 23                  |
      | 1210_GGG_ SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  && MAT_DT is greater than calendar day 23  of the particular month      | 26     | 26                  |
      | 1210_N_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>$100K                                                                            | 26     | 26                  |


  @GICRenewalSOLDualAcc @GICRenewalSOLMULTIACCOUNTS_TestData_1210 @1210 @SOL @ET14061
  Scenario Outline: GIC Renewal 1210 SOL Dual Accounts test data for positive test cases
    Given load data from "GIC_SOL" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Testcases>"
    When  read customer information details from excel sheet "CUST_DIM" for "<Testcases>"
    Then  insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Testcases>" having "4" accounts with gics
    And   write Scotia card Number into sheet "ACCT_DIM" for "<Testcases>" having "4" accounts
    And   write certificate number into sheet "ACCT_DIM" for "<Testcases>" having "4" accounts with gics
    And   write MATURITY_DATE "<MAT_DT>" value into sheet "ACCT_DIM" for "<Testcases>"
    And   write maturity date "<MAT_DT_Dual_Account>" for dual accounts into "ACCT_DIM" sheet for "<Testcases>" having "4" accounts with gics
    Then  insert customer account details in "ACCT_DIM" table having "4" accounts
    When  write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Testcases>"  having "2" accounts
    Then  insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts

    Examples:
      | Testcases                                         | MAT_DT | MAT_DT_Dual_Account |
      | 1210_If customer has more than 2 GICs then Y(426) | 23     | 23                  |

  @GICRenewalSOLDualAcc @GICRenewalSOLMULTIACCOUNTS_SCD_TestData_1210 @1210 @SOL @ET14061
  Scenario Outline: GIC Renewal 1210 SOL Dual Accounts test data for positive test cases
    Given load data from "GIC_SOL" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Testcases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Testcases>"
    Then insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Testcases>" having "4" accounts with gics
    And  write Scotia card Number into sheet "ACCT_DIM" for "<Testcases>" having "4" accounts
    And  write certificate number into sheet "ACCT_DIM" for "<Testcases>" having "4" accounts with gics
    And  write MATURITY_DATE "<MAT_DT>" value into sheet "ACCT_DIM" for "<Testcases>"
    Then insert customer account details in "ACCT_DIM" table having "4" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Testcases>"  having "4" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "4" accounts

    Examples:
      | Testcases                                                                             | MAT_DT |
      | 1210_Account has multiple scotia cards then one with max Account_odt is selected(372) | 23     |

  @GICRenewalSOL @GICRenewal_Positive_TestData_MultiCahnnels@1210 @SOL @ET14061
  Scenario Outline: GIC Renewal SOL Dual Accounts test data for positive test cases for 1210
    Given load data from "GIC_SOL" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    And  write Scotia card Number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    And  write MATURITY_DATE "<MAT_DT>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write certificate number into "ACCT_DIM" sheet for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Examples:
      | Test cases | MAT_DT |
      | SOLDIAEML  | 23     |
      | SOLEMLSB   | 23     |
