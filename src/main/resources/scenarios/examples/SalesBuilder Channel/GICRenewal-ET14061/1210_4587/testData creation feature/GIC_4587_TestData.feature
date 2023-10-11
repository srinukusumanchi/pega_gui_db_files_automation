@GICRENEWAL_SB_4587
Feature: Test Data Creation For GIC Renewal Sales Builder Channel


#  As part of D2D Early Engagement Program, this welcome message will target new and existing customers
#  to introduce them to their new D2D account / Scotiabank.
#  It also include a test of the target population who are NEW TO BANK based on Customer relationship date within the last 7 days

  @GICRenewalSB @GICRenewalSB_Positive_TestData_4587 @4587 @SalesBuilder @ET14061
  Scenario Outline: GIC Renewal ET14061 SalesBuilder Create test data for positive test cases for 4587
    Given load data from "GIC_SB" excel sheet
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
      | Test cases                                                               | MAT_DT |
      | 4587_ISSUE =Renewal Group=Investments                                    | 25     |
      | 4587_Primary Country Cd =CA                                              | 25     |
      | 4587_CUST_TP_CD= PSNL                                                    | 25     |
      | 4587_CUST_AGE=18                                                         | 25     |
      | 4587_CUST_AGE>18                                                         | 25     |
      | 4587_MRKTBLE_F=Y                                                         | 25     |
      | 4587_Deceased_F=N                                                        | 25     |
      | 4587_LANG_CD = E                                                         | 25     |
      | 4587_LANG_CD = EN                                                        | 25     |
      | 4587_LANG_CD = F                                                         | 25     |
      | 4587_LANG_CD = FR                                                        | 25     |
      | 4587_LANG_CD_small case = e                                              | 25     |
      | 4587_LANG_CD_small case = en                                             | 25     |
      | 4587_LANG_CD_small case = f                                              | 25     |
      | 4587_LANG_CD_small case = fr                                             | 25     |
      | 4587_GIVEN_NAME                                                          | 25     |
      | 4587_INDV_FRST_NM != NULL                                                | 25     |
      | 4587_INDV_LAST_NM!=NULL                                                  | 25     |
      | 4587_SRC_SYS_PRD_CD!=NULL                                                | 25     |
      | 4587_PRD_CD_MASTER!=NULL                                                 | 25     |
      | 4587_PRD_CD_MASTER!=BLANK                                                | 25     |
      | 4587_PRD_CD_MASTER=ACC                                                   | 25     |
      | 4587_PRD_CD_MASTER=FLE                                                   | 25     |
      | 4587_PRD_CD_MASTER=UTL                                                   | 25     |
      | 4587_PRD_ACCT_STAT_CD=A                                                  | 25     |
      | 4587_PRD_CD_MASTER=CT                                                    | 25     |
      | 4587_PRD_CD_MASTER=CU                                                    | 25     |
      | 4587_PRD_CD_MASTER=CV                                                    | 25     |
      | 4587_PRD_CD_MASTER=TU                                                    | 25     |
      | 4587_PRD_CD_MASTER=CTI                                                   | 25     |
      | 4587_PRD_CD_MASTER=CUI                                                   | 25     |
      | 4587_PRD_CD_MASTER=CVI                                                   | 25     |
      | 4587_PRD_CD_MASTER=TUI                                                   | 25     |
      | 4587_PLN_ACCT_CD_MASTER=RESP                                             | 25     |
      | 4587_PLN_ACCT_CD_MASTER=RRIF                                             | 25     |
      | 4587_CRNT_BAL_AMT>$500                                                   | 25     |
      | 4587_CRNT_BAL_AMT=$500                                                   | 25     |
      | 4587_MAT_DT=Current Month+2 months                                       | 25     |
      | 4587_SRC_ACCT_STAT_CD is Active                                          | 25     |
      | 4587_ACCT_CRFC_NUM is not blank                                          | 25     |
      | 4587_ACCT_CRFC_NUM!=NULL                                                 | 25     |
      | 4587_ACCT_CRFC_NUM is alphanumeric                                       | 25     |
      | 4587_MAT_VAL_AMT>$0                                                      | 25     |
      | 4587_ACCT_SUBSYS_ID=UF                                                   | 25     |
      | 4587_ACCT_NUM IS 23 DIGIT                                                | 25     |
      | 4587_PLN_OWNERSHIP_CD= 2                                                 | 25     |
      | 4587_PLN_OWNERSHIP_CD= 3                                                 | 25     |
      | 4587_ASSIGNED_FA_TRANSIT is not NULL                                     | 25     |
      | 4587_ASSIGNED_FA_TRANSIT1 is  NULL                                       | 25     |
      | 4587_ASSIGNED_FA_TRANSIT2 is  NULL                                       | 25     |
      | 4587_IN_TRUST_FOR_IND_CD=1                                               | 25     |
      | 4587_PRD_ACCT_CRNCY_CD=USD                                               | 25     |
      | 4587_BUSINESSEFFECTIVEDATE!=NULL                                         | 25     |
      | 4587_BUSINESSEFFECTIVEDATE is any past date                              | 25     |
      | 4587_PRIMARY_ACCT_HOLDER_FLAG=Y                                          | 25     |
      | 4587_If CUST_DIM.ASSIGNED_FA_TRANSIT is not null_URL(21,510)             | 25     |
      | 4587_ASSIGNED_FA_TRANSIT1 IS NULL THEN SERV_TRNST_NUM_URL(21,510)        | 25     |
      | 4587_ASSIGNED_FA_TRANSIT1 IS NULL THEN CLOSEST_TRANSIT_NUM(21,510)       | 25     |
      | 4587_LEAD NAME ENGLISH(270)                                              | 25     |
      | 4587_LEAD NAME FRENCH(305)                                               | 25     |
      | 4587_LEAD DESCRIPTION ENGLISH &&URL_ONE GIC(340,510)                     | 25     |
      | 4587_LEAD DESCRIPTION FRENCH && URL_ONE GIC(390,510)                     | 25     |
      | 4587_Lead Type English                                                   | 25     |
      | 4587_Lead Type French                                                    | 25     |
      | 4587_PLN_ACCT_CD_MASTER=NRS                                              | 25     |
      | 4587_PLN_ACCT_CD_MASTER=TFSA                                             | 25     |
      | 4587_PLN_ACCT_CD_MASTER=LRSP                                             | 25     |
      | 4587_PLN_ACCT_CD_MASTER=RLSP                                             | 25     |
      | 4587_PLN_ACCT_CD_MASTER=RRSP                                             | 25     |
      | 4587_PLN_ACCT_DLR=BNS                                                    | 25     |
      | 4587_PLN_ACCT_DLR=SSI                                                    | 25     |
      | 4587_English(EN) Customer with Dealer code = SSI and sum balance > 2000  | 24     |
      | 4587_French(FR) customer with dealer code in SSI and sum balance > 2000  | 24     |
      | 4587_English (en) Customer with Dealer code = SSI and sum balance > 2000 | 24     |
      | 4587_French (fr) customer with dealer code in SSI and sum balance > 2000 | 24     |
      | 4587_BAL>$100K for a regular GIC                                         | 25     |


  @GICRenewalSB @GICRenewalSB_Negative_TestData_4587 @4587 @SalesBuilder @ET14061
  Scenario Outline: GIC Renewal 4587 ET14061 SalesBuilder Create test data for Negative test cases
    Given load data from "GIC_SB" excel sheet
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
      | Test cases                                                                           | MAT_DT |
      | 4587_N_PRIM_CNTRY_CD!  = CA                                                          | 25     |
      | 4587_N_PRIM_CNTRY_CD = NULL                                                          | 25     |
      | 4587_N_CUST_TP_CD != PSNL                                                            | 25     |
      | 4587_N_CUST_TP_CD =  NULL                                                            | 25     |
      | 4587_N_CUST_AGEless than 18                                                          | 25     |
      | 4587_N_CUST_AGE Equal to NULL                                                        | 25     |
      | 4587_N_Deceased_F=Y                                                                  | 25     |
      | 4587_N_Deceased_F = NULL                                                             | 25     |
      | 4587_N_LANG_CD = K                                                                   | 25     |
      | 4587_N_LANG_CD = NE                                                                  | 25     |
      | 4587_N_LANG_CD = NULL                                                                | 25     |
      | 4587_N_MRKTBLE_F = N                                                                 | 25     |
      | 4587_N_MRKTBLE_F = NULL                                                              | 25     |
      | 4587_N_GIVEN_NAME is blank                                                           | 25     |
      | 4587_N_GIVEN_NAME is NULL                                                            | 25     |
      | 4587_N_PRD_CD_MASTER=NULL                                                            | 25     |
      | 4587_N_PRD_CD_MASTER is blank                                                        | 25     |
      | 4587_N_PRD_CD_MASTER=ROC                                                             | 25     |
      | 4587_N_PRD_ACCT_STAT_CD!=A                                                           | 25     |
      | 4587_N_PRD_ACCT_STAT_CD=NULL                                                         | 25     |
      | 4587_N_PLN_ACCT_CD_MASTER=RDSP                                                       | 25     |
      | 4587_N_SRC_ACCT_STAT_CD=Not Active                                                   | 25     |
      | 4587_N_SRC_ACCT_STAT_CD=NULL                                                         | 25     |
      | 4587_N_ACCT_SUBSYS_ID!=UF                                                            | 25     |
      | 4587_N_ACCT_SUBSYS_ID=NULL                                                           | 25     |
      | 4587_N_ASSIGNED_FA_TRANIST is NULL ,serv_trnst_num=NULL and CLOSEST_TRANSIT_NUM=NULL | 25     |
      | 4587_N_BUSINESSEFFECTIVEDATE=NULL                                                    | 25     |
      | 4587_N_PRIMARY_ACCT_HOLDER_FLAG=N                                                    | 25     |
      | 4587_N_PRIMARY_ACCT_HOLDER_FLAG=NULL                                                 | 25     |


  @GICRenewalSB @GICRenewalSalesBuilder_NegativeMATDT_TestData_4587 @4587 @SalesBuilder @ET14061
  Scenario Outline: GIC Renewal 4587 ET14061 SalesBuilder Create test data MAT date is < current month + 2 months
    Given load data from "GIC_SB" excel sheet
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
      | 4587_N_MAT_DT< CURRENT MONTH+2 MONTHS | 25     |


  @GICRenewalEmail @GICRenewalSalesBuilder_NegativeMatDate_TestData_4587 @4587 @SB @ET14061
  Scenario Outline: GIC Renewal 4587 ET14061 Email Create test data when MAT date is NULL
    Given load data from "GIC_SB" excel sheet
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
      | 4587_N_MAT_DT=NULL |

  @GICRenewalEmailDualAcc @GICRenewalSalesBuilderDualAcc_TestData_4587 @4587 @SalesBuilder @ET14061
  Scenario Outline: GIC Renewal 4587 SalesBuilder Dual Accounts test data for positive test cases
    Given load data from "GIC_SB" excel sheet
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
      | Test cases                                                                                                                                  | MAT_DT | MAT_DT_Dual_Account |
      | 4587_multiple GICs then prioritised based on earliest mat_dt                                                                                | 18     | 25                  |
      | 4587_multiple GICs then prioritised based on highest maturtiy amount                                                                        | 20     | 20                  |
      | 4587_multiple GICs then prioritised based on  lowest certficate number                                                                      | 20     | 20                  |
      | 4587_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>$100K                                                                              | 20     | 20                  |
      | 4587_GDD_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is equal to calendar day 1  of the particular month            | 01     | 01                  |
      | 4587_GDD_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is in between calendar day 1 and 7  of the particular month    | 05     | 05                  |
      | 4587_GDD_ SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is equal to calendar day 7  of the particular month           | 07     | 07                  |
      | 4587_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is equal to calendar day 8  of the particular month            | 08     | 08                  |
      | 4587_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  &&  MAT_DT is in between calendar day 8 and 14  of the particular month  | 10     | 10                  |
      | 4587_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is equal to calendar day 14  of the particular month           | 14     | 14                  |
      | 4587_GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is equal to calendar day 15  of the particular month           | 15     | 15                  |
      | 4587_GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  &&  MAT_DT is in between calendar day 15 and 22  of the particular month | 18     | 18                  |
      | 4587_ GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is equal to calendar day 22  of the particular month          | 22     | 22                  |
      | 4587_GGG_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  &&MAT_DT is equal to calendar day 23  of the particular month            | 23     | 23                  |
      | 4587_GGG_ SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is greater than calendar day 23  of the particular month      | 26     | 26                  |
      | 4587_N_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<$100K                                                                            | 26     | 26                  |
      | 4587_N_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=$100K                                                                            | 26     | 26                  |
      | 4587_LEAD DESCRIPTION ENGLISH && URL_multiple GICs(340,510)                                                                                 | 26     | 26                  |
      | 4587_LEAD DESCRIPTION FRENCH && URL_multiple GICS(390,510)                                                                                  | 26     | 26                  |
      | 4587_English customer with Sum Certificate balance > 2000 and one of the eligible GIC account is SSI dealer(multiple eligible GICs)         | 25     | 25                  |
      | 4587_French Customer with Sum balance > 2000 and one of the eligible GIC account is SSI dealer(multiple eligible GICs)                      | 25     | 25                  |




