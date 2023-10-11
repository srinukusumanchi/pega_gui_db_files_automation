Feature: Test Data Creation For Mortgage Renewals SB Channel

  @MortgageRenewalSB @MortgageRenewalSB_111_Positive_TestData @SB @ET04024
  Scenario Outline: Mortgage Renewal ET04024 SB Create test data for 111 NONSOL test cases
    Given load data from "MortRen_SB" excel sheet
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
      | Test cases                                                                                              |
      | SB_Primary Customer_BANKRUPTCY_DT= NULL_SOL                                                             |
      | SB_Primary Customer_BANKRUPTCY_DT= NULL_BOR                                                             |
      | SB_Deceased_F = N for Primary Customer                                                                  |
      | SB_CUST_DIM.ASSIGNED_FA_TRANSIT is not NULL                                                             |
      | SB_CUST_DIM.RESP_TRNST_NUM And ACCT_DIM.SERV_TRNST_NUM                                                  |
      | SB_T6_NONSOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_AMORTIZATION_REMAIN>26_CRNT_BAL_AMT>20000_Count<2 |
      | SB_T6_NONSOLX_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_AMORTIZATION_REMAIN<26_AMORTIZATION_REMAIN>6     |
      | N-SB_T6_NONSOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_Value                                                |
      | N-SB_T6_NONSOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_AMORTIZATION_REMAIN  < 26                       |
      | N-SB_T6_NONSOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_CRNT_BAL_AMT < 20000                            |

  @MortgageRenewalSB @MortgageRenewalSB_TwoOneTwo_Positive_TestCases @SB @ET04024
  Scenario Outline: Mortgage Renewal ET04024 SB Create test data for TwoOneTwo Test cases
    Given load data from "MortRen_SB" excel sheet
    Given write different cid into "CUST_DIM" sheet for "<Test cases>" having "2" Customers
    Then insert Multiple customer information details in "CUST_DIM" table having "2" accounts
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "1" accounts
    Then insert customer account details in "ACCT_DIM" table having "1" accounts
    When write Mortgage twoOneTwo cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Examples:
      | Test cases                                                                                              |
      | Primary Customer_SB_BANKRUPTCY_DT= NULL_SOL AND CoBorrower_BANKRUPTCY_DT = NULL_COB                     |
      | Primary Customer_SB_BANKRUPTCY_DT= NULL_SOL AND CoBorrower_BANKRUPTCY_DT = NULL_COS                     |
      | SB_IP_AR_RELATN_TYPE_CD = SOL As Primary Customer COB As CoBorrower                                     |
      | SB_IP_AR_RELATN_TYPE_CD = SOL As Primary Customer COS As CoBorrower                                     |
      | SB_IP_AR_RELATN_TYPE_CD = BOR As Primary Customer COB As CoBorrower                                     |
      | SB_IP_AR_RELATN_TYPE_CD = BOR As Primary Customer COS As CoBorrower                                     |
      | SB_Deceased_F = N for COB                                                                               |
      | SB_Deceased_F = N for COS                                                                               |
      | SB_T6_NONSOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_AMORTIZATION_REMAIN=26_CRNT_BAL_AMT=20000_Count=2 |
      | N-SB_BANKRUPTCY_DT= NULL_SOL AND CoBorrower_BANKRUPTCY_DT!= NULL_COB                                    |
      | N-SB_BANKRUPTCY_DT= NULL_SOL AND CoBorrower_BANKRUPTCY_DT!= NULL_COS                                    |
      | N-SB_BANKRUPTCY_DT!= NULL_SOL AND CoBorrower_BANKRUPTCY_DT= NULL_COB                                    |
      | N-SB_BANKRUPTCY_DT!= NULL_SOL AND CoBorrower_BANKRUPTCY_DT= NULL_COS                                    |
      | N-SB_Deceased_F = Y for COBorrower                                                                      |
      | N-SB_Deceased_F = NULL for CoBorrower                                                                   |

  @MortgageRenewalSB @MortgageRenewalSB_T6_OneTwoTwo_Positive_Segmentation_TestData @SB @ET04024 @T6
  Scenario Outline: Mortgage Renewal ET04024 SB T6 Positive Segmentation One Two Two test cases
    Given load data from "MortRen_SB" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Testcases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Testcases>"
    Then insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Testcases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Testcases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Examples:
      | Testcases                                                                          |
#      | SB_T6_SOL_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN>26_CRNT_BAL_AMT>20000_Count<2                   |
#      | SB_T6_SOL_SOL_LAST_LOGIN_DT_AMORTIZATION_REMAIN>26_CRNT_BAL_AMT>20000_Count<2                   |
#      | SB_T6_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN>26_CRNT_BAL_AMT>20000_Count<2 |
#      | SB_T6_SOLX_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN Between 6 To 26                                |
#      | SB_T6_SOLX_SOL_LAST_LOGIN_DT_AMORTIZATION_REMAIN Between 6 To 26                                |
      | SB_T6_SOLX_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN Between 6 To 26 |
#      | N-SB_T6_SOL_MOB_LAST_LOGIN_DT_ACCT_SUBSYS_ID = CA                                               |
#      | N-SB_T6_SOL_MOB_LAST_LOGIN_DT_EDW_ACCT_STAT_CD = B                                              |
#      | N-SB_T6_SOL_MOB_LAST_LOGIN_DT_=NULL                                                             |
#      | N-SB_T6_SOL_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN <  26                                         |
#      | N-SB_T6_SOL_MOB_LAST_LOGIN_DT_CRNT_BAL_AMT < 20000                                              |
#      | N-SB_T6_SOL_SOL_LAST_LOGIN_DT_ACCT_SUBSYS_ID = CA                                               |
#      | N-SB_T6_SOL_SOL_LAST_LOGIN_DT_EDW_ACCT_STAT_CD = B                                              |
#      | N-SB_T6_SOL_SOL_LAST_LOGIN_DT_=NULL                                                             |
#      | N-SB_T6_SOL_SOL_LAST_LOGIN_DT_AMORTIZATION_REMAIN <  26                                         |
#      | N-SB_T6_SOL_SOL_LAST_LOGIN_DT_CRNT_BAL_AMT < 20000                                              |
#      | N-SB_T6_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_ACCT_SUBSYS_ID = CA                             |
#      | N-SB_T6_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_EDW_ACCT_STAT_CD = B                            |
#      | N-SB_T6_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_=NULL                                           |
#      | N-SB_T6_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN <  26                       |
#      | N-SB_T6_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_CRNT_BAL_AMT < 20000                            |
#      | N-SB_T6_SOLX_MOB_LAST_LOGIN_DT_ACCT_SUBSYS_ID = CA                                              |
#      | N-SB_T6_SOLX_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN > 26                                         |
#      | N-SB_T6_SOLX_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN < 6                                          |
#      | N-SB_T6_SOLX_SOL_LAST_LOGIN_DT_ACCT_SUBSYS_ID = CA                                              |
#      | N-SB_T6_SOLX_SOL_LAST_LOGIN_DT_AMORTIZATION_REMAIN > 26                                         |
#      | N-SB_T6_SOLX_SOL_LAST_LOGIN_DT_AMORTIZATION_REMAIN < 6                                          |

  @MortgageRenewalSB @MortgageRenewalSB_TwoTwoThree_Positive_Segmentation_TestData @SB @ET04024
  Scenario Outline: Mortgage Renewal ET04024 SB Create test data for Two Two Three Positive Segmentation Test cases
    Given load data from "MortRen_SB" excel sheet
    Given write different cid into "CUST_DIM" sheet for "<Test cases>" having "2" Customers
    Then insert Multiple customer information details in "CUST_DIM" table having "2" accounts
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write Mortgage cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "3" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "3" accounts
    Examples:
      | Test cases                                                                    |
      | SB_T6_SOL_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN=26_CRNT_BAL_AMT=20000_Count=2 |
#      | SB_T6_SOL_SOL_LAST_LOGIN_DT_AMORTIZATION_REMAIN=26_CRNT_BAL_AMT=20000_Count=2                   |
#      | SB_T6_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN=26_CRNT_BAL_AMT=20000_Count=2 |

  @MortgageRenewalSB @MortgageRenewalSB_ThreeTwoFour_Customer_TestData @SB @ET04024
  Scenario Outline: Mortgage Renewal ET04024 SB Create test data for Three Two Four Customers Test cases
    Given load data from "MortRen_SB" excel sheet
    Given write different cid into "CUST_DIM" sheet for "<Test cases>" having "3" Customers
    Then insert Multiple customer information details in "CUST_DIM" table having "3" accounts
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write Mortgage cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "4" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "4" accounts
    Examples:
      | Test cases                                                                                                              |
      | SB_T6_SOLX_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN Between 6 To 26 OR CRNT_BAL_AMT < 20000 OR Count > 2                   |
      | SB_T6_SOLX_SOL_LAST_LOGIN_DT_AMORTIZATION_REMAIN Between 6 To 26 OR CRNT_BAL_AMT < 20000 OR Count > 2                   |
      | SB_T6_SOLX_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN Between 6 To 26 OR CRNT_BAL_AMT < 20000 OR Count > 2 |
      | N-SB_T6_SOL_MOB_LAST_LOGIN_DT_Count>2                                                                                   |
      | N-SB_T6_SOL_SOL_LAST_LOGIN_DT_Count>2                                                                                   |
      | N-SB_T6_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_Count>2                                                                 |
      | N-SB_T6_SOLX_MOB_LAST_LOGIN_DT_NULL_AMORTIZATION_REMAIN Between 6 to 26 OR CRNT_BAL_AMT < 20000 OR Count > 2            |
      | N-SB_T6_SOLX_SOL_LAST_LOGIN_DT_NULL_AMORTIZATION_REMAIN Between 6 to 26 OR CRNT_BAL_AMT < 20000 OR Count > 2            |

  @MortgageRenewalSB @MortgageRenewalSB_ThreeOneThree_Customer_TestData @SB @ET04024
  Scenario Outline: Mortgage Renewal ET04024 SB Create test data for Three One Three Customers Test cases
    Given load data from "MortRen_SB" excel sheet
    Given write different cid into "CUST_DIM" sheet for "<Test cases>" having "3" Customers
    Then insert Multiple customer information details in "CUST_DIM" table having "3" accounts
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "1" accounts
    Then insert customer account details in "ACCT_DIM" table having "1" accounts
    When write Mortgage twoOneTwo cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "3" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "3" accounts

    Examples:
      | Test cases                                                                                                             |
      | SB_T6_NONSOLX_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_AMORTIZATION_REMAIN Between 6 To26_CRNT_BAL_AMT<20000AndCount>2 |
      | N-SB_T6_NONSOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_Count > 2                                                      |

  @MortgageRenewalSB @MortgageRenewalSB_111NONSOL_Negative_TestData @SB @ET04024
  Scenario Outline: Mortgage Renewal ET04024 SB Create test data for 111 NONSOL Negative test cases
    Given load data from "MortRen_SB" excel sheet
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
      | Test cases                                                                                             |
      | N-SB_Primary Customer_BANKRUPTCY_DT!= NULL_SOL                                                         |
      | N-SB_Primary Customer_BANKRUPTCY_DT!= NULL_BOR                                                         |
      | N-SB_CUST_TP_CD != PSNL                                                                                |
      | N-SB_CUST_TP_CD = NULL                                                                                 |
      | N-SB_Deceased_F = Y for Primary Customer                                                               |
      | N-SB_Deceased_F = NULL for Primary Customer                                                            |
      | N-SB_LANG_CD = K                                                                                       |
      | N-SB_LANG_CD = NE                                                                                      |
      | N-SB_LANG_CD = NULL                                                                                    |
      | N-SB_CR_RSK_IND = D                                                                                    |
      | N-SB_CR_RSK_IND = E                                                                                    |
      | N-SB_RENEW_LIMITED_F = 1                                                                               |
      | N-SB_RENEW_LIMITED_F = 2                                                                               |
      | N-SB_CASHBACK_F  = Y                                                                                   |
      | N-SB_MORT_NOT_FRCLSR_F = N                                                                             |
      | N-SB_SRC_SYS_PRD_CD = 911                                                                              |
      | N-SB_SRC_SYS_PRD_CD = 931                                                                              |
      | N-SB_SRC_SYS_PRD_CD = 951                                                                              |
      | N-SB_INTEREST_RATE = 0                                                                                 |
      | N-SB_INTEREST_RATE < 0                                                                                 |
      | N-SB_MAT_DT - Current Date != (7,4)                                                                    |
      | N-SB_MAT_DT - Current Date = NULL                                                                      |
      | N-SB_AMORTIZATION_REMAIN < 26                                                                          |
      | N-SB_MORT_PB_TRANSIT_REGION != (2,3,4,5,6,7)                                                           |
      | N-SB_MORT_ARREARS_MONTHS > 0                                                                           |
      | N-SB_MORT_ADJ_CONTR_AMORT_REMAIN_MONTHS = NULL                                                         |
      | N-SB_MORT_FUND_CODE = (1900, 1901, 1902, 1912, 1916, 1922)                                             |
      | N-SB_MORT_FUND_CODE = (1904, 1905, 1910, 1924) and ACCT_DIM.SERV_TRNST_NUM = 12088)                    |
      | N-SB_SRC_ACCT_STAT_CD = NULL                                                                           |
      | N-SB_SRC_ACCT_STAT_CD = Open                                                                           |
      | N-SB_MORT_COMM_TYPE != Residential                                                                     |
      | N-SB_MORT_COMM_TYPE = NULL                                                                             |
      | N-SB_IP_AR_RELATN_TYPE_CD = BLANK                                                                      |
      | N-SB_IP_AR_RELATN_TYPE_CD = NULL                                                                       |
      | N-SB_IP_AR_RELATN_TYPE_CD = ZERO                                                                       |
      | N-SB_ACCT_SUBSYS_ID != UO                                                                              |
      | N-SB_ACCT_DIM.SERV_TRNST_NUM = NULL                                                                    |
      | N-SB_CUST_DIM.CUST_AGE = NULL                                                                          |
      | N-SB_CUST_DIM.BUSINESSEFFECTIVEDATE = NULL                                                             |
      | N-SB_T6_NONSOLX_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_Value_AMORTIZATION_REMAIN<26_AMORTIZATION_REMAIN>6 |
      | N-SB_T6_NONSOLX_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_AMORTIZATION_REMAIN>26                        |
      | N-SB_T6_NONSOLX_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_AMORTIZATION_REMAIN<6                         |

