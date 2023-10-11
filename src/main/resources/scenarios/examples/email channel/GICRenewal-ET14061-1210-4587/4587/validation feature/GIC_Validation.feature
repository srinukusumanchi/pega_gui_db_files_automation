Feature: Validation for GIC-4587

  @GICRenewalEmail @GICRenewalEmail_Positive_Validation_4587 @4587 @Email @ET14061
  Scenario Outline: GIC-4587_ET14061_EMAIL Validate offer details against IH for Positive test cases
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
      | Test cases                                                                                                                                                       |
      | 4587_CUST_AGE=18                                                                                                                                                 |
      | 4587_LANG_CD=E                                                                                                                                                   |
      | 4587_LANG_CD=EN                                                                                                                                                  |
      | 4587_LANG_CD=F                                                                                                                                                   |
      | 4587_LANG_CD=FR                                                                                                                                                  |
      | 4587_LANG_CD = e                                                                                                                                                 |
      | 4587_LANG_CD = en                                                                                                                                                |
      | 4587_LANG_CD = f                                                                                                                                                 |
      | 4587_LANG_CD = fr                                                                                                                                                |
      | 4587_DO_NOT_EMAIL_F=Y                                                                                                                                            |
      | 4587_DO_NOT_EMAIL_F=NULL                                                                                                                                         |
      | 4587_CASL_CONSENT_F=N                                                                                                                                            |
      | 4587_CASL_CONSENT_F=Y                                                                                                                                            |
      | 4587_SRC_SYS_PRD_CD=NRS                                                                                                                                          |
      | 4587_SRC_SYS_PRD_CD=TFSSB                                                                                                                                        |
      | 4587_SRC_SYS_PRD_CD=RRSSB                                                                                                                                        |
      | 4587_SRC_SYS_PRD_CD=NRSPR                                                                                                                                        |
      | 4587_SRC_SYS_PRD_CD=TFS                                                                                                                                          |
      | 4587_SRC_SYS_PRD_CD=RRS                                                                                                                                          |
      | 4587_CRNT_BAL_AMT=$500                                                                                                                                           |
      | 4587_multiple GICs then prioritised based on earliest mat_dt                                                                                                     |
      | 4587_multiple GICs then prioritised based on highest maturtiy amount                                                                                             |
      | 4587_multiple GICs then prioritised based on  lowest certficate number                                                                                           |
      | 4587_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>$100K                                                                                                   |
      | 4587_GDD_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is equal to calendar day 1 of the particular month && CASL_CONSENT_F = Y            |
      | 4587_GDD_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is in between calendar day 1 and 7 of the particular month && CASL_CONSENT_F = Y    |
      | 4587_GDD_ SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is equal to calendar day 7 of the particular month && CASL_CONSENT_F = Y           |
      | 4587_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is equal to calendar day 8 of the particular month && CASL_CONSENT_F = Y            |
      | 4587_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  &&  MAT_DT is in between calendar day 8 and 14 of the particular month && CASL_CONSENT_F = Y  |
      | 4587_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is equal to calendar day 14 of the particular month && CASL_CONSENT_F = Y           |
      | 4587_GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is equal to calendar day 15 of the particular month && CASL_CONSENT_F = Y           |
      | 4587_GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  &&  MAT_DT is in between calendar day 15 and 22 of the particular month && CASL_CONSENT_F = Y |
      | 4587_ GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is equal to calendar day 22 of the particular month && CASL_CONSENT_F = Y          |
      | 4587_GGG_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  &&MAT_DT is equal to calendar day 23 of the particular month && CASL_CONSENT_F = Y            |
      | 4587_GGG_ SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is greater than calendar day 23 of the particular month && CASL_CONSENT_F = Y      |
      | 4587_GDD_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is equal to calendar day 1 of the particular month && CASL_CONSENT_F = N            |
      | 4587_GDD_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is in between calendar day 1 and 7 of the particular month && CASL_CONSENT_F = N    |
      | 4587_GDD_ SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is equal to calendar day 7 of the particular month && CASL_CONSENT_F = N           |
      | 4587_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is equal to calendar day 8 of the particular month && CASL_CONSENT_F = N            |
      | 4587_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  &&  MAT_DT is in between calendar day 8 and 14 of the particular month && CASL_CONSENT_F = N  |
      | 4587_GEE_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is equal to calendar day 14 of the particular month && CASL_CONSENT_F = N           |
      | 4587_GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is equal to calendar day 15 of the particular month && CASL_CONSENT_F = N           |
      | 4587_GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  &&  MAT_DT is in between calendar day 15 and 22 of the particular month && CASL_CONSENT_F = N |
      | 4587_ GFF_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is equal to calendar day 22 of the particular month && CASL_CONSENT_F = N          |
      | 4587_GGG_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  &&MAT_DT is equal to calendar day 23 of the particular month && CASL_CONSENT_F = N            |
      | 4587_GGG_ SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC>100K  && MAT_DT is greater than calendar day 23 of the particular month && CASL_CONSENT_F = N      |
      | 4587_PLN_ACCT_CD_MASTER=NRS                                                                                                                                      |
      | 4587_PLN_ACCT_CD_MASTER=TFSA                                                                                                                                     |
      | 4587_PLN_ACCT_CD_MASTER=LRSP                                                                                                                                     |
      | 4587_PLN_ACCT_CD_MASTER=RLSP                                                                                                                                     |
      | 4587_PLN_ACCT_CD_MASTER=RRSP                                                                                                                                     |
      | 4587_PLN_ACCT_DLR=BNS                                                                                                                                            |
      | 4587_PLN_ACCT_DLR=SSI                                                                                                                                            |


  @GICRenewalEmail @GICRenewalEmail_Positive_Validation_4587 @4587 @Email @ET14061
  Scenario Outline:GIC-4587_ET14061_EMAIL Validate offer details are not displayed against IH for Negative test cases
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
      | 4587_N_PRIM_CNTRY_CD!  = CA                                      |
      | 4587_N_PRIM_CNTRY_CD = NULL                                      |
      | 4587_N_CUST_TP_CD != PSNL                                        |
      | 4587_N_CUST_TP_CD =  NULL                                        |
      | 4587_N_CUST_AGEless than 18                                      |
      | 4587_N_CUST_AGE Equal to NULL                                    |
      | 4587_N_Deceased_F=Y                                              |
      | 4587_N_Deceased_F = NULL                                         |
      | 4587_N_LANG_CD = K                                               |
      | 4587_N_LANG_CD = NE                                              |
      | 4587_N_LANG_CD = NULL                                            |
      | 4587_N_MRKTBLE_F = N                                             |
      | 4587_N_MRKTBLE_F = NULL                                          |
      | 4587_N_PRIM_EMAIL_ADDR IS  NULL                                  |
      | 4587_N_PRIM_EMAIL_ADDR IS  BLANK                                 |
      | 4587_N_INDV_FRST_NM is BLANK                                     |
      | 4587_N_INDV_FRST_NM is NULL                                      |
      | 4587_N_INDV_LAST_NM=NULL                                         |
      | 4587_N_INDV_LAST_NM=BLANK                                        |
      | 4587_N_VLD_EMAIL_F=N                                             |
      | 4587_N_VLD_EMAIL_F=NULL                                          |
      | 4587_N_SRC_SYS_PRD_CD=01                                         |
      | 4587_N_SRC_SYS_PRD_CD is NULL                                    |
      | 4587_N_PRD_CD_MASTER=NULL                                        |
      | 4587_N_PRD_CD_MASTER is blank                                    |
      | 4587_N_PRD_CD_MASTER=ROC                                         |
      | 4587_N_PRD_ACCT_STAT_CD!=A                                       |
      | 4587_N_PRD_ACCT_STAT_CD=NULL                                     |
      | 4587_N_PLN_ACCT_CD_MASTER=RDSP                                   |
      | 4587_N_MAT_DT< CURRENT MONTH+2 MONTHS                            |
      | 4587_N_MAT_DT=NULL                                               |
      | 4587_N_SRC_ACCT_STAT_CD=Not Active                               |
      | 4587_N_SRC_ACCT_STAT_CD=NULL                                     |
      | 4587_N_MAT_VAL_AMT=$0                                            |
      | 4587_N_ACCT_SUBSYS_ID!=UF                                        |
      | 4587_N_ACCT_SUBSYS_ID=NULL                                       |
      | 4587_N_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC<$100K |
      | 4587_N_SUM OF ALL MAT_VAL_AMT FOR ALLACCT_CRFC_NUM FOR GIC=$100K |
      | 4587_N_PRIMARY_ACCT_HOLDER_FLAG=N                                |
      | 4587_N_PRIMARY_ACCT_HOLDER_FLAG=NULL                             |
      | 4587_N_CASL_CONSENT_F=NULL                                       |
      | 4587_N_PRD_CD_MASTER=CT                                          |
      | 4587_N_PRD_CD_MASTER=CU                                          |
      | 4587_N_PRD_CD_MASTER=CV                                          |
      | 4587_N_PRD_CD_MASTER=CTI                                         |
      | 4587_N_PRD_CD_MASTER=CUI                                         |
      | 4587_N_PRD_CD_MASTER=CVI                                         |
      | 4587_N_PLN_ACCT_CD_MASTER = RESP                                 |
      | 4587_N_PLN_ACCT_CD_MASTER = RRIF                                 |
      | 4587_N_PRD_CD_MASTER=TU                                          |
      | 4587_N_PRD_CD_MASTER=TUI                                         |
      | 4587_N_PLN_OWNERSHIP_CD=2                                        |
      | 4587_N_PLN_OWNERSHIP_CD=3                                        |
      | 4587_N_IN_TRUST_FOR_IND_CD=1                                     |
      | 4587_N_PRD_CD_MASTER=ACC                                         |
      | 4587_N_PRD_CD_MASTER=FLE                                         |
      | 4587_N_PRD_CD_MASTER=UTL                                         |
      | 4587_N_CRNT_BAL_AMT<500                                          |
      | 4587_N_PLN_ACCT_CD_MASTER!=(NRS,TFSA,LRSP,RLSP,RRSP)             |
      | 4587_N_PLN_ACCT_CD_MASTER=NULL                                   |
      | 4587_N_PLN_ACCT_DLR! = (BNS,SSI)                                 |
      | 4587_N_PLN_ACCT_DLR! = NULL                                      |

