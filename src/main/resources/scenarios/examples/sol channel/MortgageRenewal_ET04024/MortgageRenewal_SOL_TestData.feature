@MortgageRenewal_SOL
Feature: Test Data Creation For Mortgage Renewals SOL Channel

  @MortgageRenewalSOL @MortgageRenewalSOL_OneTwoTwo_Positive_TestData @SOL @ET04024
  Scenario Outline: Mortgage Renewal ET04024 SOL One Two Two Positive test cases
    Given load data from "MortRen_SOL" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Testcases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Testcases>"
    Then insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Testcases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Testcases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Examples:
      | Testcases                                                                                        |
      | Primary Customer_SOL_BANKRUPTCY_DT= NULL_SOL                                                     |
      | Primary Customer_SOL_BANKRUPTCY_DT= NULL_BOR                                                     |
#      | SOL_Deceased_F = N for Primary Customer                                                          |
#      | SOL_T6_SOL_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN>26_CRNT_BAL_AMT>20000_Count<2                   |
#      | SOL_T6_SOL_SOL_LAST_LOGIN_DT_AMORTIZATION_REMAIN>26_CRNT_BAL_AMT>20000_Count<2                   |
#      | SOL_T6_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN>26_CRNT_BAL_AMT>20000_Count<2 |
#      | SOL_T5_SOL_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN>26_CRNT_BAL_AMT>20000_Count<2                   |
#      | SOL_T5_SOL_SOL_LAST_LOGIN_DT_AMORTIZATION_REMAIN>26_CRNT_BAL_AMT>20000_Count<2                   |
#      | SOL_T5_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN>26_CRNT_BAL_AMT>20000_Count<2 |
#      | SOL_T4_SOL_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN>26_CRNT_BAL_AMT>20000_Count<2                   |
#      | SOL_T4_SOL_SOL_LAST_LOGIN_DT_AMORTIZATION_REMAIN>26_CRNT_BAL_AMT>20000_Count<2                   |
#      | SOL_T4_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN>26_CRNT_BAL_AMT>20000_Count<2 |
#      | SOL_T3_SOL_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN>26_CRNT_BAL_AMT>20000_Count<2                   |
#      | SOL_T3_SOL_SOL_LAST_LOGIN_DT_AMORTIZATION_REMAIN>26_CRNT_BAL_AMT>20000_Count<2                   |
#      | SOL_T3_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN>26_CRNT_BAL_AMT>20000_Count<2 |

  @MortgageRenewalSOL @MortgageRenewalSOL_TwoTwoThree_Positive_TestData @SOL @ET04024
  Scenario Outline: Mortgage Renewal ET04024 SOL Create test data for Two Two Three Positive Test cases
    Given load data from "MortRen_SOL" excel sheet
    Given write different cid into "CUST_DIM" sheet for "<Test cases>" having "2" Customers
    Then insert Multiple customer information details in "CUST_DIM" table having "2" accounts
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write Mortgage cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "3" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "3" accounts
    Examples:
      | Test cases                                                                                       |
      | Primary Customer_SOL_BANKRUPTCY_DT= NULL_SOL AND CoBorrower_BANKRUPTCY_DT = NULL_COB             |
      | Primary Customer_SOL_BANKRUPTCY_DT= NULL_SOL AND CoBorrower_BANKRUPTCY_DT = NULL_COS             |
      | SOL_IP_AR_RELATN_TYPE_CD = BOR As Primary Customer COB As CoBorrower                             |
      | SOL_IP_AR_RELATN_TYPE_CD = BOR As Primary Customer COS As CoBorrower                             |
      | SOL_Deceased_F = N for COB                                                                       |
      | SOL_Deceased_F = N for COS                                                                       |
      | SOL_T6_SOL_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN=26_CRNT_BAL_AMT=20000_Count=2                   |
      | SOL_T6_SOL_SOL_LAST_LOGIN_DT_AMORTIZATION_REMAIN=26_CRNT_BAL_AMT=20000_Count=2                   |
      | SOL_T6_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN=26_CRNT_BAL_AMT=20000_Count=2 |
      | SOL_T5_SOL_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN=26_CRNT_BAL_AMT=20000_Count=2                   |
      | SOL_T5_SOL_SOL_LAST_LOGIN_DT_AMORTIZATION_REMAIN=26_CRNT_BAL_AMT=20000_Count=2                   |
      | SOL_T5_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN=26_CRNT_BAL_AMT=20000_Count=2 |
      | SOL_T4_SOL_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN=26_CRNT_BAL_AMT=20000_Count=2                   |
      | SOL_T4_SOL_SOL_LAST_LOGIN_DT_AMORTIZATION_REMAIN=26_CRNT_BAL_AMT=20000_Count=2                   |
      | SOL_T4_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN=26_CRNT_BAL_AMT=20000_Count=2 |
      | SOL_T3_SOL_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN=26_CRNT_BAL_AMT=20000_Count=2                   |
      | SOL_T3_SOL_SOL_LAST_LOGIN_DT_AMORTIZATION_REMAIN=26_CRNT_BAL_AMT=20000_Count=2                   |
      | SOL_T3_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN=26_CRNT_BAL_AMT=20000_Count=2 |

  @MortgageRenewalSOL @MortgageRenewalSOL_ThreeTwoFour_Customer_TestData @SOL @ET04024
  Scenario Outline: Mortgage Renewal ET04024 SOL Create test data for Three Two Four Customers Test cases
    Given load data from "MortRen_SOL" excel sheet
    Given write different cid into "CUST_DIM" sheet for "<Test cases>" having "3" Customers
    Then insert Multiple customer information details in "CUST_DIM" table having "3" accounts
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write Mortgage cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "4" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "4" accounts
    Examples:
      | Test cases                                                                   |
      | SOL_IP_AR_RELATN_TYPE_CD = SOL As Primary Customer COB and COS As CoBorrower |
      | SOL_IP_AR_RELATN_TYPE_CD = BOR As Primary Customer COB and COS As CoBorrower |

  @MortgageRenewalSOL @MortgageRenewalSOL_OneTwoTwo_Negative_Generic_TestData @SOL @ET04024
  Scenario Outline: Mortgage Renewal ET04024 SOL One Two Two Negative Generic test cases
    Given load data from "MortRen_SOL" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Testcases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Testcases>"
    Then insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Testcases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Testcases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Examples:
      | Testcases                                                                            |
      | N-Primary Customer_SOL_BANKRUPTCY_DT!= NULL_SOL                                      |
      | N-Primary Customer_SOL_BANKRUPTCY_DT!= NULL_BOR                                      |
      | N-SOL_CUST_TP_CD!=PSNL                                                               |
      | N-SOL_CUST_TP_CD=NULL                                                                |
      | N-SOL_Deceased_F=Y for Primary Customer                                              |
      | N-SOL_Deceased_F=NULL for Primary Customer                                           |
      | N-SOL_LANG_CD = K                                                                    |
      | N-SOL_LANG_CD = NE                                                                   |
      | N-SOL_LANG_CD = NULL                                                                 |
      | N-SOL_CR_RSK_IND = D                                                                 |
      | N-SOL_CR_RSK_IND = E                                                                 |
      | N-SOL_RENEW_LIMITED_F = 1                                                            |
      | N-SOL_RENEW_LIMITED_F = 2                                                            |
      | N-SOL_CASHBACK_F  = Y                                                                |
      | N-SOL_MORT_NOT_FRCLSR_F = N                                                          |
      | N-SOL_SRC_SYS_PRD_CD = 911                                                           |
      | N-SOL_SRC_SYS_PRD_CD = 931                                                           |
      | N-SOL_SRC_SYS_PRD_CD = 951                                                           |
      | N-SOL_INTEREST_RATE = 0                                                              |
      | N-SOL_INTEREST_RATE < 0                                                              |
      | N-SOL_MAT_DT - Current Date != (7,6,5,4)                                             |
      | N-SOL_AMORTIZATION_REMAIN < 26                                                       |
      | N-SOL_MORT_PB_TRANSIT_REGION != (2,3,4,5,6,7)                                        |
      | N-SOL_MORT_ARREARS_MONTHS > 0                                                        |
      | N-SOL_MORT_ADJ_CONTR_AMORT_REMAIN_MONTHS = NULL                                      |
      | N-SOL_MORT_FUND_CODE = (1900, 1901, 1902, 1912, 1916, 1922)                          |
      | N-SOL_MORT_FUND_CODE = (1904, 1905, 1910, 1924) and ACCT_DIM.SERV_TRNST_NUM = 12088) |
      | N-SOL_SRC_ACCT_STAT_CD = NULL                                                        |
      | N-SOL_SRC_ACCT_STAT_CD = Open                                                        |
      | N-SOL_EDW_ACCT_STAT_CD = B                                                           |
      | N-SOL_EDW_ACCT_STAT_CD = NULL                                                        |
      | N-SOL_MORT_COMM_TYPE != Residential                                                  |
      | N-SOL_MORT_COMM_TYPE = NULL                                                          |
      | N-SOL_IP_AR_RELATN_TYPE_CD = BLANK                                                   |
      | N-SOL_IP_AR_RELATN_TYPE_CD = NULL                                                    |
      | N-SOL_IP_AR_RELATN_TYPE_CD = Zero                                                    |
      | N-SOL_ACCT_SUBSYS_ID != UO                                                           |
      | N-SOL_ACCT_SUBSYS_ID != AC                                                           |

  @MortgageRenewalSOL @MortgageRenewalSOL_TwoTwoThree_Negative_TestData @SOL @ET04024
  Scenario Outline: Mortgage Renewal ET04024 SOL Create test data for Two Two Three Negative Test cases
    Given load data from "MortRen_SOL" excel sheet
    Given write different cid into "CUST_DIM" sheet for "<Test cases>" having "2" Customers
    Then insert Multiple customer information details in "CUST_DIM" table having "2" accounts
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write Mortgage cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "3" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "3" accounts
    Examples:
      | Test cases                                                                             |
      | N-Primary Customer_SOL_BANKRUPTCY_DT= NULL_SOL AND CoBorrower_BANKRUPTCY_DT!= NULL_COB |
      | N-Primary Customer_SOL_BANKRUPTCY_DT= NULL_SOL AND CoBorrower_BANKRUPTCY_DT!= NULL_COS |
      | N-Primary Customer_SOL_BANKRUPTCY_DT!= NULL_SOL AND CoBorrower_BANKRUPTCY_DT= NULL_COB |
      | N-Primary Customer_SOL_BANKRUPTCY_DT!= NULL_SOL AND CoBorrower_BANKRUPTCY_DT= NULL_COS |
      | N-SOL_Deceased_F = Y for COBorrower_COB                                                |
      | N-SOL_Deceased_F = NULL for CoBorrower_COB                                             |
      | N-SOL_Deceased_F = Y for COBorrower_COS                                                |
      | N-SOL_Deceased_F = NULL for CoBorrower_COS                                             |

  @MortgageRenewalSOL @MortgageRenewalSOL_OneTwoTwo_Negative_Segmentation_TestData @SOL @ET04024
  Scenario Outline: Mortgage Renewal ET04024 SOL One Two Two Negative Segmentation test cases
    Given load data from "MortRen_SOL" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Testcases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Testcases>"
    Then insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Testcases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Testcases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Examples:
      | Testcases                                                                  |
      | N-SOL_T6_SOL_MOB_LAST_LOGIN_DT_ACCT_SUBSYS_ID = CA                         |
      | N-SOL_T6_SOL_MOB_LAST_LOGIN_DT_EDW_ACCT_STAT_CD = B                        |
      | N-SOL_T6_SOL_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN <  26                   |
      | N-SOL_T6_SOL_MOB_LAST_LOGIN_DT_CRNT_BAL_AMT < 20000                        |
      | N-SOL_T6_SOL_SOL_LAST_LOGIN_DT_ACCT_SUBSYS_ID = CA                         |
      | N-SOL_T6_SOL_SOL_LAST_LOGIN_DT_EDW_ACCT_STAT_CD = B                        |
      | N-SOL_T6_SOL_SOL_LAST_LOGIN_DT_AMORTIZATION_REMAIN <  26                   |
      | N-SOL_T6_SOL_SOL_LAST_LOGIN_DT_CRNT_BAL_AMT < 20000                        |
      | N-SOL_T6_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_ACCT_SUBSYS_ID = CA       |
      | N-SOL_T6_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_EDW_ACCT_STAT_CD = B      |
      | N-SOL_T6_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN <  26 |
      | N-SOL_T6_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_CRNT_BAL_AMT < 20000      |
      | N-SOL_T5_SOL_MOB_LAST_LOGIN_DT_ACCT_SUBSYS_ID = CA                         |
      | N-SOL_T5_SOL_MOB_LAST_LOGIN_DT_EDW_ACCT_STAT_CD = B                        |
      | N-SOL_T5_SOL_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN <  26                   |
      | N-SOL_T5_SOL_MOB_LAST_LOGIN_DT_CRNT_BAL_AMT < 20000                        |
      | N-SOL_T5_SOL_SOL_LAST_LOGIN_DT_ACCT_SUBSYS_ID = CA                         |
      | N-SOL_T5_SOL_SOL_LAST_LOGIN_DT_EDW_ACCT_STAT_CD = B                        |
      | N-SOL_T5_SOL_SOL_LAST_LOGIN_DT_AMORTIZATION_REMAIN <  26                   |
      | N-SOL_T5_SOL_SOL_LAST_LOGIN_DT_CRNT_BAL_AMT < 20000                        |
      | N-SOL_T5_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_ACCT_SUBSYS_ID = CA       |
      | N-SOL_T5_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_EDW_ACCT_STAT_CD = B      |
      | N-SOL_T5_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN <  26 |
      | N-SOL_T5_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_CRNT_BAL_AMT < 20000      |
      | N-SOL_T4_SOL_MOB_LAST_LOGIN_DT_ACCT_SUBSYS_ID = CA                         |
      | N-SOL_T4_SOL_MOB_LAST_LOGIN_DT_EDW_ACCT_STAT_CD = B                        |
      | N-SOL_T4_SOL_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN <  26                   |
      | N-SOL_T4_SOL_MOB_LAST_LOGIN_DT_CRNT_BAL_AMT < 20000                        |
      | N-SOL_T4_SOL_SOL_LAST_LOGIN_DT_ACCT_SUBSYS_ID = CA                         |
      | N-SOL_T4_SOL_SOL_LAST_LOGIN_DT_EDW_ACCT_STAT_CD = B                        |
      | N-SOL_T4_SOL_SOL_LAST_LOGIN_DT_AMORTIZATION_REMAIN <  26                   |
      | N-SOL_T4_SOL_SOL_LAST_LOGIN_DT_CRNT_BAL_AMT < 20000                        |
      | N-SOL_T4_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_ACCT_SUBSYS_ID = CA       |
      | N-SOL_T4_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_EDW_ACCT_STAT_CD = B      |
      | N-SOL_T4_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN <  26 |
      | N-SOL_T4_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_CRNT_BAL_AMT < 20000      |
      | N-SOL_T3_SOL_MOB_LAST_LOGIN_DT_ACCT_SUBSYS_ID = CA                         |
      | N-SOL_T3_SOL_MOB_LAST_LOGIN_DT_EDW_ACCT_STAT_CD = B                        |
      | N-SOL_T3_SOL_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN <  26                   |
      | N-SOL_T3_SOL_MOB_LAST_LOGIN_DT_CRNT_BAL_AMT < 20000                        |
      | N-SOL_T3_SOL_SOL_LAST_LOGIN_DT_ACCT_SUBSYS_ID = CA                         |
      | N-SOL_T3_SOL_SOL_LAST_LOGIN_DT_EDW_ACCT_STAT_CD = B                        |
      | N-SOL_T3_SOL_SOL_LAST_LOGIN_DT_AMORTIZATION_REMAIN <  26                   |
      | N-SOL_T3_SOL_SOL_LAST_LOGIN_DT_CRNT_BAL_AMT < 20000                        |
      | N-SOL_T3_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_ACCT_SUBSYS_ID = CA       |
      | N-SOL_T3_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_EDW_ACCT_STAT_CD = B      |
      | N-SOL_T3_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN <  26 |
      | N-SOL_T3_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_CRNT_BAL_AMT < 20000      |

  @MortgageRenewalSOL @MortgageRenewalSOL_TwoTwoThree_Negative_Segmentation_TestData @SOL @ET04024
  Scenario Outline: Mortgage Renewal ET04024 SOL Create test data for Two Two Three Negative Segmentation Test cases
    Given load data from "MortRen_SOL" excel sheet
    Given write different cid into "CUST_DIM" sheet for "<Test cases>" having "2" Customers
    Then insert Multiple customer information details in "CUST_DIM" table having "2" accounts
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write Mortgage cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "3" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "3" accounts
    Examples:
      | Test cases                                                    |
      | N-SOL_T6_SOL_MOB_LAST_LOGIN_DT_NULL_count=2                   |
      | N-SOL_T6_SOL_SOL_LAST_LOGIN_DT_NULL_count=2                   |
      | N-SOL_T6_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_count=2 |
      | N-SOL_T5_SOL_MOB_LAST_LOGIN_DT_NULL_count=2                   |
      | N-SOL_T5_SOL_SOL_LAST_LOGIN_DT_NULL_count=2                   |
      | N-SOL_T5_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_count=2 |
      | N-SOL_T4_SOL_MOB_LAST_LOGIN_DT_NULL_count=2                   |
      | N-SOL_T4_SOL_SOL_LAST_LOGIN_DT_NULL_count=2                   |
      | N-SOL_T4_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_count=2 |
      | N-SOL_T3_SOL_MOB_LAST_LOGIN_DT_NULL_count=2                   |
      | N-SOL_T3_SOL_SOL_LAST_LOGIN_DT_NULL_count=2                   |
      | N-SOL_T3_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_count=2 |

  @MortgageRenewalSOL @MortgageRenewalSOL_ThreeTwoFour_Customer_Negative_Segmentation_TestData @SOL @ET04024
  Scenario Outline: Mortgage Renewal ET04024 SOL Create test data for Three Two Four Customers Negative Segmentation Test cases
    Given load data from "MortRen_SOL" excel sheet
    Given write different cid into "CUST_DIM" sheet for "<Test cases>" having "3" Customers
    Then insert Multiple customer information details in "CUST_DIM" table having "3" accounts
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write Mortgage cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "4" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "4" accounts
    Examples:
      | Test cases                                               |
      | N-SOL_T6_SOL_MOB_LAST_LOGIN_DT_count>2                   |
      | N-SOL_T6_SOL_SOL_LAST_LOGIN_DT_count>2                   |
      | N-SOL_T6_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_count>2 |
      | N-SOL_T5_SOL_MOB_LAST_LOGIN_DT_count>2                   |
      | N-SOL_T5_SOL_SOL_LAST_LOGIN_DT_count>2                   |
      | N-SOL_T5_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_count>2 |
      | N-SOL_T4_SOL_MOB_LAST_LOGIN_DT_count>2                   |
      | N-SOL_T4_SOL_SOL_LAST_LOGIN_DT_count>2                   |
      | N-SOL_T4_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_count>2 |
      | N-SOL_T3_SOL_MOB_LAST_LOGIN_DT_count>2                   |
      | N-SOL_T3_SOL_SOL_LAST_LOGIN_DT_count>2                   |
      | N-SOL_T3_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_count>2 |