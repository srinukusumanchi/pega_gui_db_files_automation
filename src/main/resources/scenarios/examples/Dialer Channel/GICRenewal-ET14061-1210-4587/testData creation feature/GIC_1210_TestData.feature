Feature: Test Data Creation For GIC Renewal Dialer Channel


#  As part of D2D Early Engagement Program, this welcome message will target new and existing customers
#  to introduce them to their new D2D account / Scotiabank.
#  It also include a test of the target population who are NEW TO BANK based on Customer relationship date within the last 7 days

  @GICRenewalDialer @GICRenewalDialer_Positive_TestData_1210 @1210 @SB @ET14061
  Scenario Outline: GIC Renewal ET14061 Dialer Create test data for positive test cases for 1210
    Given load data from "GIC_DIA" excel sheet
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
      | Test cases                                           | MAT_DT |
      | ISSUE =Renewal Group=Investments                     | 25     |
      | Primary Country Cd =CA                               | 25     |
      | CUST_TP_CD= PSNL                                     | 25     |
      | CUST_AGE=18                                          | 25     |
      | CUST_AGE>18                                          | 25     |
      | MRKTBLE_F=Y                                          | 25     |
      | Deceased_F=N                                         | 25     |
      | LANG_CD=E                                            | 25     |
      | LANG_CD=EN                                           | 25     |
      | LANG_CD_small case=e                                 | 25     |
      | LANG_CD_small case=en                                | 25     |
      | GIVEN_NAME!=NULL                                     | 25     |
      | INDV_FRST_NM != NULL                                 | 25     |
      | INDV_LAST_NM!=NULL                                   | 25     |
      | INDV_TTL_NM!=NULL                                    | 25     |
      | INDV_TTL_NM=NULL                                     | 25     |
      | VLD_PH_F = Y                                         | 25     |
      | PRIM_ADDR_LINE_1!=NULL                               | 25     |
      | PRIM_CITY_NM!=NULL                                   | 25     |
      | PRIM_PROV_CD!=NULL                                   | 25     |
      | PRIM_POST_CD!=NULL                                   | 25     |
      | ASSIGNED_FA_TRANSIT is not NULL                      | 25     |
      | ASSIGNED_FA_TRANSIT is  NULL                         | 25     |
      | INDV_HOME_TEL_NUM!=NULL                              | 25     |
      | SRC_SYS_PRD_CD=NRS                                   | 25     |
      | SRC_SYS_PRD_CD=TFSSB                                 | 25     |
      | SRC_SYS_PRD_CD=RRSSB                                 | 25     |
      | SRC_SYS_PRD_CD=NRSPR                                 | 25     |
      | SRC_SYS_PRD_CD=TFS                                   | 25     |
      | SRC_SYS_PRD_CD=RRS                                   | 25     |
      | PLN_OWNERSHIP_CD != 2 or 3                           | 25     |
      | PRD_CD_MASTER!=NULL                                  | 25     |
      | PRD_CD_MASTER!=BLANK                                 | 25     |
      | PRD_ACCT_STAT_CD=A                                   | 25     |
      | CRNT_BAL_AMT>$500                                    | 25     |
      | crnt_bal_amt=500                                     | 25     |
      | MAT_DT=Current Month+2 months                        | 25     |
      | SRC_ACCT_STAT_CD is Active                           | 25     |
      | ACCT_CRFC_NUM is not blank                           | 25     |
      | ACCT_CRFC_NUM!=NULL                                  | 25     |
      | ACCT_CRFC_NUM is alphanumeric                        | 25     |
      | MAT_VAL_AMT>$0                                       | 25     |
      | ACCT_SUBSYS_ID=UF                                    | 25     |
      | ACCT_NUM IS 23 DIGIT                                 | 25     |
      | PRIMARY_ACCT_HOLDER_FLAG=Y                           | 25     |
      | If customer has only one or two GICs then N(426)     | 25     |
      | If PLN_ACCT_INVSTMNT_CAT = REGISTERED, then R(466)   | 25     |
      | If PLN_ACCT_INVSTMNT_CAT! = REGISTERED then N(466)   | 25     |
      | If ASSIGNED_FA_TRANSIT is populated, then Y(671)     | 25     |
      | If ASSIGNED_FA_TRANSIT is not populated, then N(671) | 25     |
      | If DO_NOT_CALL_F = Y, then Y(674)                    | 25     |
      | If DO_NOT_CALL_F = N, then N(674)                    | 25     |
      | INDV_GNDR_CD=Male                                    | 25     |
      | INDV_GNDR_CD=Female                                  | 25     |
      | PLN_ACCT_CD_MASTER=NRS                               | 25     |
      | PLN_ACCT_CD_MASTER=TFSA                              | 25     |
      | PLN_ACCT_CD_MASTER=LRSP                              | 25     |
      | PLN_ACCT_CD_MASTER=RLSP                              | 25     |
      | PLN_ACCT_CD_MASTER=RRSP                              | 25     |
      | PLN_ACCT_DLR = BNS                                   | 25     |


  @GICRenewalDialer @GICRenewalDialer_Negative_TestData_1210 @1210 @Email @ET14061
  Scenario Outline: GIC Renewal 1210 ET14061 Dialer Create test data for Negative test cases
    Given load data from "GIC_DIA" excel sheet
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
      | Test cases                                         | MAT_DT |
      | N_PRIM_CNTRY_CD!  = CA                             | 25     |
      | N_PRIM_CNTRY_CD = NULL                             | 25     |
      | N_CUST_TP_CD != PSNL                               | 25     |
      | N_CUST_TP_CD =  NULL                               | 25     |
      | N_CUST_AGEless than 18                             | 25     |
      | N_CUST_AGE Equal to NULL                           | 25     |
      | N_Deceased_F=Y                                     | 25     |
      | N_Deceased_F = NULL                                | 25     |
      | N_LANG_CD = K                                      | 25     |
      | N_LANG_CD = NE                                     | 25     |
      | N_LANG_CD = NULL                                   | 25     |
      | N_MRKTBLE_F = N                                    | 25     |
      | N_MRKTBLE_F = NULL                                 | 25     |
      | N_INDV_FRST_NM is BLANK                            | 25     |
      | N_INDV_FRST_NM is NULL                             | 25     |
      | N_INDV_LAST_NM is NULL                             | 25     |
      | N_INDV_LAST_NM is blank                            | 25     |
      | N_GIVEN_NAME is blank                              | 25     |
      | N_GIVEN_NAME is NULL                               | 25     |
      | N_VLD_PH_F != Y                                    | 25     |
      | N_VLD_PH_F = =NULL                                 | 25     |
      | N_PRIM_ADDR_LINE_1 is NULL                         | 25     |
      | N_PRIM_CITY_NM is NULL                             | 25     |
      | N_PRIM_PROV_CD is NULL                             | 25     |
      | N_PRIM_POST_CD is NULL                             | 25     |
      | N_ASSIGNED_FA_TRANIST is NULL ,serv_trnst_num=NULL | 25     |
      | N_PRD_CD_MASTER=NULL                               | 25     |
      | N_PRD_CD_MASTER is blank                           | 25     |
      | N_PRD_CD_MASTER=ROC                                | 25     |
      | N_PRD_ACCT_STAT_CD!=A                              | 25     |
      | N_PRD_ACCT_STAT_CD=NULL                            | 25     |
      | N_PLN_ACCT_CD_MASTER=RDSP                          | 25     |
      | N_CRNT_BAL_AMT<$500                                | 25     |
      | N_SRC_ACCT_STAT_CD=Not Active                      | 25     |
      | N_SRC_ACCT_STAT_CD=NULL                            | 25     |
      | N_ACCT_SUBSYS_ID!=UF                               | 25     |
      | N_ACCT_SUBSYS_ID=NULL                              | 25     |
      | N_PLN_OWNERSHIP_CD = 2                             | 25     |
      | N_PLN_OWNERSHIP_CD = 3                             | 25     |
      | N_PRD_CD_MASTER=CT                                 | 25     |
      | N_PRD_CD_MASTER=CU                                 | 25     |
      | N_PRD_CD_MASTER=CV                                 | 25     |
      | N_PRD_CD_MASTER=CTI                                | 25     |
      | N_PRD_CD_MASTER=CUI                                | 25     |
      | N_PRD_CD_MASTER=CVI                                | 25     |
      | N_PLN_ACCT_CD_MASTER = RESP                        | 25     |
      | N_PLN_ACCT_CD_MASTER = RRIF                        | 25     |
      | N_PRD_CD_MASTER=TU                                 | 25     |
      | N_PRD_CD_MASTER=TUI                                | 25     |
      | N_IN_TRUST_FOR_IND_CD=1                            | 25     |
      | N_INDV_TTL_NM=NULL                                 | 25     |
      | N_PLN_ACCT_CD_MASTER=NRS                           | 25     |
      | N_PLN_ACCT_CD_MASTER=TFSA                          | 25     |
      | N_PLN_ACCT_CD_MASTER=LRSP                          | 25     |
      | N_PLN_ACCT_CD_MASTER=RLSP                          | 25     |
      | N_PLN_ACCT_CD_MASTER=RRSP                          | 25     |
      | N_PLN_ACCT_DLR = BNS                               | 25     |
      | N_PLN_ACCT_DLR = SSI                               | 25     |
      | N_PRD_CD_MASTER=ACC                                | 25     |
      | N_PRD_CD_MASTER=FLE                                | 25     |
      | N_PRD_CD_MASTER=UTL                                | 25     |
      | N_lang_cd=FR                                       | 25     |
      | N_lang_cd=F                                        | 25     |
      | N_PRIMARY_ACCT_HOLDER_FLAG=N                       | 25     |
      | N_PRIMARY_ACCT_HOLDER_FLAG=NULL                    | 25     |
      | N_PLN_ACCT_DLR = SSI                               | 25     |

  @GICRenewalDialer @GICRenewalDialer_NegativeMATDT_TestData_1210 @1210 @SB @ET14061
  Scenario Outline: GIC Renewal 1210 ET14061 Dialer Create test data when MAT date is < current month + 2 months
    Given load data from "GIC_DIA" excel sheet
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
      | Test cases                       | MAT_DT |
      | N_MAT_DT< CURRENT MONTH+2 MONTHS | 25     |


  @GICRenewalEmailDualAcc @GICRenewalDialerDualAcc_Positive_TestData_1210 @1210 @Email @ET14061
  Scenario Outline: GIC Renewal 1210 Dialer Dual Accounts test data for positive test cases
    Given load data from "GIC_DIA" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts with gics
    When  write certificate number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts with gics
    And  write MATURITY_DATE "<MAT_DT>" value into sheet "ACCT_DIM" for "<Test cases>"
    And write maturity date "<MAT_DT_Dual_Account>" for dual accounts into "ACCT_DIM" sheet for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                                                                                                                                          | MAT_DT | MAT_DT_Dual_Account |
      | multiple GICs then prioritised based on earliest mat_dt                                                                                                             | 20     | 25                  |
      | multiple GICs then prioritised based on highest maturtiy amount                                                                                                     | 21     | 21                  |
      | multiple GICs then prioritised based on  lowest certficate number                                                                                                   | 20     | 20                  |
      | 1210_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>$2000 AND <monthly threshold                                                                               | 20     | 20                  |
      | 1210_GDD_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>$2000 && <monthly threshold and MAT_DT is equal to calendar day 1  of the particular month             | 01     | 01                  |
      | 1210_GDD_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>$2000 && <monthly threshold and  MAT_DT is in between calendar day 1 and 7  of the particular month    | 05     | 05                  |
      | 1210_GDD_ SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>$2000 && <monthly threshold and  MAT_DT is equal to calendar day 7  of the particular month           | 07     | 07                  |
      | 1210_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>$2000 && <monthly threshold and  MAT_DT is equal to calendar day 8  of the particular month            | 08     | 08                  |
      | 1210_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>$2000 && <monthly threshold and   MAT_DT is in between calendar day 8 and 14  of the particular month  | 10     | 10                  |
      | 1210_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>$2000 && <monthly threshold and  MAT_DT is equal to calendar day 14  of the particular month           | 14     | 14                  |
      | 1210_GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>$2000 && <monthly threshold and  MAT_DT is equal to calendar day 15  of the particular month           | 15     | 15                  |
      | 1210_GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>$2000 && <monthly threshold and   MAT_DT is in between calendar day 15 and 22  of the particular month | 20     | 20                  |
      | 1210_ GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>$2000 && <monthly threshold and  MAT_DT is equal to calendar day 22  of the particular month          | 22     | 22                  |
      | 1210_GGG_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>$2000 && <monthly threshold and MAT_DT is equal to calendar day 23  of the particular month            | 23     | 23                  |
      | 1210_GGG_ SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>$2000 && <monthly threshold and  MAT_DT is greater than calendar day 23  of the particular month      | 25     | 25                  |
      | N_1210_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<$2000                                                                                                    | 21     | 21                  |
      | N_1210_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=$2000                                                                                                    | 21     | 21                  |
      | If PLN_ACCT_INVSTMNT_CAT = REGISTERED, then R in multiple GICs(550)                                                                                                 | 21     | 21                  |
      | If PLN_ACCT_INVSTMNT_CAT! = REGISTERED then N  in multiple GICs(550)                                                                                                | 21     | 21                  |
