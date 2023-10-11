Feature: Validation for GIC-1210

  @GICRenewalEmail @GICRenewalEmail_Positive_Validation_1210 @1210 @Email @ET14061
  Scenario Outline: GIC-1210_ET14061_EMAIL Validate offer details against IH for Positive test cases
    Given load data from "GIC_EML" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And get ddr records data from ddr table
    And get gic wave expiry date from ddr records
    And get gic wave start date from ddr records
    And get gic campaign wave number from ddr records
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate gic email offer details against IH
    Examples:
      | Test cases                    |
#      | 1210_CUST_AGE=18                                                                                                                                                 |
#      | 1210_LANG_CD=E                                                                                                                                                   |
#      | 1210_LANG_CD=EN                                                                                                                                                  |
#      | 1210_LANG_CD=F                                                                                                                                                   |
#      | 1210_LANG_CD=FR                                                                                                                                                  |
#      | 1210_LANG_CD = e                                                                                                                                                 |
#      | 1210_LANG_CD = en                                                                                                                                                |
#      | 1210_LANG_CD = f                                                                                                                                                 |
#      | 1210_LANG_CD = fr                                                                                                                                                |
#      | 1210_DO_NOT_EMAIL_F=Y                                                                                                                                            |
#      | 1210_DO_NOT_EMAIL_F=NULL                                                                                                                                         |
#      | 1210_SRC_SYS_PRD_CD=NRS                                                                                                                                          |
#      | 1210_SRC_SYS_PRD_CD=TFSSB                                                                                                                                        |
#      | 1210_SRC_SYS_PRD_CD=RRSSB                                                                                                                                        |
#      | 1210_SRC_SYS_PRD_CD=NRSPR                                                                                                                                        |
#      | 1210_SRC_SYS_PRD_CD=TFS                                                                                                                                          |
#      | 1210_SRC_SYS_PRD_CD=RRS                                                                                                                                          |
#      | 1210_CRNT_BAL_AMT=$500                                                                                                                                           |
#      | 1210_CASL_CONSENT_F=Y                                                                                                                                            |
#      | 1210_CASL_CONSENT_F=N                                                                                                                                            |
#      | 1210_multiple GICs then prioritised based on earliest mat_dt                                                                                                     |
#      | 1210_multiple GICs then prioritised based on highest maturtiy amount                                                                                             |
#      | 1210_multiple GICs then prioritised based on  lowest certficate number                                                                                           |
#      | 1210_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<$100K                                                                                                   |
#      | 1210_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=$100K                                                                                                   |
#      | 1210_GDD_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is equal to calendar day 1 of the particular month && CASL_CONSENT_F = Y            |
#      | 1210_GDD_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is in between calendar day 1 and 7 of the particular month && CASL_CONSENT_F = Y    |
#      | 1210_GDD_ SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K && MAT_DT is equal to calendar day 7 of the particular month && CASL_CONSENT_F = Y            |
#      | 1210_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is equal to calendar day 8 of the particular month && CASL_CONSENT_F = Y            |
#      | 1210_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  &&  MAT_DT is in between calendar day 8 and 14 of the particular month && CASL_CONSENT_F = Y  |
#      | 1210_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is equal to calendar day 14 of the particular month && CASL_CONSENT_F = Y           |
#      | 1210_GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is equal to calendar day 15 of the particular month && CASL_CONSENT_F = Y           |
#      | 1210_GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  &&  MAT_DT is in between calendar day 15 and 22 of the particular month && CASL_CONSENT_F = Y |
#      | 1210_ GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is equal to calendar day 22 of the particular month && CASL_CONSENT_F = Y          |
#      | 1210_GGG_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  &&MAT_DT is equal to calendar day 23 of the particular month && CASL_CONSENT_F = Y            |
#      | 1210_GGG_ SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is greater than calendar day 23 of the particular month && CASL_CONSENT_F = Y      |
#      | 1210_GDD_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  && MAT_DT is equal to calendar day 1 of the particular month && CASL_CONSENT_F = Y            |
#      | 1210_GDD_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  && MAT_DT is in between calendar day 1 and 7 of the particular month && CASL_CONSENT_F = Y    |
#      | 1210_GDD_ SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  && MAT_DT is equal to calendar day 7 of the particular month && CASL_CONSENT_F = Y           |
#      | 1210_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  && MAT_DT is equal to calendar day 8 of the particular month && CASL_CONSENT_F = Y            |
#      | 1210_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  &&  MAT_DT is in between calendar day 8 and 14 of the particular month && CASL_CONSENT_F = Y  |
#      | 1210_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  && MAT_DT is equal to calendar day 14 of the particular month && CASL_CONSENT_F = Y           |
#      | 1210_GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  && MAT_DT is equal to calendar day 15 of the particular month && CASL_CONSENT_F = Y           |
#      | 1210_GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  &&  MAT_DT is in between calendar day 15 and 22 of the particular month && CASL_CONSENT_F = Y |
#      | 1210_ GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  && MAT_DT is equal to calendar day 22 of the particular month && CASL_CONSENT_F = Y          |
#      | 1210_GGG_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  &&MAT_DT is equal to calendar day 23 of the particular month && CASL_CONSENT_F = Y            |
#      | 1210_GGG_ SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  && MAT_DT is greater than calendar day 23 of the particular month && CASL_CONSENT_F = Y      |
#      | 1210_GDD_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is equal to calendar day 1 of the particular month && CASL_CONSENT_F = N            |
#      | 1210_GDD_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is in between calendar day 1 and 7 of the particular month && CASL_CONSENT_F = N    |
#      | 1210_GDD_ SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is equal to calendar day 7 of the particular month && CASL_CONSENT_F = N           |
#      | 1210_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is equal to calendar day 8 of the particular month && CASL_CONSENT_F = N            |
#      | 1210_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  &&  MAT_DT is in between calendar day 8 and 14 of the particular month && CASL_CONSENT_F = N  |
#      | 1210_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is equal to calendar day 14 of the particular month && CASL_CONSENT_F = N           |
#      | 1210_GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is equal to calendar day 15 of the particular month && CASL_CONSENT_F = N           |
#      | 1210_GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  &&  MAT_DT is in between calendar day 15 and 22 of the particular month && CASL_CONSENT_F = N |
#      | 1210_ GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is equal to calendar day 22 of the particular month && CASL_CONSENT_F = N          |
#      | 1210_GGG_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  &&MAT_DT is equal to calendar day 23 of the particular month && CASL_CONSENT_F = N            |
#      | 1210_GGG_ SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<100K  && MAT_DT is greater than calendar day 23 of the particular month && CASL_CONSENT_F = N      |
#      | 1210_GDD_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  && MAT_DT is equal to calendar day 1 of the particular month && CASL_CONSENT_F = N            |
#      | 1210_GDD_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  && MAT_DT is in between calendar day 1 and 7 of the particular month && CASL_CONSENT_F = N    |
#      | 1210_GDD_ SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  && MAT_DT is equal to calendar day 7 of the particular month && CASL_CONSENT_F = N           |
#      | 1210_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  && MAT_DT is equal to calendar day 8 of the particular month && CASL_CONSENT_F = N            |
#      | 1210_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  &&  MAT_DT is in between calendar day 8 and 14 of the particular month && CASL_CONSENT_F = N  |
#      | 1210_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  && MAT_DT is equal to calendar day 14 of the particular month && CASL_CONSENT_F = N           |
#      | 1210_GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  && MAT_DT is equal to calendar day 15 of the particular month && CASL_CONSENT_F = N           |
#      | 1210_GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  &&  MAT_DT is in between calendar day 15 and 22 of the particular month && CASL_CONSENT_F = N |
#      | 1210_ GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  && MAT_DT is equal to calendar day 22 of the particular month && CASL_CONSENT_F = N          |
#      | 1210_GGG_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  &&MAT_DT is equal to calendar day 23 of the particular month && CASL_CONSENT_F = N            |
#      | 1210_GGG_ SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=100K  && MAT_DT is greater than calendar day 23 of the particular month && CASL_CONSENT_F = N      |
#      | 1210_PLN_ACCT_CD_MASTER=NRS                                                                                                                                      |
#      | 1210_PLN_ACCT_CD_MASTER=TFSA                                                                                                                                     |
#      | 1210_PLN_ACCT_CD_MASTER=LRSP                                                                                                                                     |
#      | 1210_PLN_ACCT_CD_MASTER=RLSP                                                                                                                                     |
#      | 1210_PLN_ACCT_CD_MASTER=RRSP                                                                                                                                     |
#      | 1210_PLN_ACCT_DLR=BNS                                                                                                                                            |
#      | 1210_PLN_ACCT_DLR=SSI                                                                                                                                            |


  @GICRenewalEmail @GICRenewalEmail_Negative_Validation_1210 @1210 @Email @ET14061
  Scenario Outline:GIC-1210_ET14061_EMAIL Validate offer details are not displayed against IH for Negative test cases
    Given load data from "GIC_EML" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then verify offer should not display
    Examples:
      | Test cases                                                       |
      | 1210_N_PRIM_CNTRY_CD!  = CA                                      |
      | 1210_N_PRIM_CNTRY_CD = NULL                                      |
      | 1210_N_CUST_TP_CD != PSNL                                        |
      | 1210_N_CUST_TP_CD =  NULL                                        |
      | 1210_N_CUST_AGEless than 18                                      |
      | 1210_N_CUST_AGE Equal to NULL                                    |
      | 1210_N_Deceased_F=Y                                              |
      | 1210_N_Deceased_F = NULL                                         |
      | 1210_N_LANG_CD = K                                               |
      | 1210_N_LANG_CD = NE                                              |
      | 1210_N_LANG_CD = NULL                                            |
      | 1210_N_MRKTBLE_F = N                                             |
      | 1210_N_MRKTBLE_F = NULL                                          |
      | 1210_N_PRIM_EMAIL_ADDR IS  NULL                                  |
      | 1210_N_PRIM_EMAIL_ADDR IS  BLANK                                 |
      | 1210_N_INDV_FRST_NM is BLANK                                     |
      | 1210_N_INDV_FRST_NM is NULL                                      |
      | 1210_N_VLD_EMAIL_F=N                                             |
      | 1210_N_VLD_EMAIL_F=NULL                                          |
      | 1210_N_SRC_SYS_PRD_CD=01                                         |
      | 1210_N_SRC_SYS_PRD_CD is NULL                                    |
      | 1210_N_PRD_CD_MASTER=NULL                                        |
      | 1210_N_PRD_CD_MASTER is blank                                    |
      | 1210_N_PRD_CD_MASTER=ROC                                         |
      | 1210_N_PRD_ACCT_STAT_CD!=A                                       |
      | 1210_N_PRD_ACCT_STAT_CD=NULL                                     |
      | 1210_N_PLN_ACCT_CD_MASTER=RDSP                                   |
      | 1210_N_MAT_DT< CURRENT MONTH+2 MONTHS                            |
      | 1210_N_MAT_DT=NULL                                               |
      | 1210_N_SRC_ACCT_STAT_CD=Not Active                               |
      | 1210_N_SRC_ACCT_STAT_CD=NULL                                     |
      | 1210_N_ACCT_SUBSYS_ID!=UF                                        |
      | 1210_N_ACCT_SUBSYS_ID=NULL                                       |
      | 1210_N_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>$100K |
      | 1210_N_PRIMARY_ACCT_HOLDER_FLAG=N                                |
      | 1210_N_PRIMARY_ACCT_HOLDER_FLAG=NULL                             |
      | 1210_N_PRD_CD_MASTER=CT                                          |
      | 1210_N_PRD_CD_MASTER=CU                                          |
      | 1210_N_PRD_CD_MASTER=CV                                          |
      | 1210_N_PRD_CD_MASTER=CTI                                         |
      | 1210_N_PRD_CD_MASTER=CUI                                         |
      | 1210_N_PRD_CD_MASTER=CVI                                         |
      | 1210_N_PLN_ACCT_CD_MASTER = RESP                                 |
      | 1210_N_PLN_ACCT_CD_MASTER = RRIF                                 |
      | 1210_N_PRD_CD_MASTER=TU                                          |
      | 1210_N_PRD_CD_MASTER=TUI                                         |
      | 1210_N_prd_cd_master=ACC                                         |
      | 1210_N_prd_cd_master=FLE                                         |
      | 1210_N_prd_cd_master=UTL                                         |
      | 1210_N_CASL_CONSENT_F=NULL                                       |
      | 1210_N_PLN_OWNERSHIP_CD=2                                        |
      | 1210_N_PLN_OWNERSHIP_CD=3                                        |
      | 1210_N_IN_TRUST_FOR_IND_CD=1                                     |
      | 1210_N_CRNT_BAL_AMT<500                                          |
      | 1210_N_PLN_ACCT_CD_MASTER!=(NRS,TFSA,LRSP,RLSP,RRSP)             |
      | 1210_N_PLN_ACCT_CD_MASTER=NULL                                   |
      | 1210_N_PLN_ACCT_DLR! = (BNS,SSI)                                 |
      | 1210_N_PLN_ACCT_DLR! = NULL                                      |
      | 1210_N_INDV_LAST_NM=NULL                                         |
      | 1210_N_INDV_LAST_NM=BLANK                                        |
