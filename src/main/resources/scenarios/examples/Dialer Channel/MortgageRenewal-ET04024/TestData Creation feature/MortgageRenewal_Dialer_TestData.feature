@MortgageRenewal_DIA
Feature: Test Data Creation For Mortgage Renewals Dialer Channel


  @MortgageRenewalDialer @MortgageRenewalDialer_Positive_Single_Customer_TestData @DIALER @ET04024
  Scenario Outline: Mortgage Renewal ET04024 DIALER Create test data for Generic positive test cases
    Given load data from "MortRen_DIA" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                                                                                                 |
      | Primary Customer_DIA_BANKRUPTCY_DT= NULL_SOL                                                                               |
      | Primary Customer_DIA_BANKRUPTCY_DT= NULL_BOR                                                                               |
      | DIA_CUST_TP_CD = PSNL                                                                                                      |
      | DIA_Deceased_F = N                                                                                                         |
      | DIA_LANG_CD = E                                                                                                            |
      | DIA_LANG_CD = EN                                                                                                           |
      | DIA_LANG_CD = F                                                                                                            |
      | DIA_LANG_CD = FR                                                                                                           |
      | DIA_LANG_CD_LowerCase = e                                                                                                  |
      | DIA_LANG_CD_LowerCase = en                                                                                                 |
      | DIA_LANG_CD_LowerCase = f                                                                                                  |
      | DIA_LANG_CD_LowerCase = fr                                                                                                 |
      | DIA_CR_RSK_IND != (D,E)                                                                                                    |
      | DIA_CR_RSK_IND = NULL                                                                                                      |
      | DIA_INDV_FRST_NM = !NULL                                                                                                   |
      | DIA_INDV_LAST_NM = !NULL                                                                                                   |
      | DIA_RENEW_LIMITED_F = 0                                                                                                    |
      | DIA_RENEW_LIMITED_F >2                                                                                                     |
      | DIA_CASHBACK_F  = N                                                                                                        |
      | DIA_CASHBACK_F  = NULL                                                                                                     |
      | DIA_MORT_NOT_FRCLSR_F = Y                                                                                                  |
      | DIA_MORT_NOT_FRCLSR_F = NULL                                                                                               |
      | DIA_SRC_SYS_PRD_CD != (911,931,951)                                                                                        |
      | DIA_INTEREST_RATE >2                                                                                                       |
      | DIA_MAT_DT - Current Date = 7                                                                                              |
      | DIA_AMORTIZATION_REMAIN = 26                                                                                               |
      | DIA_AMORTIZATION_REMAIN > 26                                                                                               |
      | DIA_MORT_PB_TRANSIT_REGION = 2                                                                                             |
      | DIA_MORT_PB_TRANSIT_REGION = 3                                                                                             |
      | DIA_MORT_PB_TRANSIT_REGION = 4                                                                                             |
      | DIA_MORT_PB_TRANSIT_REGION = 5                                                                                             |
      | DIA_MORT_PB_TRANSIT_REGION = 6                                                                                             |
      | DIA_MORT_PB_TRANSIT_REGION = 7                                                                                             |
      | DIA_MORT_ARREARS_MONTHS < 0                                                                                                |
      | DIA_MORT_ADJ_CONTR_AMORT_REMAIN_MONTHS  > 0 Should be > AMORTIZATION_REMAIN                                                |
      | DIA_MORT_ADJ_CONTR_AMORT_REMAIN_MONTHS <= 0  AMORTIZATION_REMAIN < MORT_CONTR_AMORT_MONTHS                                 |
      | DIA_MORT_FUND_CODE !=(1900, 1901, 1902, 1912, 1916, 1922, 1904, 1905, 1910, 1924, 0526,0528,0533,0549,0550,0551,0595,0600) |
      | DIA_TERM = Any Numeric                                                                                                     |
      | DIA_CRNT_BAL_AMT = 20000                                                                                                   |
      | DIA_CRNT_BAL_AMT > 20000                                                                                                   |
      | DIA_SRC_ACCT_STAT_CD = Active                                                                                              |
      | DIA_MORT_COMM_TYPE = Residential                                                                                           |
      | DIA_ACCT_NUM = 23 Digit Numeric Value                                                                                      |
      | DIA_IP_AR_RELATN_TYPE_CD = SOL                                                                                             |
      | DIA_IP_AR_RELATN_TYPE_CD = BOR                                                                                             |
      | DIA_ACCT_SUBSYS_ID = UO                                                                                                    |
      | DIA_CUST_DIM.VLD_PH_F = Y                                                                                                  |
      | DIA_Title != NULL                                                                                                          |
      | DIA_Given_Name != NULL                                                                                                     |
      | DIA_Address 1 != NULL                                                                                                      |
      | DIA_City != NULL                                                                                                           |
      | DIA_Province Code != NULL                                                                                                  |
      | DIA_Postal Code != NULL                                                                                                    |
      | DIA_ASSIGNED_FA_TRANSIT !=BLANK                                                                                            |
      | DIA_INDV_HOME_TEL_NUM != NULL                                                                                              |
      | DIA_MORTGAGE_OWNERSHIP_BRANCH_TRANSIT_NUM != NULL                                                                          |

  @MortgageRenewalDialer @MortgageRenewalDialer_T6_Positive_Segmentation_Single_Customer_TestData @DIALER @T6 @ET04024
  Scenario Outline: Mortgage Renewal ET04024 DIALER T6 Positive Segmentation test cases
    Given load data from "MortRen_DIA" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                                                      |
      | DIA_T6_NONSOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_AMORTIZATION_REMAIN > 26 |
      | DIA_T6_NONSOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_AMORTIZATION_REMAIN = 26 |
      | DIA_T6_NONSOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_CRNT_BAL_AMT >20000      |
      | DIA_T6_NONSOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_CRNT_BAL_AMT =20000      |
      | DIA_T6_NONSOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_Count <2                 |

  @MortgageRenewalDialer @MortgageRenewalDialer_T3_Positive_Segmentation_TestData @DIALER @ET04024 @T3
  Scenario Outline: Mortgage Renewal ET04024 DIALER T3 Positive Segmentation test cases
    Given load data from "MortRen_DIA" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                                                      |
      | DIA_T3_NONSOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_AMORTIZATION_REMAIN > 26 |
      | DIA_T3_NONSOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_AMORTIZATION_REMAIN = 26 |
      | DIA_T3_NONSOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_CRNT_BAL_AMT >20000      |
      | DIA_T3_NONSOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_CRNT_BAL_AMT =20000      |
      | DIA_T3_NONSOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_Count <2                 |

  @MortgageRenewalDialer @MortgageRenewalDialer_T1_Positive_Segmentation_OneTwoTwo_TestData @DIALER @ET04024 @T1
  Scenario Outline: Mortgage Renewal ET04024 DIALER T1 positive Segmentation One Two Two test cases
    Given load data from "MortRen_DIA" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Examples:
      | Test cases                                                                                         |
      | DIA_T1_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN > 26_ASSIGNED_FA_ID = 7digit Number                   |
      | DIA_T1_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN = 26_ASSIGNED_FA_ID = 7digit Number                   |
      | DIA_T1_MOB_LAST_LOGIN_DT_CRNT_BAL_AMT >20000_ASSIGNED_FA_ID = 7digit Number                        |
      | DIA_T1_MOB_LAST_LOGIN_DT_CRNT_BAL_AMT =20000_ASSIGNED_FA_ID = 7digit Number                        |
      | DIA_T1_MOB_LAST_LOGIN_DT_Count <2_ASSIGNED_FA_ID = 7digit Number                                   |
      | DIA_T1_SOL_LAST_LOGIN_DT_AMORTIZATION_REMAIN > 26_ASSIGNED_FA_ID = 7digit Number                   |
      | DIA_T1_SOL_LAST_LOGIN_DT_AMORTIZATION_REMAIN = 26_ASSIGNED_FA_ID = 7digit Number                   |
      | DIA_T1_SOL_LAST_LOGIN_DT_CRNT_BAL_AMT >20000_ASSIGNED_FA_ID = 7digit Number                        |
      | DIA_T1_SOL_LAST_LOGIN_DT_CRNT_BAL_AMT =20000_ASSIGNED_FA_ID = 7digit Number                        |
      | DIA_T1_SOL_LAST_LOGIN_DT_Count <2_ASSIGNED_FA_ID = 7digit Number                                   |
      | DIA_T1_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN > 26_ASSIGNED_FA_ID = 7digit Number |
      | DIA_T1_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN = 26_ASSIGNED_FA_ID = 7digit Number |
      | DIA_T1_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_CRNT_BAL_AMT >20000_ASSIGNED_FA_ID = 7digit Number      |
      | DIA_T1_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_CRNT_BAL_AMT =20000_ASSIGNED_FA_ID = 7digit Number      |
      | DIA_T1_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_Count <2_ASSIGNED_FA_ID = 7digit Number                 |

  @MortgageRenewalDialer @MortgageRenewalDialer_Negative_Single_Customer_TestData @DIALER @ET04024
  Scenario Outline: Mortgage Renewal ET04024 DIALER Create test data for Generic Negative test cases
    Given load data from "MortRen_DIA" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Testcases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Testcases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Testcases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Testcases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Testcases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Testcases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Testcases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Testcases                                                                           |
#      | N-Primary Customer_DIA_BANKRUPTCY_DT!= NULL_SOL                                     |
#      | N-Primary Customer_DIA_BANKRUPTCY_DT!= NULL_BOR                                     |
#      | N-DIA_CUST_TP_CD != PSNL                                                            |
#      | N-DIA_CUST_TP_CD = NULL                                                             |
#      | N-DIA_Deceased_F = Y                                                                |
#      | N-DIA_Deceased_F = NULL                                                             |
#      | N-DIA_LANG_CD = K                                                                   |
#      | N-DIA_LANG_CD = NE                                                                  |
#      | N-DIA_LANG_CD = NULL                                                                |
#      | N-DIA_CR_RSK_IND = D                                                                |
#      | N-DIA_CR_RSK_IND = E                                                                |
#      | N-DIA_RENEW_LIMITED_F = 1                                                           |
#      | N-DIA_RENEW_LIMITED_F = 2                                                           |
#      | N-DIA_CASHBACK_F  = Y                                                               |
#      | N-DIA_MORT_NOT_FRCLSR_F = N                                                         |
#      | N-DIA_SRC_SYS_PRD_CD = 911                                                          |
#      | N-DIA_SRC_SYS_PRD_CD = 931                                                          |
#      | N-DIA_SRC_SYS_PRD_CD = 951                                                          |
#      | N-DIA_INTEREST_RATE = 2                                                             |
#      | N-DIA_INTEREST_RATE < 2                                                             |
#      | N-DIA_MAT_DT - Current Date != (7,4,2)                                              |
#      | N-DIA_AMORTIZATION_REMAIN < 26                                                      |
#      | N-DIA_MORT_PB_TRANSIT_REGION!= (2,3,4,5,6,7)                                        |
#      | N-DIA_MORT_ARREARS_MONTHS > 0                                                       |
#      | N-DIA_MORT_ADJ_CONTR_AMORT_REMAIN_MONTHS = NULL                                     |
#      | N-DIA_MORT_FUND_CODE = (1900, 1901, 1902, 1912, 1916, 1922)                         |
#      | N-DIA_MORT_FUND_CODE = (1904, 1905, 1910, 1924) and ACCT_DIM.SERV_TRNST_NUM = 12088 |
#      | N-DIA_MORT_COMM_TYPE != Residential                                                 |
#      | N-DIA_MORT_COMM_TYPE = NULL                                                         |
#      | N-DIA_IP_AR_RELATN_TYPE_CD = BLANK                                                  |
#      | N-DIA_IP_AR_RELATN_TYPE_CD = NULL                                                   |
#      | N-DIA_IP_AR_RELATN_TYPE_CD = Zero                                                   |
#      | N-DIA_ACCT_SUBSYS_ID != UO                                                          |

  @MortgageRenewalDialer @MortgageRenewalDialer_T6_Negative_Segmentation_Single_Customer_TestData @DIALER @T6 @ET04024
  Scenario Outline: Mortgage Renewal ET04024 DIALER T6 Negative Segmentation test cases
    Given load data from "MortRen_DIA" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                                                                   |
      | N-DIA_T6_NONSOL_SOL_LAST_LOGIN_DT And MOB_LAST_LOGIN_DT_Value                                |
      | N-DIA_T6_NONSOL_SOL_LAST_LOGIN_DT And MOB_LAST_LOGIN_DT_NULL_Value_AMORTIZATION_REMAIN  < 26 |
      | N-DIA_T6_NONSOL_SOL_LAST_LOGIN_DT And MOB_LAST_LOGIN_DT_NULL_Value_CRNT_BAL_AMT < 20000      |

  @MortgageRenewalDialer @MortgageRenewalDialer_T3_Negative_Segmentation_Single_Customer_TestData @DIALER @T3 @ET04024
  Scenario Outline: Mortgage Renewal ET04024 DIALER T3 Negative Segmentation test cases
    Given load data from "MortRen_DIA" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                                                                   |
      | N-DIA_T3_NONSOL_SOL_LAST_LOGIN_DT And MOB_LAST_LOGIN_DT_Value                                |
      | N-DIA_T3_NONSOL_SOL_LAST_LOGIN_DT And MOB_LAST_LOGIN_DT_NULL_Value_AMORTIZATION_REMAIN  < 26 |
      | N-DIA_T3_NONSOL_SOL_LAST_LOGIN_DT And MOB_LAST_LOGIN_DT_NULL_Value_CRNT_BAL_AMT < 20000      |

  @MortgageRenewalDialer @MortgageRenewalDialer_T1_OneTwoTwo_Negative_Segmentation_TestData @DIALER @ET04024 @T1
  Scenario Outline: Mortgage Renewal ET04024 DIALER T1 Negative Segmentation One Two Two test cases
    Given load data from "MortRen_DIA" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Testcases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Testcases>"
    Then insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Testcases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Testcases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Examples:
      | Testcases                                                                                  |
#      | N-DIA_T1_NONSOL_MOB_LAST_LOGIN_DT_Value_ACCT_SUBSYS_ID = CA_ASSIGNED_FA_ID = 7digit Number                             |
#      | N-DIA_T1_NONSOL_MOB_LAST_LOGIN_DT_Value_EDW_ACCT_STAT_CD = B_ASSIGNED_FA_ID = 7digit Number                            |
#      | N-DIA_T1_NONSOL_MOB_LAST_LOGIN_DT_NULL_ASSIGNED_FA_ID = 7digit Number                                                  |
#      | N-DIA_T1_NONSOL_MOB_LAST_LOGIN_DT_Value_AMORTIZATION_REMAIN < 26_ASSIGNED_FA_ID = 7digit Number                        |
#      | N-DIA_T1_NONSOL_MOB_LAST_LOGIN_DT_Value_CRNT_BAL_AMT < 20000_ASSIGNED_FA_ID = 7digit Number                            |
#      | N-DIA_T1_NONSOL_MOB_LAST_LOGIN_DT_Value_ASSIGNED_FA_ID < 7digit Number                                                 |
#      | N-DIA_T1_NONSOL_SOL_LAST_LOGIN_DT_Value_ACCT_SUBSYS_ID = CA_ASSIGNED_FA_ID = 7digit Number |
#      | N-DIA_T1_NONSOL_SOL_LAST_LOGIN_DT_Value_EDW_ACCT_STAT_CD = B_ASSIGNED_FA_ID = 7digit Number                            |
#      | N-DIA_T1_NONSOL_SOL_LAST_LOGIN_DT_NULL_ASSIGNED_FA_ID = 7digit Number                                                  |
#      | N-DIA_T1_NONSOL_SOL_LAST_LOGIN_DT_Value_AMORTIZATION_REMAIN < 26_ASSIGNED_FA_ID = 7digit Number                        |
#      | N-DIA_T1_NONSOL_SOL_LAST_LOGIN_DT_Value_CRNT_BAL_AMT < 20000_ASSIGNED_FA_ID = 7digit Number                            |
#      | N-DIA_T1_NONSOL_SOL_LAST_LOGIN_DT_Value_ASSIGNED_FA_ID < 7digit Number                     |
#      | N-DIA_T1_NONSOL_SOL_LAST_LOGIN_DT  and MOB_LAST_LOGIN_DT_Value_ACCT_SUBSYS_ID = CA_ASSIGNED_FA_ID = 7digit Number      |
#      | N-DIA_T1_NONSOL_SOL_LAST_LOGIN_DT  and MOB_LAST_LOGIN_DT_Value_EDW_ACCT_STAT_CD = B_ASSIGNED_FA_ID = 7digit Number     |
#      | N-DIA_T1_NONSOL_SOL_LAST_LOGIN_DT  and MOB_LAST_LOGIN_DT_NULL_ASSIGNED_FA_ID = 7digit Number                           |
#      | N-DIA_T1_NONSOL_SOL_LAST_LOGIN_DT  and MOB_LAST_LOGIN_DT_Value_AMORTIZATION_REMAIN < 26_ASSIGNED_FA_ID = 7digit Number |
#      | N-DIA_T1_NONSOL_SOL_LAST_LOGIN_DT  and MOB_LAST_LOGIN_DT_Value_CRNT_BAL_AMT < 20000_ASSIGNED_FA_ID = 7digit Number     |
#      | N-DIA_T1_NONSOL_SOL_LAST_LOGIN_DT  and MOB_LAST_LOGIN_DT_Value_ASSIGNED_FA_ID < 7digit Number                          |

  @MortgageRenewalDialer @MortgageRenewalDialer_TwoOneTwo_PositiveTestCases @DIALER @ET04024
  Scenario Outline: Mortgage Renewal ET04024 DIALER Create test data for TwoOneTwo Test cases
    Given load data from "MortRen_DIA" excel sheet
    Given write different cid into "CUST_DIM" sheet for "<Test cases>" having "2" Customers
    Then insert Multiple customer information details in "CUST_DIM" table having "2" accounts
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "1" accounts
    Then insert customer account details in "ACCT_DIM" table having "1" accounts
    When write Mortgage twoOneTwo cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Examples:
      | Test cases                                                           |
      | DIA_CoBorrower_BANKRUPTCY_DT = NULL_COB                                   |
      | DIA_CoBorrower_BANKRUPTCY_DT = NULL_COS                                   |
      | DIA_IP_AR_RELATN_TYPE_CD = SOL As Primary Customer COB As CoBorrower      |
      | DIA_IP_AR_RELATN_TYPE_CD = SOL As Primary Customer COS As CoBorrower      |
      | DIA_IP_AR_RELATN_TYPE_CD = BOR As Primary Customer COB As CoBorrower      |
      | DIA_IP_AR_RELATN_TYPE_CD = BOR As Primary Customer COS As CoBorrower |
      | DIA_Deceased_F = N_For Coborrower_COB                                     |
      | DIA_Deceased_F = N_For Coborrower_COS                                     |
      | DIA_T6_NONSOL_SOL_LAST_LOGIN_DT And MOB_LAST_LOGIN_DT_NULL_Value_Count =2 |
      | DIA_T3_NONSOL_SOL_LAST_LOGIN_DT And MOB_LAST_LOGIN_DT_NULL_Value_Count =2 |
#      | N-DIA_CoBorrower_BANKRUPTCY_DT != NULL_COB                                |
#      | N-DIA_CoBorrower_BANKRUPTCY_DT != NULL_COS                                |
#      | N-DIA_CoBorrower_Deceased_F = Y For COB                                   |
#      | N-DIA_CoBorrower_Deceased_F = Y For COS                                   |
#      | N-DIA_CoBorrower_Deceased_F = NULL For COB                                |
#      | N-DIA_CoBorrower_Deceased_F = NULL For COS                                |

  @MortgageRenewalDialer @MortgageRenewalDialer_TwoTwoThree_Customer_Positive_TestData @DIALER @ET04024
  Scenario Outline: Mortgage Renewal ET04024 DIALER Create test data for Two Two Three Customers Test cases
    Given load data from "MortRen_DIA" excel sheet
    Given write different cid into "CUST_DIM" sheet for "<Test cases>" having "2" Customers
    Then insert Multiple customer information details in "CUST_DIM" table having "2" accounts
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write Mortgage cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "3" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "3" accounts
    Examples:
      | Test cases                                                                        |
      | DIA_T1_MOB_LAST_LOGIN_DT_Count=2 _ASSIGNED_FA_ID = 7digit Number                  |
      | DIA_T1_SOL_LAST_LOGIN_DT_Count=2_ASSIGNED_FA_ID = 7digit Number                   |
      | DIA_T1_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_Count=2_ASSIGNED_FA_ID = 7digit Number |

  @MortgageRenewalDialer @MortgageRenewalDialer_ThreeTwoFour_Customer_Positive_TestData @DIALER @ET04024
  Scenario Outline: Mortgage Renewal ET04024 DIALER Create test data for Three Two Four Customers Test cases
    Given load data from "MortRen_DIA" excel sheet
    Given write different cid into "CUST_DIM" sheet for "<Test cases>" having "3" Customers
    Then insert Multiple customer information details in "CUST_DIM" table having "3" accounts
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write Mortgage cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "4" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "4" accounts
    Examples:
      | Test cases                                                                          |
      | N-DIA_T1_MOB_LAST_LOGIN_DT_Count>2 _ASSIGNED_FA_ID = 7digit Number                  |
      | N-DIA_T1_SOL_LAST_LOGIN_DT_Count>2_ASSIGNED_FA_ID = 7digit Number                   |
      | N-DIA_T1_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_Count>2_ASSIGNED_FA_ID = 7digit Number |


  @MortgageRenewalDialer @MortgageRenewalDialer_ThreeOneThree_Customer_Positive_TestData @DIALER @ET04024
  Scenario Outline: Mortgage Renewal ET04024 DIALER Create test data for Three One Three Customers Test cases
    Given load data from "MortRen_DIA" excel sheet
    Given write different cid into "CUST_DIM" sheet for "<Test cases>" having "3" Customers
    Then insert Multiple customer information details in "CUST_DIM" table having "3" accounts
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "1" accounts
    Then insert customer account details in "ACCT_DIM" table having "1" accounts
    When write Mortgage twoOneTwo cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "3" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "3" accounts

    Examples:
      | Test cases                                                                 |
      | N-DIA_T6_NONSOL_SOL_LAST_LOGIN_DT And MOB_LAST_LOGIN_DT_NULL_Value_Count>2 |
      | N-DIA_T3_NONSOL_SOL_LAST_LOGIN_DT And MOB_LAST_LOGIN_DT_NULL_Value_Count>2 |