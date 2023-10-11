@GIC_1210_Testdata
Feature: Test Data Creation For GIC Renewal Email Channel

  @GICRenewalEmail @GICRenewalEmail_Positive_TestData_1210 @1210 @Email @ET14061
  Scenario Outline: GIC Renewal ET14061 Email Create test data for positive test cases for 1210
    Given load data from "GIC_EML" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    And  write MATURITY_DATE "<MAT_DT>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write certificate number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                    | MAT_DT |
      | 1210_CUST_AGE=18              | 25     |
      | 1210_LANG_CD=E                | 25     |
      | 1210_LANG_CD=EN               | 25     |
      | 1210_LANG_CD=F                | 25     |
      | 1210_LANG_CD=FR               | 25     |
      | 1210_LANG_CD = e              | 25     |
      | 1210_LANG_CD = en             | 25     |
      | 1210_LANG_CD = f              | 25     |
      | 1210_LANG_CD = fr             | 25     |
      | 1210_DO_NOT_EMAIL_F=Y         | 25     |
      | 1210_DO_NOT_EMAIL_F=NULL      | 25     |
      | 1210_SRC_SYS_PRD_CD=NRS       | 25     |
      | 1210_SRC_SYS_PRD_CD=TFSSB     | 25     |
      | 1210_SRC_SYS_PRD_CD=RRSSB     | 25     |
      | 1210_SRC_SYS_PRD_CD=NRSPR     | 25     |
      | 1210_SRC_SYS_PRD_CD=TFS       | 25     |
      | 1210_SRC_SYS_PRD_CD=RRS       | 25     |
      | 1210_CRNT_BAL_AMT=$500        | 25     |
      | 1210_CASL_CONSENT_F=Y         | 25     |
      | 1210_CASL_CONSENT_F=N         | 25     |
      | 1210_PLN_ACCT_CD_MASTER=NRS   | 25     |
      | 1210_PLN_ACCT_CD_MASTER=TFSA  | 25     |
      | 1210_PLN_ACCT_CD_MASTER=LRSP  | 25     |
      | 1210_PLN_ACCT_CD_MASTER=RLSP  | 25     |
      | 1210_PLN_ACCT_CD_MASTER=RRSP  | 25     |
      | 1210_PLN_ACCT_DLR=BNS         | 25     |
      | 1210_PLN_ACCT_DLR=SSI         | 25     |
      | 1210_INDV_TTL_NM!=NULL/BLANK  | 25     |
      | 1210_INDV_LAST_NM!=NULL/BLANK | 25     |


  @GICRenewalEmail @GICRenewalEmail_Negative_TestData_1210 @1210 @Email @ET14061
  Scenario Outline: GIC Renewal 1210 ET14061 Email Create test data for Negative test cases
    Given load data from "GIC_EML" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    And  write MATURITY_DATE "<MAT_DT>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write certificate number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                                       | MAT_DT |
      | 1210_N_PRIM_CNTRY_CD!  = CA                                      | 25     |
      | 1210_N_PRIM_CNTRY_CD = NULL                                      | 25     |
      | 1210_N_CUST_TP_CD != PSNL                                        | 25     |
      | 1210_N_CUST_TP_CD =  NULL                                        | 25     |
      | 1210_N_CUST_AGEless than 18                                      | 25     |
      | 1210_N_CUST_AGE Equal to NULL                                    | 25     |
      | 1210_N_Deceased_F=Y                                              | 25     |
      | 1210_N_Deceased_F = NULL                                         | 25     |
      | 1210_N_LANG_CD = K                                               | 25     |
      | 1210_N_LANG_CD = NE                                              | 25     |
      | 1210_N_LANG_CD = NULL                                            | 25     |
      | 1210_N_MRKTBLE_F = N                                             | 25     |
      | 1210_N_MRKTBLE_F = NULL                                          | 25     |
      | 1210_N_PRIM_EMAIL_ADDR IS  NULL                                  | 25     |
      | 1210_N_PRIM_EMAIL_ADDR IS  BLANK                                 | 25     |
      | 1210_N_INDV_FRST_NM is BLANK                                     | 25     |
      | 1210_N_INDV_FRST_NM is NULL                                      | 25     |
      | 1210_N_INDV_LAST_NM=NULL                                         | 25     |
      | 1210_N_INDV_LAST_NM=BLANK                                        | 25     |
      | 1210_N_VLD_EMAIL_F=N                                             | 25     |
      | 1210_N_VLD_EMAIL_F=NULL                                          | 25     |
      | 1210_N_SRC_SYS_PRD_CD=01                                         | 25     |
      | 1210_N_SRC_SYS_PRD_CD is NULL                                    | 25     |
      | 1210_N_PRD_CD_MASTER=NULL                                        | 25     |
      | 1210_N_PRD_CD_MASTER is blank                                    | 25     |
      | 1210_N_PRD_CD_MASTER=ROC                                         | 25     |
      | 1210_N_PRD_ACCT_STAT_CD!=A                                       | 25     |
      | 1210_N_PRD_ACCT_STAT_CD=NULL                                     | 25     |
      | 1210_N_PLN_ACCT_CD_MASTER=RDSP                                   | 25     |
      | 1210_N_SRC_ACCT_STAT_CD=Not Active                               | 25     |
      | 1210_N_SRC_ACCT_STAT_CD=NULL                                     | 25     |
      | 1210_N_ACCT_SUBSYS_ID!=UF                                        | 25     |
      | 1210_N_ACCT_SUBSYS_ID=NULL                                       | 25     |
      | 1210_N_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>$100K | 25     |
      | 1210_N_PRIMARY_ACCT_HOLDER_FLAG=N                                | 25     |
      | 1210_N_PRIMARY_ACCT_HOLDER_FLAG=NULL                             | 25     |
      | 1210_N_PRD_CD_MASTER=CT                                          | 25     |
      | 1210_N_PRD_CD_MASTER=CU                                          | 25     |
      | 1210_N_PRD_CD_MASTER=CV                                          | 25     |
      | 1210_N_PRD_CD_MASTER=CTI                                         | 25     |
      | 1210_N_PRD_CD_MASTER=CUI                                         | 25     |
      | 1210_N_PRD_CD_MASTER=CVI                                         | 25     |
      | 1210_N_PLN_ACCT_CD_MASTER = RESP                                 | 25     |
      | 1210_N_PLN_ACCT_CD_MASTER = RRIF                                 | 25     |
      | 1210_N_PRD_CD_MASTER=TU                                          | 25     |
      | 1210_N_PRD_CD_MASTER=TUI                                         | 25     |
      | 1210_N_prd_cd_master=ACC                                         | 25     |
      | 1210_N_prd_cd_master=FLE                                         | 25     |
      | 1210_N_prd_cd_master=UTL                                         | 25     |
      | 1210_N_CASL_CONSENT_F=NULL                                       | 25     |
      | 1210_N_PLN_OWNERSHIP_CD=2                                        | 25     |
      | 1210_N_PLN_OWNERSHIP_CD=3                                        | 25     |
      | 1210_N_IN_TRUST_FOR_IND_CD=1                                     | 25     |
      | 1210_N_CRNT_BAL_AMT<500                                          | 25     |
      | 1210_N_PLN_ACCT_CD_MASTER!=(NRS,TFSA,LRSP,RLSP,RRSP)             | 25     |
      | 1210_N_PLN_ACCT_CD_MASTER=NULL                                   | 25     |
      | 1210_N_PLN_ACCT_DLR! = (BNS,SSI)                                 | 25     |
      | 1210_N_PLN_ACCT_DLR! = NULL                                      | 25     |


  @GICRenewalEmail @GICRenewalEmail_NegativeMATDT_TestData_1210 @1210 @SB @ET14061
  Scenario Outline: GIC Renewal 1210 ET14061 Email Create test data when MAT date is < current month + 2 months
    Given load data from "GIC_EML" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    And  write negative MATURITY_DATE "<MAT_DT>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write certificate number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                            | MAT_DT |
      | 1210_N_MAT_DT< CURRENT MONTH+2 MONTHS | 27     |


  @GICRenewalEmail @GICRenewalEmail_NegativeMatDate_TestData_1210 @1210 @SB @ET14061
  Scenario Outline: GIC Renewal 1210 ET14061 Email Create test data when MAT date is NULL
    Given load data from "GIC_EML" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When write certificate number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases         |
      | 1210_N_MAT_DT=NULL |


  @GICRenewalEmailDualAcc @GICRenewalEmailDualAcc_Positive_TestData_1210 @1210 @Email @ET14061
  Scenario Outline: GIC Renewal 1210 Email Dual Accounts test data for positive test cases
    Given load data from "GIC_EML" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When  read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then  insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts with gics
    When  write certificate number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts with gics
    And   write MATURITY_DATE "<MAT_DT>" value into sheet "ACCT_DIM" for "<Test cases>"
    And   write maturity date "<MAT_DT_Dual_Account>" for dual accounts into "ACCT_DIM" sheet for "<Test cases>"
    Then  insert customer account details in "ACCT_DIM" table having "2" accounts
    When  write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When  write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When  read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then  insert customer and account details in "CUST_ACCT_RLTNP_DIM" table

    Examples:
      | Test cases                                                                                                                                                       | MAT_DT | MAT_DT_Dual_Account |
      | 1210_multiple GICs then prioritised based on earliest mat_dt                                                                                                     | 20     | 25                  |
      | 1210_multiple GICs then prioritised based on highest maturtiy amount                                                                                             | 25     | 25                  |
      | 1210_multiple GICs then prioritised based on  lowest certficate number                                                                                           | 25     | 25                  |
      | 1210_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<$100K                                                                                                   | 25     | 25                  |
      | 1210_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=$100K                                                                                                   | 25     | 25                  |
      | 1210_GDD_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is equal to calendar day 1 of the particular month && CASL_CONSENT_F = Y            | 01     | 01                  |
      | 1210_GDD_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is in between calendar day 1 and 7 of the particular month && CASL_CONSENT_F = Y    | 05     | 05                  |
      | 1210_GDD_ SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K && MAT_DT is equal to calendar day 7 of the particular month && CASL_CONSENT_F = Y            | 07     | 07                  |
      | 1210_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is equal to calendar day 8 of the particular month && CASL_CONSENT_F = Y            | 08     | 08                  |
      | 1210_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  &&  MAT_DT is in between calendar day 8 and 14 of the particular month && CASL_CONSENT_F = Y  | 10     | 10                  |
      | 1210_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is equal to calendar day 14 of the particular month && CASL_CONSENT_F = Y           | 14     | 14                  |
      | 1210_GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is equal to calendar day 15 of the particular month && CASL_CONSENT_F = Y           | 15     | 15                  |
      | 1210_GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  &&  MAT_DT is in between calendar day 15 and 22 of the particular month && CASL_CONSENT_F = Y | 20     | 20                  |
      | 1210_ GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is equal to calendar day 22 of the particular month && CASL_CONSENT_F = Y          | 22     | 22                  |
      | 1210_GGG_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  &&MAT_DT is equal to calendar day 23 of the particular month && CASL_CONSENT_F = Y            | 23     | 23                  |
      | 1210_GGG_ SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is greater than calendar day 23 of the particular month && CASL_CONSENT_F = Y      | 25     | 25                  |
      | 1210_GDD_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  && MAT_DT is equal to calendar day 1 of the particular month && CASL_CONSENT_F = Y            | 01     | 01                  |
      | 1210_GDD_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  && MAT_DT is in between calendar day 1 and 7 of the particular month && CASL_CONSENT_F = Y    | 05     | 05                  |
      | 1210_GDD_ SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  && MAT_DT is equal to calendar day 7 of the particular month && CASL_CONSENT_F = Y           | 07     | 07                  |
      | 1210_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  && MAT_DT is equal to calendar day 8 of the particular month && CASL_CONSENT_F = Y            | 08     | 08                  |
      | 1210_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  &&  MAT_DT is in between calendar day 8 and 14 of the particular month && CASL_CONSENT_F = Y  | 10     | 10                  |
      | 1210_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  && MAT_DT is equal to calendar day 14 of the particular month && CASL_CONSENT_F = Y           | 14     | 14                  |
      | 1210_GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  && MAT_DT is equal to calendar day 15 of the particular month && CASL_CONSENT_F = Y           | 15     | 15                  |
      | 1210_GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  &&  MAT_DT is in between calendar day 15 and 22 of the particular month && CASL_CONSENT_F = Y | 20     | 20                  |
      | 1210_ GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  && MAT_DT is equal to calendar day 22 of the particular month && CASL_CONSENT_F = Y          | 22     | 22                  |
      | 1210_GGG_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  &&MAT_DT is equal to calendar day 23 of the particular month && CASL_CONSENT_F = Y            | 23     | 23                  |
      | 1210_GGG_ SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  && MAT_DT is greater than calendar day 23 of the particular month && CASL_CONSENT_F = Y      | 25     | 25                  |
      | 1210_GDD_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is equal to calendar day 1 of the particular month && CASL_CONSENT_F = N            | 01     | 01                  |
      | 1210_GDD_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is in between calendar day 1 and 7 of the particular month && CASL_CONSENT_F = N    | 05     | 05                  |
      | 1210_GDD_ SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is equal to calendar day 7 of the particular month && CASL_CONSENT_F = N           | 07     | 07                  |
      | 1210_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is equal to calendar day 8 of the particular month && CASL_CONSENT_F = N            | 08     | 08                  |
      | 1210_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  &&  MAT_DT is in between calendar day 8 and 14 of the particular month && CASL_CONSENT_F = N  | 10     | 10                  |
      | 1210_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is equal to calendar day 14 of the particular month && CASL_CONSENT_F = N           | 14     | 14                  |
      | 1210_GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is equal to calendar day 15 of the particular month && CASL_CONSENT_F = N           | 15     | 15                  |
      | 1210_GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  &&  MAT_DT is in between calendar day 15 and 22 of the particular month && CASL_CONSENT_F = N | 20     | 20                  |
      | 1210_ GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is equal to calendar day 22 of the particular month && CASL_CONSENT_F = N          | 22     | 22                  |
      | 1210_GGG_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  &&MAT_DT is equal to calendar day 23 of the particular month && CASL_CONSENT_F = N            | 23     | 23                  |
      | 1210_GGG_ SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is greater than calendar day 23 of the particular month && CASL_CONSENT_F = N      | 25     | 25                  |
      | 1210_GDD_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  && MAT_DT is equal to calendar day 1 of the particular month && CASL_CONSENT_F = N            | 01     | 01                  |
      | 1210_GDD_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  && MAT_DT is in between calendar day 1 and 7 of the particular month && CASL_CONSENT_F = N    | 05     | 05                  |
      | 1210_GDD_ SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  && MAT_DT is equal to calendar day 7 of the particular month && CASL_CONSENT_F = N           | 07     | 07                  |
      | 1210_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  && MAT_DT is equal to calendar day 8 of the particular month && CASL_CONSENT_F = N            | 08     | 08                  |
      | 1210_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  &&  MAT_DT is in between calendar day 8 and 14 of the particular month && CASL_CONSENT_F = N  | 10     | 10                  |
      | 1210_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  && MAT_DT is equal to calendar day 14 of the particular month && CASL_CONSENT_F = N           | 14     | 14                  |
      | 1210_GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  && MAT_DT is equal to calendar day 15 of the particular month && CASL_CONSENT_F = N           | 15     | 15                  |
      | 1210_GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  &&  MAT_DT is in between calendar day 15 and 22 of the particular month && CASL_CONSENT_F = N | 20     | 20                  |
      | 1210_ GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  && MAT_DT is equal to calendar day 22 of the particular month && CASL_CONSENT_F = N          | 22     | 22                  |
      | 1210_GGG_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  &&MAT_DT is equal to calendar day 23 of the particular month && CASL_CONSENT_F = N            | 23     | 23                  |
      | 1210_GGG_ SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  && MAT_DT is greater than calendar day 23 of the particular month && CASL_CONSENT_F = N      | 25     | 25                  |
      | 1210_N_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>$100K                                                                                                 | 25     | 25                  |


