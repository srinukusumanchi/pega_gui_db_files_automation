@GICRENEWAL_SB_1210
Feature: Test Data Creation For GIC Renewal Sales Builder Channel


#  As part of D2D Early Engagement Program, this welcome message will target new and existing customers
#  to introduce them to their new D2D account / Scotiabank.
#  It also include a test of the target population who are NEW TO BANK based on Customer relationship date within the last 7 days

  @GICRenewalSB @GICRenewalSB_Positive_TestData_1210 @1210 @SB @ET14061
  Scenario Outline: GIC Renewal ET14061 SB Create test data for positive test cases for 1210
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
      | Test cases                                                                | MAT_DT |
#      | 1210_ISSUE =Renewal Group=Investments                                     | 24     |
#      | 1210_Primary Country Cd =CA                                               | 24     |
#      | 1210_CUST_TP_CD= PSNL                                                     | 24     |
#      | 1210_CUST_AGE=18                                                          | 24     |
#      | 1210_CUST_AGE>18                                                          | 24     |
#      | 1210_MRKTBLE_F=Y                                                          | 24     |
#      | 1210_Deceased_F=N                                                         | 24     |
#      | 1210_LANG_CD = E                                                          | 24     |
#      | 1210_LANG_CD = EN                                                         | 24     |
#      | 1210_LANG_CD = F                                                          | 24     |
#      | 1210_LANG_CD = FR                                                         | 24     |
#      | 1210_LANG_CD_small case = e                                               | 24     |
#      | 1210_LANG_CD_small case = en                                              | 24     |
#      | 1210_LANG_CD_small case = f                                               | 24     |
#      | 1210_LANG_CD_small case = fr                                              | 24     |
#      | 1210_GIVEN_NAME                                                           | 24     |
#      | 1210_INDV_FRST_NM != NULL                                                 | 24     |
#      | 1210_INDV_LAST_NM!=NULL                                                   | 24     |
#      | 1210_SRC_SYS_PRD_CD!=NULL                                                 | 24     |
#      | 1210_PRD_CD_MASTER!=NULL                                                  | 24     |
#      | 1210_PRD_CD_MASTER!=BLANK                                                 | 24     |
      | 1210_PRD_CD_MASTER=ACC                                                    | 24     |
#      | 1210_PRD_CD_MASTER=FLE                                                    | 24     |
#      | 1210_PRD_CD_MASTER=UTL                                                    | 24     |
#      | 1210_PRD_ACCT_STAT_CD=A                                                   | 24     |
#      | 1210_PRD_CD_MASTER=CT                                                     | 24     |
#      | 1210_PRD_CD_MASTER=CU                                                     | 24     |
#      | 1210_PRD_CD_MASTER=CV                                                     | 24     |
#      | 1210_PRD_CD_MASTER=TU                                                     | 24     |
#      | 1210_PRD_CD_MASTER=CTI                                                    | 24     |
#      | 1210_PRD_CD_MASTER=CUI                                                    | 24     |
#      | 1210_PRD_CD_MASTER=CVI                                                    | 24     |
#      | 1210_PRD_CD_MASTER=TUI                                                    | 24     |
      | 1210_PLN_ACCT_CD_MASTER=RESP                                              | 24     |
#      | 1210_PLN_ACCT_CD_MASTER=RRIF                                              | 24     |
#      | 1210_CRNT_BAL_AMT>$500                                                    | 24     |
#      | 1210_CRNT_BAL_AMT=$500                                                    | 24     |
#      | 1210_MAT_DT=Current Month+2 months                                        | 24     |
#      | 1210_SRC_ACCT_STAT_CD is Active                                           | 24     |
#      | 1210_ACCT_CRFC_NUM is not blank                                           | 24     |
#      | 1210_ACCT_CRFC_NUM!=NULL                                                  | 24     |
#      | 1210_ACCT_CRFC_NUM is alphanumeric                                        | 24     |
#      | 1210_MAT_VAL_AMT>$0                                                       | 24     |
#      | 1210_ACCT_SUBSYS_ID=UF                                                    | 24     |
#      | 1210_ACCT_NUM IS 23 DIGIT                                                 | 24     |
      | 1210_PLN_OWNERSHIP_CD=2                                                   | 24     |
      | 1210_PLN_OWNERSHIP_CD=3                                                   | 24     |
#      | 1210_ASSIGNED_FA_TRANSIT is not NULL                                      | 24     |
#      | 1210_ASSIGNED_FA_TRANSIT1 is  NULL                                        | 24     |
#      | 1210_ASSIGNED_FA_TRANSIT2 is  NULL                                        | 24     |
      | 1210_IN_TRUST_FOR_IND_CD=1                                                | 24     |
      | 1210_PRD_ACCT_CRNCY_CD=USD                                                | 24     |
#      | 1210_BUSINESSEFFECTIVEDATE!=NULL                                          | 24     |
#      | 1210_BUSINESSEFFECTIVEDATE is any past date                               | 24     |
#      | 1210_If CUST_DIM.ASSIGNED_FA_TRANSIT is not null_URL(21,510)              | 24     |
#      | 1210_ASSIGNED_FA_TRANSIT1 IS NULL THEN SERV_TRNST_NUM_URL(21,510)         | 24     |
#      | 1210_ASSIGNED_FA_TRANSIT1 IS NULL THEN CLOSEST_TRANSIT_NUM(21,510)        | 24     |
#      | 1210_LEAD NAME ENGLISH(270)                                               | 24     |
#      | 1210_LEAD NAME FRENCH(305)                                                | 24     |
#      | 1210_LEAD DESCRIPTION ENGLISH &&URL_ONE GIC(340,510)                      | 24     |
#      | 1210_LEAD DESCRIPTION FRENCH && URL_ONE GIC(390,510)                      | 24     |
#      | 1210_Lead Type English                                                    | 24     |
#      | 1210_Lead Type French                                                     | 24     |
#      | 1210_PRIMARY_ACCT_HOLDER_FLAG=Y                                           | 24     |
#      | 1210_PLN_ACCT_CD_MASTER=NRS                                               | 25     |
#      | 1210_PLN_ACCT_CD_MASTER=TFSA                                              | 25     |
#      | 1210_PLN_ACCT_CD_MASTER=LRSP                                              | 25     |
#      | 1210_PLN_ACCT_CD_MASTER=RLSP                                              | 25     |
#      | 1210_PLN_ACCT_CD_MASTER=RRSP                                              | 25     |
#      | 1210_PLN_ACCT_DLR=BNS                                                     | 25     |
#      | 1210_PLN_ACCT_DLR=SSI                                                     | 25     |
      | 1210_MAT_VAL_AMT>monthly threshold && <$100k && English Customer          | 25     |
#      | 1210_MAT_VAL_AMT>monthly threshold && <$100k && French Customer           | 25     |
      | 1210_French (fr) Customer with sum balance > 2000 and < monthly Threshold | 25     |
#      | 1210_French (fr) Customer with sum balance = 2000                         | 25     |
#      | 1210_French (fr) Customer with sum balance = monthly threshold            | 25     |
#      | 1210_French( FR ) Customer with sum balance > 2000 and < monthly Threshold  | 25     |
#      | 1210_French( FR ) Customer with sum balance = 2000                          | 25     |
#      | 1210_French( FR ) Customer with sum balance = monthly threshold             | 25     |
      | 1210_English(EN) Customer with Dealer code = SSI and sum balance > 2000   | 25     |
#      | 1210_English(EN) Customer with Dealer code in SSI and sum balance = 2000  | 25     |
      | 1210_French(FR) customer with dealer code in SSI and sum balance > 2000   | 25     |
#      | 1210_French(FR) customer with dealer code in SSI and sum balance = 2000   | 25     |
#      | 1210_English (en) Customer with Dealer code = SSI and sum balance > 2000  | 25     |
#      | 1210_English (en) Customer with Dealer code in SSI and sum balance = 2000 | 25     |
#      | 1210_French (fr) customer with dealer code in SSI and sum balance > 2000  | 25     |
#      | 1210_French (fr) customer with dealer code in SSI and sum balance = 2000  | 25     |
#      | 1210_French (f) Customer with sum balance > 2000 and < monthly Threshold  | 25     |
#      | 1210_French (f) Customer with sum balance = 2000                          | 25     |
#      | 1210_French (f) Customer with sum balance = monthly threshold             | 25     |
#      | 1210_French( F ) Customer with sum balance > 2000 and < monthly Threshold | 25     |
#      | 1210_French( F ) Customer with sum balance = 2000                         | 25     |
#      | 1210_French( F ) Customer with sum balance = monthly threshold            | 25     |


  @GICRenewalEmail @GICRenewalSB_Negative_TestData_1210 @1210 @SB @ET14061
  Scenario Outline: GIC Renewal 1210 ET14061 SB Create test data for Negative test cases
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
      | 1210_N_PRIM_CNTRY_CD!  = CA                                                          | 25     |
      | 1210_N_PRIM_CNTRY_CD = NULL                                                          | 25     |
      | 1210_N_CUST_TP_CD != PSNL                                                            | 25     |
      | 1210_N_CUST_TP_CD =  NULL                                                            | 25     |
      | 1210_N_CUST_AGEless than 18                                                          | 25     |
      | 1210_N_CUST_AGE Equal to NULL                                                        | 25     |
      | 1210_N_Deceased_F=Y                                                                  | 25     |
      | 1210_N_Deceased_F = NULL                                                             | 25     |
      | 1210_N_LANG_CD = K                                                                   | 25     |
      | 1210_N_LANG_CD = NE                                                                  | 25     |
      | 1210_N_LANG_CD = NULL                                                                | 25     |
      | 1210_N_MRKTBLE_F = N                                                                 | 25     |
      | 1210_N_MRKTBLE_F = NULL                                                              | 25     |
      | 1210_N_GIVEN_NAME is blank                                                           | 25     |
      | 1210_N_GIVEN_NAME is NULL                                                            | 25     |
      | 1210_N_PRD_CD_MASTER=NULL                                                            | 25     |
      | 1210_N_PRD_CD_MASTER is blank                                                        | 25     |
      | 1210_N_PRD_CD_MASTER=ROC                                                             | 25     |
      | 1210_N_PRD_ACCT_STAT_CD!=A                                                           | 25     |
      | 1210_N_PRD_ACCT_STAT_CD=NULL                                                         | 25     |
      | 1210_N_PLN_ACCT_CD_MASTER=RDSP                                                       | 25     |
      | 1210_N_PLN_ACCT_CD_MASTER=NULL                                                       | 25     |
      | 1210_N_SRC_ACCT_STAT_CD=Not Active                                                   | 25     |
      | 1210_N_SRC_ACCT_STAT_CD=NULL                                                         | 25     |
      | 1210_N_ACCT_SUBSYS_ID!=UF                                                            | 25     |
      | 1210_N_ACCT_SUBSYS_ID=NULL                                                           | 25     |
      | 1210_N_PLN_OWNERSHIP_CD!= 2 and 3                                                    | 25     |
      | 1210_N_ASSIGNED_FA_TRANIST is NULL ,serv_trnst_num=NULL and CLOSEST_TRANSIT_NUM=NULL | 25     |
      | 1210_N_IN_TRUST_FOR_IND_CD=0                                                         | 25     |
      | 1210_N_PRD_ACCT_CRNCY_CD!=USD                                                        | 25     |
      | 1210_N_PRD_ACCT_CRNCY_CD=NULL                                                        | 25     |
      | 1210_N_BUSINESSEFFECTIVEDATE=NULL                                                    | 25     |
      | 1210_N_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>$100K                     | 25     |
      | 1210_N_PRIMARY_ACCT_HOLDER_FLAG=NULL                                                 | 25     |
      | 1210_N_PRIMARY_ACCT_HOLDER_FLAG=N                                                    | 25     |
      | 1210_N_crnt_bal_amt<500                                                              | 25     |
      | 1210_N_No Special GICs - English customer                                            | 25     |
      | 1210_N_No Special GICs - French Customer                                             | 25     |
      | 1210_N_Regular GIC with sum balance < monthly Threshold - English customer           | 25     |
      | 1210_N_English Customer with Dealer code in SSI and sum balance < 2000               | 25     |
      | 1210_N_English Customer with Dealer code in BNS and sum balance > 2000               | 25     |
      | 1210_N_French customer with dealer code in SSI and sum balance < 2000                | 25     |
      | 1210_N_French Customer with sum balance < 2000 and < monthly Threshold               | 25     |


  @GICRenewalSB @GICRenewalSalesBuilder_NegativeMATDT_TestData_1210 @1210 @SB @ET14061
  Scenario Outline: GIC Renewal 1210 ET14061 SB Create test data when MAT date is < current month + 2 months
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
      | 1210_N_MAT_DT< CURRENT MONTH+2 MONTHS | 25     |

  @GICRenewalEmail @GICRenewalSalesBuilder_NegativeMatDate_TestData_1210 @1210 @SB @ET14061
  Scenario Outline: GIC Renewal 1210 ET14061 SB Create test data when MAT date is NULL
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
      | 1210_N_MAT_DT=NULL |


  @GICRenewalEmailDualAcc @GICRenewalSalesBuilderDualAcc_TestData_1210 @1210 @Email @ET14061
  Scenario Outline: GIC Renewal 1210 SB Dual Accounts test data for positive test cases
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
      | 1210_multiple GICs then prioritised based on earliest mat_dt                                                                                | 07     | 12                  |
      | 1210_multiple GICs then prioritised based on highest maturtiy amount                                                                        | 12     | 12                  |
      | 1210_multiple GICs then prioritised based on  lowest certficate number                                                                      | 12     | 12                  |
      | 1210_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<$100K                                                                              | 23     | 23                  |
      | 1210_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=$100K                                                                              | 23     | 23                  |
      | 1210_GDD_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is equal to calendar day 1  of the particular month            | 01     | 01                  |
      | 1210_GDD_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is in between calendar day 1 and 7  of the particular month    | 05     | 05                  |
      | 1210_GDD_ SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is equal to calendar day 7  of the particular month           | 07     | 07                  |
      | 1210_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is equal to calendar day 8  of the particular month            | 08     | 08                  |
      | 1210_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  &&  MAT_DT is in between calendar day 8 and 14  of the particular month  | 10     | 10                  |
      | 1210_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is equal to calendar day 14  of the particular month           | 14     | 14                  |
      | 1210_GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is equal to calendar day 15  of the particular month           | 15     | 15                  |
      | 1210_GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  &&  MAT_DT is in between calendar day 15 and 22  of the particular month | 18     | 18                  |
      | 1210_ GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is equal to calendar day 22  of the particular month          | 22     | 22                  |
      | 1210_GGG_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  &&MAT_DT is equal to calendar day 23  of the particular month            | 23     | 23                  |
      | 1210_GGG_ SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is greater than calendar day 23  of the particular month      | 25     | 25                  |
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
      | 1210_GGG_ SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  && MAT_DT is greater than calendar day 23  of the particular month      | 25     | 25                  |
      | 1210_URL VALIDATION_multiple gics                                                                                                           | 24     | 24                  |
      | 1210_LEAD DESCRIPTION ENGLISH && URL_multiple GICs(340,510)                                                                                 | 25     | 25                  |
      | 1210_LEAD DESCRIPTION FRENCH && URL_multiple GICS(390,510)                                                                                  | 26     | 26                  |
      | 1210_English customer with Sum Certificate balance > 2000 and one of the eligible GIC account is SSI dealer(multiple eligible GICs)         | 22     | 22                  |
      | 1210_French Customer with Sum balance > 2000 and one of the eligible GIC account is SSI dealer(multiple eligible GICs)                      | 22     | 22                  |
      | 1210_N_English customer with Sum Certificate balance < 2000 and one of the eligible GIC account is SSI dealer(multiple eligible GICs)       | 22     | 22                  |
      | 1210_N_English customer with Sum Certificate balance > 2000 and all of the eligible GIC account is BNS dealers(multiple eligible GICs)      | 22     | 22                  |
      | 1210_N_French customer with Sum Certificate balance < 2000 and one of the eligible GIC account is SSI dealer(multiple eligible GICs)        | 22     | 22                  |
