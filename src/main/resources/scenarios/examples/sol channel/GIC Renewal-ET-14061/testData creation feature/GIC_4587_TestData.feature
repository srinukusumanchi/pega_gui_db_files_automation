Feature: Test Data Creation For GIC Renewal SOL Channel


#  As part of D2D Early Engagement Program, this welcome message will target new and existing customers
#  to introduce them to their new D2D account / Scotiabank.
#  It also include a test of the target population who are NEW TO BANK based on Customer relationship date within the last 7 days

  @GICRenewalEmail @GICRenewalSOL_Positive_TestData_dualaccounts_4587 @4587 @SOL @ET14061
  Scenario Outline: GIC Renewal SOL Dual Accounts test data for positive test cases for 4587
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
      | 4587_ISSUE =Renewal Group=Investments                                                                                                 | 25     |
      | 4587_Primary Country Cd =CA                                                                                                           | 25     |
      | 4587_CUST_TP_CD= PSNL                                                                                                                 | 25     |
      | 4587_CUST_AGE=18                                                                                                                      | 25     |
      | 4587_CUST_AGE>18                                                                                                                      | 25     |
      | 4587_MRKTBLE_F=Y                                                                                                                      | 25     |
      | 4587_Deceased_F=N                                                                                                                     | 25     |
      | 4587_LANG_CD == E                                                                                                                     | 25     |
      | 4587_LANG_CD == EN                                                                                                                    | 25     |
      | 4587_LANG_CD == F                                                                                                                     | 25     |
      | 4587_LANG_CD == FR                                                                                                                    | 25     |
      | 4587_LANG_CD = e                                                                                                                      | 25     |
      | 4587_LANG_CD = en                                                                                                                     | 25     |
      | 4587_LANG_CD = f                                                                                                                      | 25     |
      | 4587_LANG_CD = fr                                                                                                                     | 25     |
      | 4587_GIVEN_NAME!=NULL                                                                                                                 | 25     |
      | 4587_INDV_FRST_NM != NULL                                                                                                             | 25     |
      | 4587_INDV_LAST_NM!=NULL                                                                                                               | 25     |
      | 4587_INDV_TTL_NM!=NULL                                                                                                                | 25     |
      | 4587_MOB_LAST_LOGIN_DT within last 6 months                                                                                           | 25     |
      | 4587_SOL_LAST_LOGIN_DT  within last 6 months                                                                                          | 25     |
      | 4587_MC_ELIG_F = Y                                                                                                                    | 25     |
      | 4587_PRIM_ADDR_LINE_1!=NULL                                                                                                           | 25     |
      | 4587_PRIM_CITY_NM!=NULL                                                                                                               | 25     |
      | 4587_PRIM_PROV_CD!=NULL                                                                                                               | 25     |
      | 4587_PRIM_POST_CD!=NULL                                                                                                               | 25     |
      | 4587_ASSIGNED_FA_TRANSIT is not NULL                                                                                                  | 25     |
      | 4587_ASSIGNED_FA_TRANSIT is  NULL                                                                                                     | 25     |
      | 4587_PRIM_EMAIL_ADDR!= NULL                                                                                                           | 25     |
      | 4587_SRC_SYS_PRD_CD=NRS                                                                                                               | 25     |
      | 4587_SRC_SYS_PRD_CD=TFSSB                                                                                                             | 25     |
      | 4587_SRC_SYS_PRD_CD=RRSSB                                                                                                             | 25     |
      | 4587_SRC_SYS_PRD_CD=NRSPR                                                                                                             | 25     |
      | 4587_SRC_SYS_PRD_CD=TFS                                                                                                               | 25     |
      | 4587_SRC_SYS_PRD_CD=RRS                                                                                                               | 25     |
      | 4587_account has a scotia card with ACCT_SUBSYS_ID = AC, EDW_ACCT_STAT_CD = A  and (ACCT_ODT,SRC_SYS_PRD_CD,SRC_SYS_SUB_PRD_CD)!=NULL | 25     |
      | 4587_PRD_CD_MASTER!=BLANK                                                                                                             | 25     |
      | 4587_PRD_CD_MASTER!=NULL                                                                                                              | 25     |
      | 4587_PRD_ACCT_STAT_CD=A                                                                                                               | 25     |
      | 4587_ACCT_SUBSYS_ID=UF                                                                                                                | 25     |
      | 4587_ACCT_CRFC_NUM!=NULL                                                                                                              | 25     |
      | 4587_ACCT_CRFC_NUM is alphanumeric                                                                                                    | 25     |
      | 4587_CRNT_BAL_AMT>$500                                                                                                                | 25     |
      | 4587_crnt_bal_amt=500                                                                                                                 | 25     |
      | 4587_PLN_ACCT_CD_MASTER!=NULL                                                                                                         | 25     |
      | 4587_MAT_DT=Current Month+2 months                                                                                                    | 25     |
      | 4587_SRC_ACCT_STAT_CD is Active                                                                                                       | 25     |
      | 4587_ACCT_CRFC_NUM is not blank                                                                                                       | 25     |
      | 4587_MAT_VAL_AMT>$0                                                                                                                   | 25     |
      | 4587_ACCT_NUM IS 23 DIGIT                                                                                                             | 25     |
      | 4587_IP_PRD_CD!=NULL                                                                                                                  | 25     |
      | 4587_term_mth!=NULL                                                                                                                   | 25     |
      | 4587_PRIMARY_ACCT_HOLDER_FLAG=Y                                                                                                       | 25     |
      | 4587_If FFT is eligible channel, then Y(422)                                                                                          | 25     |
      | 4587_If FCC is eligible channel, then Y(423)                                                                                          | 25     |
      | 4587_If FFT is not an eligible channel then N(422)                                                                                    | 25     |
      | 4587_If FCC is not an eligible channel then N(423)                                                                                    | 25     |
      | 4587_If customer has only one or two GICs then N(426)                                                                                 | 25     |
      | 4587_If PLN_ACCT_INVSTMNT_CAT = REGISTERED, then R(466)                                                                               | 25     |
      | 4587_If PLN_ACCT_INVSTMNT_CAT! = REGISTERED then N(466)                                                                               | 25     |
      | 4587_If ASSIGNED_FA_TRANSIT is populated, then Y(671)                                                                                 | 25     |
      | 4587_If ASSIGNED_FA_TRANSIT is not populated, then N(671)                                                                             | 25     |
      | 4587_If DO_NOT_CALL_F = Y, then Y(674)                                                                                                | 25     |
      | 4587_If DO_NOT_CALL_F = N, then N(674)                                                                                                | 25     |
      | 4587_PRIMARY_ACCT_HOLDER_FLAG=Y                                                                                                       | 25     |
      | 4587_PLN_ACCT_CD_MASTER=NRS                                                                                                           | 25     |
      | 4587_PLN_ACCT_CD_MASTER=TFSA                                                                                                          | 25     |
      | 4587_PLN_ACCT_CD_MASTER=LRSP                                                                                                          | 25     |
      | 4587_PLN_ACCT_CD_MASTER=RLSP                                                                                                          | 25     |
      | 4587_PLN_ACCT_CD_MASTER=RRSP                                                                                                          | 25     |
      | 4587_PLN_ACCT_DLR=BNS                                                                                                                 | 25     |
      | 4587_PLN_ACCT_DLR=SSI                                                                                                                 | 25     |
      | 4587_INDV_TTL_NM is NULL                                                                                                            | 25     |


  @GICRenewalEmail @GICRenewalSOL_Negative_TestData_DualAccounts_4587 @4587 @SOL @ET14061
  Scenario Outline: GIC Renewal 4587 SOL Dual Accounts test data for positive test cases
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
      | Test cases                                           | MAT_DT |
      | 4587_N_PRIM_CNTRY_CD!  = CA                                      | 25     |
      | 4587_N_PRIM_CNTRY_CD = NULL                                      | 25     |
      | 4587_N_CUST_TP_CD != PSNL                                        | 25     |
      | 4587_N_CUST_TP_CD =  NULL                                        | 25     |
      | 4587_N_CUST_AGEless than 18                                      | 25     |
      | 4587_N_CUST_AGE Equal to NULL                                    | 25     |
      | 4587_N_Deceased_F=Y                                              | 25     |
      | 4587_N_Deceased_F = NULL                                         | 25     |
      | 4587_N_LANG_CD = K                                               | 25     |
      | 4587_N_LANG_CD = NE                                              | 25     |
      | 4587_N_LANG_CD = NULL                                            | 25     |
      | 4587_N_MRKTBLE_F = N                                             | 25     |
      | 4587_N_MRKTBLE_F = NULL                                          | 25     |
      | 4587_N_PRIM_EMAIL_ADDR IS  NULL                                  | 25     |
      | 4587_N_PRIM_EMAIL_ADDR IS  BLANK                                 | 25     |
      | 4587_N_INDV_FRST_NM is BLANK                                     | 25     |
      | 4587_N_INDV_FRST_NM is NULL                                      | 25     |
      | 4587_N_INDV_LAST_NM is NULL                                      | 25     |
      | 4587_N_INDV_LAST_NM is blank                                     | 25     |
      | 4587_N_GIVEN_NAME is blank                                       | 25     |
      | 4587_N_GIVEN_NAME is NULL                                        | 25     |
      | 4587_N_MC_ELIG_F != Y                                            | 25     |
      | 4587_N_MC_ELIG_F=NULL                                            | 25     |
      | 4587_N_SOL_LAST_LOGIN_DT  NOT within last 6 months               | 25     |
      | 4587_N_MOB_LAST_LOGIN_DT  NOT within last 6 months               | 25     |
      | 4587_N_SOL_LAST_LOGIN_DT  NULL                                   | 25     |
      | 4587_N_MOB_LAST_LOGIN_DT  NULL                                   | 25     |
      | 4587_N_PRIM_ADDR_LINE_1 is NULL                                  | 25     |
      | 4587_N_PRIM_CITY_NM is NULL                                      | 25     |
      | 4587_N_PRIM_PROV_CD is NULL                                      | 25     |
      | 4587_N_PRIM_POST_CD is NULL                                      | 25     |
      | 4587_N_ASSIGNED_FA_TRANIST is NULL ,serv_trnst_num=NULL          | 25     |
      | 4587_N_SRC_SYS_PRD_CD=01                                         | 25     |
      | 4587_N_SRC_SYS_PRD_CD is NULL                                    | 25     |
      | 4587_N_PRD_CD_MASTER=NULL                                        | 25     |
      | 4587_N_PRD_CD_MASTER is blank                                    | 25     |
      | 4587_N_PRD_CD_MASTER=ROC                                         | 25     |
      | 4587_N_PRD_ACCT_STAT_CD!=A                                       | 25     |
      | 4587_N_PRD_ACCT_STAT_CD=NULL                                     | 25     |
      | 4587_N_PLN_ACCT_CD_MASTER=RDSP                                   | 25     |
      | 4587_N_PLN_ACCT_CD_MASTER=NULL                                   | 25     |
      | 4587_N_CRNT_BAL_AMT<$500                                         | 25     |
      | 4587_N_MAT_DT< CURRENT MONTH+2 MONTHS                            | 25     |
      | 4587_N_MAT_DT=NULL                                               | 25     |
      | 4587_N_SRC_ACCT_STAT_CD=Not Active                               | 25     |
      | 4587_N_SRC_ACCT_STAT_CD=NULL                                     | 25     |
      | 4587_N_PRIMARY_ACCT_HOLDER_FLAG=N                                | 25     |
      | 4587_N_PRIMARY_ACCT_HOLDER_FLAG=NULL                             | 25     |
      | 4587_N_PRD_CD_MASTER=CT                                          | 25     |
      | 4587_N_PRD_CD_MASTER=CU                                          | 25     |
      | 4587_N_PRD_CD_MASTER=CV                                          | 25     |
      | 4587_N_PRD_CD_MASTER=CTI                                         | 25     |
      | 4587_N_PRD_CD_MASTER=CUI                                         | 25     |
      | 4587_N_PRD_CD_MASTER=CVI                                         | 25     |
      | 4587_N_PLN_ACCT_CD_MASTER = RESP                                 | 25     |
      | 4587_N_PLN_ACCT_CD_MASTER = RRIF                                 | 25     |
      | 4587_N_PRD_CD_MASTER=TU                                          | 25     |
      | 4587_N_PRD_CD_MASTER=TUI                                         | 25     |
      | 4587_N_PRD_CD_MASTER=ACC                                         | 25     |
      | 4587_N_PRD_CD_MASTER=FLE                                         | 25     |
      | 4587_N_PRD_CD_MASTER=UTL                                         | 25     |
      | 4587_N_IN_TRUST_FOR_IND_CD=1                                     | 25     |
      | 4587_N_PLN_OWNERSHIP_CD=2                                        | 25     |
      | 4587_N_PLN_OWNERSHIP_CD=3                                        | 25     |
      | 4587_N_ACCT_SUBSYS_ID!=UF                                        | 25     |
      | 4587_N_ACCT_SUBSYS_ID=NULL                                       | 25     |
      | 4587_N_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=$100K | 25     |
      | 4587_N_PLN_ACCT_CD_MASTER!=(NRS,TFSA,LRSP,RLSP,RRSP) | 25     |
      | 4587_N_PLN_ACCT_CD_MASTER=NULL                       | 25     |
      | 4587_N_PLN_ACCT_DLR! = (BNS,SSI)                     | 25     |
      | 4587_N_PLN_ACCT_DLR! = NULL                          | 25     |

  @GICRenewalSOL @GICRenewalSOL_NegativeMATDT_TestData_4587 @4587 @SOL @ET14061
  Scenario Outline: GIC Renewal 4587 ET14061 SOL Create test data when MAT date is < current month + 2 months
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
      | 4587_N_MAT_DT< CURRENT MONTH+2 MONTHS | 23     |


  @GICRenewalSOL @GICRenewalSOL_NegativeMatDate_TestData_4587 @4587 @SB @ET14061
  Scenario Outline: GIC Renewal 4587 ET14061 SOL Create test data when MAT date is NULL
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
      | 4587_N_MAT_DT=NULL |


  @GICRenewalEmailDualAcc @GICRenewalSOThreeAccounts_TestData_4587 @4587 @SOL @ET14061
  Scenario Outline: GIC Renewal 4587 SOL Dual Accounts test data for positive test cases
    Given load data from "GIC_SOL" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts with gics
    And  write Scotia card Number into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
    When  write certificate number into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts with gics
    And  write MATURITY_DATE "<MAT_DT>" value into sheet "ACCT_DIM" for "<Test cases>"
    And write maturity date "<MAT_DT_Dual_Account>" for dual accounts into "ACCT_DIM" sheet for "<Testcases>" having "3" accounts with gics
    Then insert customer account details in "ACCT_DIM" table having "3" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts

    Examples:
      | Test cases                                                                                                                                  | MAT_DT | MAT_DT_Dual_Account |
      | 4587_multiple GICs then prioritised based on earliest mat_dt                                                                                | 05     | 10                  |
      | 4587_multiple GICs then prioritised based on highest maturtiy amount                                                                        | 05     | 05                  |
      | 4587_multiple GICs then prioritised based on  lowest certficate number                                                                      | 05     | 05                  |
      | 4587_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>$100K                                                                              | 05     | 05                  |
      | 4587_GDD_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is equal to calendar day 1  of the particular month            | 01     | 01                  |
      | 4587_GDD_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is in between calendar day 1 and 7  of the particular month    | 05     | 05                  |
      | 4587_GDD_ SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is equal to calendar day 7  of the particular month           | 07     | 07                  |
      | 4587_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is equal to calendar day 8  of the particular month            | 08     | 08                  |
      | 4587_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  &&  MAT_DT is in between calendar day 8 and 14  of the particular month  | 10     | 10                  |
      | 4587_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is equal to calendar day 14  of the particular month           | 14     | 14                  |
      | 4587_GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is equal to calendar day 15  of the particular month           | 15     | 15                  |
      | 4587_GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  &&  MAT_DT is in between calendar day 15 and 22  of the particular month | 20     | 20                  |
      | 4587_ GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is equal to calendar day 22  of the particular month          | 22     | 22                  |
      | 4587_GGG_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is equal to calendar day 23  of the particular month           | 23     | 23                  |
      | 4587_GGG_ SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is greater than calendar day 23  of the particular month      | 26     | 26                  |
      | 4587_N_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<$100K                                                                            | 05     | 05                  |
      | 4587_If PLN_ACCT_INVSTMNT_CAT = REGISTERED, then R in multiple GICs for second GIC(550)                                                     | 05     | 05                  |
      | 4587_If PLN_ACCT_INVSTMNT_CAT! = REGISTERED then N in multiple GICs for second GIC(550)                                                     | 05     | 05                  |


  @GICRenewalEmailDualAcc @GICRenewalSOLMULTIACCOUNTS_TestData_4587 @4587 @SOL @ET14061
  Scenario Outline: GIC Renewal 4587 SOL Dual Accounts test data for positive test cases
    Given load data from "GIC_SOL" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Testcases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Testcases>"
    Then insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Testcases>" having "4" accounts with gics
    And  write Scotia card Number into sheet "ACCT_DIM" for "<Testcases>" having "4" accounts
    And  write certificate number into sheet "ACCT_DIM" for "<Testcases>" having "4" accounts with gics
    And  write MATURITY_DATE "<MAT_DT>" value into sheet "ACCT_DIM" for "<Testcases>"
    And write maturity date "<MAT_DT_Dual_Account>" for dual accounts into "ACCT_DIM" sheet for "<Testcases>" having "4" accounts with gics
    Then insert customer account details in "ACCT_DIM" table having "4" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Testcases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts

    Examples:
      | Testcases                                         | MAT_DT | MAT_DT_Dual_Account |
      | 4587_If customer has more than 2 GICs then Y(426) | 23     | 23                  |

  @GICRenewalEmailDualAcc @GICRenewalSOLMULTIACCOUNTS_SCD_TestData_4587 @4587 @SOL @ET14061
  Scenario Outline: GIC Renewal 4587 SOL Dual Accounts test data for positive test cases
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
      | 4587_Account has multiple scotia cards then one with max Account_odt is selected(372) | 25     |