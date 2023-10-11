@MortgageRenewal_EML
Feature: Test Data Creation For Mortgage Renewal Email Channel


  @MortgageRenewalEmail @MortgageRenewalEmail_Positive_Generic_TestCases_SingleCustomer_OneTwoTwo_TestData @EMAIL @ET04024
  Scenario Outline: Mortgage Renewal ET04024 EMAIL Create test data for Single Customer One Two Two  Generic positive test cases
    Given load data from "MortRen_EML" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts

    Examples:
      | Test cases                                     |
      | Primary Customer_EMAIL_BANKRUPTCY_DT= NULL_SOL |
      | Primary Customer_EMAIL_BANKRUPTCY_DT= NULL_BOR |
      | EMAIL_Deceased_F = N for Primary Customer      |

  @MortgageRenewalEmail @MortgageRenewalEmail_Positive_Generic_TestCases_TwoCustomer_TwoTwoThree_TestData @EMAIL @ET04024
  Scenario Outline: Mortgage Renewal ET04024 EMAIL Create test data for TwoCustomers Two Two Three Generic positive test cases
    Given load data from "MortRen_EML" excel sheet
    Given write different cid into "CUST_DIM" sheet for "<Test cases>" having "2" Customers
    Then insert Multiple customer information details in "CUST_DIM" table having "2" accounts
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write Mortgage cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "3" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "3" accounts

    Examples:
      | Test cases                                                                             |
      | Primary Customer_EMAIL_BANKRUPTCY_DT= NULL_SOL AND CoBorrower_BANKRUPTCY_DT = NULL_COB |
      | Primary Customer_EMAIL_BANKRUPTCY_DT= NULL_SOL AND CoBorrower_BANKRUPTCY_DT = NULL_COS |
      | EMAIL_IP_AR_RELATN_TYPE_CD = SOL As Primary Customer COB As CoBorrower                 |
      | EMAIL_IP_AR_RELATN_TYPE_CD = SOL As Primary Customer COS As CoBorrower                 |
      | EMAIL_IP_AR_RELATN_TYPE_CD = BOR As Primary Customer COB As CoBorrower                 |
      | EMAIL_IP_AR_RELATN_TYPE_CD = BOR As Primary Customer COS As CoBorrower                 |
      | EMAIL_Deceased_F = N for COB                                                           |
      | EMAIL_Deceased_F = N for COS                                                           |

  @MortgageRenewalEmail @MortgageRenewalEmail_T6_Positive_Segmentation_OneTwoTwo_TestData @EMAIL @ET04024 @T6
  Scenario Outline: Mortgage Renewal ET04024 EMAIL T6 positive Segmentation One Two Two test cases
    Given load data from "MortRen_EML" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Examples:
      | Test cases                                                                                                                        |
      | EMAIL_T6_SOL_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN>26_CRNT_BAL_AMT>20000_Count<2                                                  |
      | EMAIL_T6_SOL_SOL_LAST_LOGIN_DT_AMORTIZATION_REMAIN>26_CRNT_BAL_AMT>20000_Count<2                                                  |
      | EMAIL_T6_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN>26_CRNT_BAL_AMT>20000_Count<2                                |
      | EMAIL_T5_SOL_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN>26_CRNT_BAL_AMT>20000_Count<2                                                  |
      | EMAIL_T5_SOL_SOL_LAST_LOGIN_DT_AMORTIZATION_REMAIN>26_CRNT_BAL_AMT>20000_Count<2                                                  |
      | EMAIL_T5_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN>26_CRNT_BAL_AMT>20000_Count<2                                |
      | EMAIL_T4_SOL_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN>26_CRNT_BAL_AMT>20000_Count<2                                                  |
      | EMAIL_T4_SOL_SOL_LAST_LOGIN_DT_AMORTIZATION_REMAIN>26_CRNT_BAL_AMT>20000_Count<2                                                  |
      | EMAIL_T4_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN>26_CRNT_BAL_AMT>20000_Count<2                                |
      | EMAIL_T3_SOL_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN>26_CRNT_BAL_AMT>20000_Count<2                                                  |
      | EMAIL_T3_SOL_SOL_LAST_LOGIN_DT_AMORTIZATION_REMAIN>26_CRNT_BAL_AMT>20000_Count<2                                                  |
      | EMAIL_T3_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN>26_CRNT_BAL_AMT>20000_Count<2                                |
      | EMAIL_T1_SOL_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN>26_CRNT_BAL_AMT>20000_Count<2_ASSIGNED_FA_ID = 7digit Number                   |
      | EMAIL_T1_SOL_SOL_LAST_LOGIN_DT_AMORTIZATION_REMAIN>26_CRNT_BAL_AMT>20000_Count<2_ASSIGNED_FA_ID = 7digit Number                   |
      | EMAIL_T1_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN>26_CRNT_BAL_AMT>20000_Count<2_ASSIGNED_FA_ID = 7digit Number |

  @MortgageRenewalEmail @MortgageRenewalEmail_T6_T5_T4_T3_T1_Positive_Segmentation_TwoTwoThree_TestData @EMAIL @ET04024 @T6 @T5 @T4 @T3 @T1
  Scenario Outline: Mortgage Renewal ET04024 EMAIL T6 T5 T4 T3 T1 Positive Segmentation Two Two Three positive test cases
    Given load data from "MortRen_EML" excel sheet
    Given write different cid into "CUST_DIM" sheet for "<Test cases>" having "2" Customers
    Then insert Multiple customer information details in "CUST_DIM" table having "2" accounts
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write Mortgage cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "3" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "3" accounts

    Examples:
      | Test cases                                                                                                                        |
      | EMAIL_T6_SOL_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN=26_CRNT_BAL_AMT=20000_Count=2                                                  |
      | EMAIL_T6_SOL_SOL_LAST_LOGIN_DT_AMORTIZATION_REMAIN=26_CRNT_BAL_AMT=20000_Count=2                                                  |
      | EMAIL_T6_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN=26_CRNT_BAL_AMT=20000_Count=2                                |
      | EMAIL_T5_SOL_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN=26_CRNT_BAL_AMT=20000_Count=2                                                  |
      | EMAIL_T5_SOL_SOL_LAST_LOGIN_DT_AMORTIZATION_REMAIN=26_CRNT_BAL_AMT=20000_Count=2                                                  |
      | EMAIL_T5_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN=26_CRNT_BAL_AMT=20000_Count=2                                |
      | EMAIL_T4_SOL_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN=26_CRNT_BAL_AMT=20000_Count=2                                                  |
      | EMAIL_T4_SOL_SOL_LAST_LOGIN_DT_AMORTIZATION_REMAIN=26_CRNT_BAL_AMT=20000_Count=2                                                  |
      | EMAIL_T4_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN=26_CRNT_BAL_AMT=20000_Count=2                                |
      | EMAIL_T3_SOL_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN=26_CRNT_BAL_AMT=20000_Count=2                                                  |
      | EMAIL_T3_SOL_SOL_LAST_LOGIN_DT_AMORTIZATION_REMAIN=26_CRNT_BAL_AMT=20000_Count=2                                                  |
      | EMAIL_T3_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN=26_CRNT_BAL_AMT=20000_Count=2                                |
      | EMAIL_T1_SOL_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN=26_CRNT_BAL_AMT=20000_Count=2_ASSIGNED_FA_ID = 7digit Number                   |
      | EMAIL_T1_SOL_SOL_LAST_LOGIN_DT_AMORTIZATION_REMAIN=26_CRNT_BAL_AMT=20000_Count=2_ASSIGNED_FA_ID = 7digit Number                   |
      | EMAIL_T1_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN=26_CRNT_BAL_AMT=20000_Count=2_ASSIGNED_FA_ID = 7digit Number |

  @MortgageRenewalEmail @MortgageRenewalEmail_TwoOneTwo_PositiveTestCases @EMAIL @ET04024
  Scenario Outline: Mortgage Renewal ET04024 EMAIL Create test data for TwoOneTwo Test cases
    Given load data from "MortRen_EML" excel sheet
    Given write different cid into "CUST_DIM" sheet for "<Test cases>" having "2" Customers
    Then insert Multiple customer information details in "CUST_DIM" table having "2" accounts
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "1" accounts
    Then insert customer account details in "ACCT_DIM" table having "1" accounts
    When write Mortgage twoOneTwo cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Examples:
      | Test cases                                                                                                 |
      | EMAIL_T6_NONSOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_AMORTIZATION_REMAIN=26_CRNT_BAL_AMT=20000_Count=2 |
      | EMAIL_T3_NONSOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_AMORTIZATION_REMAIN=26_CRNT_BAL_AMT=20000_Count=2 |

  @MortgageRenewalEmail @MortgageRenewalEmail_Single_Customer_One_One_One_TestData @EMAIL @ET04024 @T6 @T3
  Scenario Outline: Mortgage Renewal ET04024 EMAIL Single Customer One One One test cases test data
    Given load data from "MortRen_EML" excel sheet
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
      | Test cases                                                                                                 |
      | EMAIL_T6_NONSOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_AMORTIZATION_REMAIN>26_CRNT_BAL_AMT>20000_Count<2 |
      | EMAIL_T3_NONSOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_AMORTIZATION_REMAIN>26_CRNT_BAL_AMT>20000_Count<2 |

  @MortgageRenewalEmail @MortgageRenewalEmail_T6_Negative_Generic_OneTwoTwo_TestData @EMAIL @ET04024 @T6
  Scenario Outline: Mortgage Renewal ET04024 EMAIL T6 Negative Generic One Two Two test cases
    Given load data from "MortRen_EML" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Examples:
      | Test cases                                                                             |
      | N-Primary Customer_EMAIL_BANKRUPTCY_DT!= NULL_SOL                                      |
      | N-Primary Customer_EMAIL_BANKRUPTCY_DT!= NULL_BOR                                      |
      | N-EMAIL_CUST_TP_CD!=PSNL                                                               |
      | N-EMAIL_CUST_TP_CD=NULL                                                                |
      | N-EMAIL_Deceased_F=Y for Primary Customer                                              |
      | N-EMAIL_Deceased_F=NULL for Primary Customer                                           |
      | N-EMAIL_LANG_CD = K                                                                    |
      | N-EMAIL_LANG_CD = NE                                                                   |
      | N-EMAIL_LANG_CD = NULL                                                                 |
      | N-EMAIL_CR_RSK_IND = D                                                                 |
      | N-EMAIL_CR_RSK_IND = E                                                                 |
      | N-EMAIL_RENEW_LIMITED_F = 1                                                            |
      | N-EMAIL_RENEW_LIMITED_F = 2                                                            |
      | N-EMAIL_CASHBACK_F  = Y                                                                |
      | N-EMAIL_MORT_NOT_FRCLSR_F = N                                                          |
      | N-EMAIL_SRC_SYS_PRD_CD = 911                                                           |
      | N-EMAIL_SRC_SYS_PRD_CD = 931                                                           |
      | N-EMAIL_SRC_SYS_PRD_CD = 951                                                           |
      | N-EMAIL_INTEREST_RATE = 2                                                              |
      | N-EMAIL_INTEREST_RATE < 2                                                              |
      | N-EMAIL_MAT_DT - Current Date != (7,6,5,4,2)                                           |
      | N-EMAIL_AMORTIZATION_REMAIN < 26                                                       |
      | N-EMAIL_MORT_PB_TRANSIT_REGION != (2,3,4,5,6,7)                                        |
      | N-EMAIL_MORT_ARREARS_MONTHS > 0                                                        |
      | N-EMAIL_MORT_ADJ_CONTR_AMORT_REMAIN_MONTHS = NULL                                      |
      | N-EMAIL_MORT_FUND_CODE = (1900, 1901, 1902, 1912, 1916, 1922)                          |
      | N-EMAIL_MORT_FUND_CODE = (1904, 1905, 1910, 1924) and ACCT_DIM.SERV_TRNST_NUM = 12088) |
      | N-EMAIL_SRC_ACCT_STAT_CD = NULL                                                        |
      | N-EMAIL_SRC_ACCT_STAT_CD = Open                                                        |
      | N-EMAIL_MORT_COMM_TYPE != Residential                                                  |
      | N-EMAIL_MORT_COMM_TYPE = NULL                                                          |
      | N-EMAIL_IP_AR_RELATN_TYPE_CD = BLANK                                                   |
      | N-EMAIL_IP_AR_RELATN_TYPE_CD = NULL                                                    |
      | N-EMAIL_IP_AR_RELATN_TYPE_CD = Zero                                                    |
      | N-EMAIL_ACCT_SUBSYS_ID != UO                                                           |
      | N-EMAIL_MORTGAGE_OWNERSHIP_BRANCH_TRANSIT_NUM  = NULL                                  |
      | N-EMAIL_PRIM_EMAIL_ADDR  = NULL                                                        |
      | N-EMAIL_VLD_EMAIL_F = N                                                                |
      | N-EMAIL_VLD_EMAIL_F = NULL                                                             |
      | N-EMAIL_Do_NOT_EMAIL_F = Y                                                             |
      | N-EMAIL_Do_NOT_EMAIL_F = NULL                                                          |

  @MortgageRenewalEmail @MortgageRenewalEmail_T6_T5_T4_T3_T1_Negative_Segmentation_OneTwoTwo_TestData @EMAIL @ET04024 @T6 @T5 @T4 @T @T1
  Scenario Outline: Mortgage Renewal ET04024 EMAIL T6 T5 T4 T3 T1 Negative Segmentation One Two Two test cases
    Given load data from "MortRen_EML" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Examples:
      | Test cases                                                                                                     |
      | N-EMAIL_T6_SOL_MOB_LAST_LOGIN_DT_ACCT_SUBSYS_ID = CA                                                           |
      | N-EMAIL_T6_SOL_MOB_LAST_LOGIN_DT_EDW_ACCT_STAT_CD = B                                                          |
      | N-EMAIL_T6_SOL_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN <  26                                                     |
      | N-EMAIL_T6_SOL_MOB_LAST_LOGIN_DT_CRNT_BAL_AMT < 20000                                                          |
      | N-EMAIL_T6_SOL_SOL_LAST_LOGIN_DT_ACCT_SUBSYS_ID = CA                                                           |
      | N-EMAIL_T6_SOL_SOL_LAST_LOGIN_DT_EDW_ACCT_STAT_CD = B                                                          |
      | N-EMAIL_T6_SOL_SOL_LAST_LOGIN_DT_AMORTIZATION_REMAIN <  26                                                     |
      | N-EMAIL_T6_SOL_SOL_LAST_LOGIN_DT_CRNT_BAL_AMT < 20000                                                          |
      | N-EMAIL_T6_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_ACCT_SUBSYS_ID = CA                                         |
      | N-EMAIL_T6_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_EDW_ACCT_STAT_CD = B                                        |
      | N-EMAIL_T6_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN <  26                                   |
      | N-EMAIL_T6_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_CRNT_BAL_AMT < 20000                                        |
      | N-EMAIL_T5_SOL_MOB_LAST_LOGIN_DT_ACCT_SUBSYS_ID = CA                                                           |
      | N-EMAIL_T5_SOL_MOB_LAST_LOGIN_DT_EDW_ACCT_STAT_CD = B                                                          |
      | N-EMAIL_T5_SOL_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN <  26                                                     |
      | N-EMAIL_T5_SOL_MOB_LAST_LOGIN_DT_CRNT_BAL_AMT < 20000                                                          |
      | N-EMAIL_T5_SOL_SOL_LAST_LOGIN_DT_ACCT_SUBSYS_ID = CA                                                           |
      | N-EMAIL_T5_SOL_SOL_LAST_LOGIN_DT_EDW_ACCT_STAT_CD = B                                                          |
      | N-EMAIL_T5_SOL_SOL_LAST_LOGIN_DT_AMORTIZATION_REMAIN <  26                                                     |
      | N-EMAIL_T5_SOL_SOL_LAST_LOGIN_DT_CRNT_BAL_AMT < 20000                                                          |
      | N-EMAIL_T5_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_ACCT_SUBSYS_ID = CA                                         |
      | N-EMAIL_T5_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_EDW_ACCT_STAT_CD = B                                        |
      | N-EMAIL_T5_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN <  26                                   |
      | N-EMAIL_T5_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_CRNT_BAL_AMT < 20000                                        |
      | N-EMAIL_T4_SOL_MOB_LAST_LOGIN_DT_ACCT_SUBSYS_ID = CA                                                           |
      | N-EMAIL_T4_SOL_MOB_LAST_LOGIN_DT_EDW_ACCT_STAT_CD = B                                                          |
      | N-EMAIL_T4_SOL_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN <  26                                                     |
      | N-EMAIL_T4_SOL_MOB_LAST_LOGIN_DT_CRNT_BAL_AMT < 20000                                                          |
      | N-EMAIL_T4_SOL_SOL_LAST_LOGIN_DT_ACCT_SUBSYS_ID = CA                                                           |
      | N-EMAIL_T4_SOL_SOL_LAST_LOGIN_DT_EDW_ACCT_STAT_CD = B                                                          |
      | N-EMAIL_T4_SOL_SOL_LAST_LOGIN_DT_AMORTIZATION_REMAIN <  26                                                     |
      | N-EMAIL_T4_SOL_SOL_LAST_LOGIN_DT_CRNT_BAL_AMT < 20000                                                          |
      | N-EMAIL_T4_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_ACCT_SUBSYS_ID = CA                                         |
      | N-EMAIL_T4_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_EDW_ACCT_STAT_CD = B                                        |
      | N-EMAIL_T4_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN <  26                                   |
      | N-EMAIL_T4_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_CRNT_BAL_AMT < 20000                                        |
      | N-EMAIL_T3_SOL_MOB_LAST_LOGIN_DT_ACCT_SUBSYS_ID = CA                                                           |
      | N-EMAIL_T3_SOL_MOB_LAST_LOGIN_DT_EDW_ACCT_STAT_CD = B                                                          |
      | N-EMAIL_T3_SOL_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN <  26                                                     |
      | N-EMAIL_T3_SOL_MOB_LAST_LOGIN_DT_CRNT_BAL_AMT < 20000                                                          |
      | N-EMAIL_T3_SOL_SOL_LAST_LOGIN_DT_ACCT_SUBSYS_ID = CA                                                           |
      | N-EMAIL_T3_SOL_SOL_LAST_LOGIN_DT_EDW_ACCT_STAT_CD = B                                                          |
      | N-EMAIL_T3_SOL_SOL_LAST_LOGIN_DT_AMORTIZATION_REMAIN <  26                                                     |
      | N-EMAIL_T3_SOL_SOL_LAST_LOGIN_DT_CRNT_BAL_AMT < 20000                                                          |
      | N-EMAIL_T3_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_ACCT_SUBSYS_ID = CA                                         |
      | N-EMAIL_T3_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_EDW_ACCT_STAT_CD = B                                        |
      | N-EMAIL_T3_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN <  26                                   |
      | N-EMAIL_T3_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_CRNT_BAL_AMT < 20000                                        |
      | N-EMAIL_T1_SOL_MOB_LAST_LOGIN_DT_ACCT_SUBSYS_ID = CA_ASSIGNED_FA_ID = 7 digit Numberic                         |
      | N-EMAIL_T1_SOL_MOB_LAST_LOGIN_DT_EDW_ACCT_STAT_CD = B_ASSIGNED_FA_ID = 7 digit Numberic                        |
      | N-EMAIL_T1_SOL_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN <  26_ASSIGNED_FA_ID = 7 digit Numberic                   |
      | N-EMAIL_T1_SOL_MOB_LAST_LOGIN_DT_CRNT_BAL_AMT < 20000_ASSIGNED_FA_ID = 7 digit Numberic                        |
      | N-EMAIL_T1_SOL_MOB_LAST_LOGIN_DT_ASSIGNED_FA_ID = NULL                                                         |
      | N-EMAIL_T1_SOL_SOL_LAST_LOGIN_DT_ACCT_SUBSYS_ID = CA_ASSIGNED_FA_ID = 7 digit Numberic                         |
      | N-EMAIL_T1_SOL_SOL_LAST_LOGIN_DT_EDW_ACCT_STAT_CD = B_ASSIGNED_FA_ID = 7 digit Numberic                        |
      | N-EMAIL_T1_SOL_SOL_LAST_LOGIN_DT_AMORTIZATION_REMAIN <  26_ASSIGNED_FA_ID = 7 digit Numberic                   |
      | N-EMAIL_T1_SOL_SOL_LAST_LOGIN_DT_CRNT_BAL_AMT < 20000_ASSIGNED_FA_ID = 7 digit Numberic                        |
      | N-EMAIL_T1_SOL_SOL_LAST_LOGIN_DT_ASSIGNED_FA_ID = NULL                                                         |
      | N-EMAIL_T1_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_ACCT_SUBSYS_ID = CA_ASSIGNED_FA_ID = 7 digit Numberic       |
      | N-EMAIL_T1_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_EDW_ACCT_STAT_CD = B_ASSIGNED_FA_ID = 7 digit Numberic      |
      | N-EMAIL_T1_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_AMORTIZATION_REMAIN <  26_ASSIGNED_FA_ID = 7 digit Numberic |
      | N-EMAIL_T1_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_CRNT_BAL_AMT < 20000_ASSIGNED_FA_ID = 7 digit Numberic      |
      | N-EMAIL_T1_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_ASSIGNED_FA_ID = NULL                                       |

  @MortgageRenewalEmail @MortgageRenewalEmail_Negative_TwoTwoThree_TestData @EMAIL @ET04024 @T6
  Scenario Outline: Mortgage Renewal ET04024 EMAIL T6 Negative Two Two Three test cases
    Given load data from "MortRen_EML" excel sheet
    Given write different cid into "CUST_DIM" sheet for "<Test cases>" having "2" Customers
    Then insert Multiple customer information details in "CUST_DIM" table having "2" accounts
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write Mortgage cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "3" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "3" accounts

    Examples:
      | Test cases                                                                               |
      | N-Primary Customer_EMAIL_BANKRUPTCY_DT= NULL_SOL AND CoBorrower_BANKRUPTCY_DT!= NULL_COB |
      | N-Primary Customer_EMAIL_BANKRUPTCY_DT= NULL_SOL AND CoBorrower_BANKRUPTCY_DT!= NULL_COS |
      | N-Primary Customer_EMAIL_BANKRUPTCY_DT!= NULL_SOL AND CoBorrower_BANKRUPTCY_DT= NULL_COB |
      | N-Primary Customer_EMAIL_BANKRUPTCY_DT!= NULL_SOL AND CoBorrower_BANKRUPTCY_DT= NULL_COS |
      | N-EMAIL_Deceased_F = Y for COBorrower_COB                                                |
      | N-EMAIL_Deceased_F = NULL for CoBorrower_COB                                             |
      | N-EMAIL_Deceased_F = Y for COBorrower_COS                                                |
      | N-EMAIL_Deceased_F = NULL for CoBorrower_COS                                             |

  @MortgageRenewalEmail @MortgageRenewalEmail_ThreeTwoFour_Negative_Segmentation_TestData @EMAIL @ET04024
  Scenario Outline: Mortgage Renewal ET04024 EMAIL Create test data for Three Two Four Customers Negative Segmentation Test cases
    Given load data from "MortRen_EML" excel sheet
    Given write different cid into "CUST_DIM" sheet for "<Test cases>" having "3" Customers
    Then insert Multiple customer information details in "CUST_DIM" table having "3" accounts
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write Mortgage cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "4" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "4" accounts
    Examples:
      | Test cases                                                                                   |
      | N-EMAIL_T6_SOL_MOB_LAST_LOGIN_DT_count>2                                                     |
      | N-EMAIL_T6_SOL_SOL_LAST_LOGIN_DT_count>2                                                     |
      | N-EMAIL_T6_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_count>2                                   |
      | N-EMAIL_T5_SOL_MOB_LAST_LOGIN_DT_count>2                                                     |
      | N-EMAIL_T5_SOL_SOL_LAST_LOGIN_DT_count>2                                                     |
      | N-EMAIL_T5_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_count>2                                   |
      | N-EMAIL_T4_SOL_MOB_LAST_LOGIN_DT_count>2                                                     |
      | N-EMAIL_T4_SOL_SOL_LAST_LOGIN_DT_count>2                                                     |
      | N-EMAIL_T4_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_count>2                                   |
      | N-EMAIL_T3_SOL_MOB_LAST_LOGIN_DT_count>2                                                     |
      | N-EMAIL_T3_SOL_SOL_LAST_LOGIN_DT_count>2                                                     |
      | N-EMAIL_T3_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_count>2                                   |
      | N-EMAIL_T1_SOL_MOB_LAST_LOGIN_DT_count>2_ASSIGNED_FA_ID = 7 digit Numberic                   |
      | N-EMAIL_T1_SOL_SOL_LAST_LOGIN_DT_count>2_ASSIGNED_FA_ID = 7 digit Numberic                   |
      | N-EMAIL_T1_SOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_count>2_ASSIGNED_FA_ID = 7 digit Numberic |

  @MortgageRenewalEmail @MortgageRenewalEmail_Single_Customer_NONSOLSegmentation_TestData @EMAIL @ET04024 @T6 @T3
  Scenario Outline: Mortgage Renewal ET04024 EMAIL Single Customer NONSOL One One One test cases test data
    Given load data from "MortRen_EML" excel sheet
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
      | Test cases                                                                           |
      | N-EMAIL_T3_NONSOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_Value                          |
      | N-EMAIL_T3_NONSOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_AMORTIZATION_REMAIN  < 26 |
      | N-EMAIL_T3_NONSOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_CRNT_BAL_AMT < 20000      |
      | N-EMAIL_T6_NONSOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_Value                          |
      | N-EMAIL_T6_NONSOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_AMORTIZATION_REMAIN  < 26 |
      | N-EMAIL_T6_NONSOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_CRNT_BAL_AMT < 20000      |


  @MortgageRenewalEMAIL @MortgageRenewalEMAIL_ThreeOneThree_Customer_NONSOL_Negative_Segmentation_TestData @EMAIL @ET04024
  Scenario Outline: Mortgage Renewal ET04024 EMAIL Create test data for Three One Three Customers NONSOL Negative Segmentation Test cases Test Data
    Given load data from "MortRen_EML" excel sheet
    Given write different cid into "CUST_DIM" sheet for "<Test cases>" having "3" Customers
    Then insert Multiple customer information details in "CUST_DIM" table having "3" accounts
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "1" accounts
    Then insert customer account details in "ACCT_DIM" table having "1" accounts
    When write Mortgage twoOneTwo cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "3" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "3" accounts

    Examples:
      | Test cases                                                           |
      | N-EMAIL_T3_NONSOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_Count > 2 |
      | N-EMAIL_T6_NONSOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_Count > 2 |