Feature: Test Data Creation For Mortgage Renewal DML Channel


  @MortgageRenewalDML @MortgageRenewalDML_Single_Customer_One_One_One_TestData @DML @ET04024 @T6
  Scenario Outline: Mortgage Renewal ET04024 DML Single Customer One One One test cases test data
    Given load data from "MortRen_DML" excel sheet
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
      | DM_Primary Customer_BANKRUPTCY_DT= NULL_SOL                                                             |
      | DM_Primary Customer_BANKRUPTCY_DT= NULL_BOR                                                             |
      | DM_Deceased_F = N for Primary Customer                                                                  |
      | DM_T6_NONSOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_AMORTIZATION_REMAIN>26_CRNT_BAL_AMT>20000_Count<2 |
      | DM_T3_NONSOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_AMORTIZATION_REMAIN>26_CRNT_BAL_AMT>20000_Count<2 |


  @MortgageRenewalDML @MortgageRenewalDML_TwoOneTwo_PositiveTestCases @DML @ET04024
  Scenario Outline: Mortgage Renewal ET04024 DML Create test data for TwoOneTwo Test cases
    Given load data from "MortRen_DML" excel sheet
    Given write different cid into "CUST_DIM" sheet for "<Test cases>" having "2" Customers
    Then insert Multiple customer information details in "CUST_DIM" table having "2" accounts
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "1" accounts
    Then insert customer account details in "ACCT_DIM" table having "1" accounts
    When write Mortgage twoOneTwo cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Examples:
      | Test cases                                                                                              |
      | Primary Customer_DM_BANKRUPTCY_DT= NULL_SOL AND CoBorrower_BANKRUPTCY_DT = NULL_COB                     |
      | Primary Customer_DM_BANKRUPTCY_DT= NULL_SOL AND CoBorrower_BANKRUPTCY_DT = NULL_COS                     |
      | DM_IP_AR_RELATN_TYPE_CD = SOL As Primary Customer COB As CoBorrower                                     |
      | DM_IP_AR_RELATN_TYPE_CD = SOL As Primary Customer COS As CoBorrower                                     |
      | DM_IP_AR_RELATN_TYPE_CD = BOR As Primary Customer COB As CoBorrower                                     |
      | DM_IP_AR_RELATN_TYPE_CD = BOR As Primary Customer COS As CoBorrower                                     |
      | DM_Deceased_F = N for COB                                                                               |
      | DM_Deceased_F = N for COS                                                                               |
      | DM_T6_NONSOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_AMORTIZATION_REMAIN=26_CRNT_BAL_AMT=20000_Count=2 |
      | DM_T3_NONSOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_AMORTIZATION_REMAIN=26_CRNT_BAL_AMT=20000_Count=2 |

  @MortgageRenewalDML @MortgageRenewalDML_Single_Customer_One_One_One_Negative_TestData @DML @ET04024 @T6
  Scenario Outline: Mortgage Renewal ET04024 DML Single Customer One One One Negative test cases test data
    Given load data from "MortRen_DML" excel sheet
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
      | Test cases                                                                          |
      | N-DM_Primary Customer_BANKRUPTCY_DT!= NULL_SOL                                      |
      | N-DM_Primary Customer_BANKRUPTCY_DT!= NULL_BOR                                      |
      | N-DM_CUST_TP_CD != PSNL                                                             |
      | N-DM_CUST_TP_CD = NULL                                                              |
      | N-DM_Deceased_F = Y for Primary Customer                                            |
      | N-DM_Deceased_F = NULL for Primary Customer                                         |
      | N-DM_LANG_CD = K                                                                    |
      | N-DM_LANG_CD = NE                                                                   |
      | N-DM_LANG_CD = NULL                                                                 |
      | N-DM_CR_RSK_IND = D                                                                 |
      | N-DM_CR_RSK_IND = E                                                                 |
      | N-DM_RENEW_LIMITED_F = 1                                                            |
      | N-DM_RENEW_LIMITED_F = 2                                                            |
      | N-DM_CASHBACK_F  = Y                                                                |
      | N-DM_MORT_NOT_FRCLSR_F = N                                                          |
      | N-DM_SRC_SYS_PRD_CD = 911                                                           |
      | N-DM_SRC_SYS_PRD_CD = 931                                                           |
      | N-DM_SRC_SYS_PRD_CD = 951                                                           |
      | N-DM_INTEREST_RATE = 0                                                              |
      | N-DM_INTEREST_RATE < 0                                                              |
      | N-DM_MAT_DT - Current Date != (7,4)                                                 |
      | N-DM_AMORTIZATION_REMAIN < 26                                                       |
      | N-DM_MORT_PB_TRANSIT_REGION != (2,3,4,5,6,7)                                        |
      | N-DM_MORT_ARREARS_MONTHS > 0                                                        |
      | N-DM_MORT_ADJ_CONTR_AMORT_REMAIN_MONTHS = NULL                                      |
      | N-DM_MORT_FUND_CODE = (1900, 1901, 1902, 1912, 1916, 1922)                          |
      | N-DM_MORT_FUND_CODE = (1904, 1905, 1910, 1924) and ACCT_DIM.SERV_TRNST_NUM = 12088) |
      | N-DM_SRC_ACCT_STAT_CD = NULL                                                        |
      | N-DM_SRC_ACCT_STAT_CD = Open                                                        |
      | N-DM_MORT_COMM_TYPE != Residential                                                  |
      | N-DM_MORT_COMM_TYPE = NULL                                                          |
      | N-DM_IP_AR_RELATN_TYPE_CD = BLANK                                                   |
      | N-DM_IP_AR_RELATN_TYPE_CD = NULL                                                    |
      | N-DM_IP_AR_RELATN_TYPE_CD = ZERO                                                    |
      | N-DM_ACCT_SUBSYS_ID != UO                                                           |
      | N-DM_DO_NOT_EMAIL_F = N                                                             |
      | N-DM_DO_NOT_EMAIL_F = NULL                                                          |
      | N-DM_CUST_ADDR_ISSUE_F = Y                                                          |
      | N-DM_ACCT_DIM.SERV_TRNST_NUM = NULL                                                 |
      | N-DM_CUST_AGE = NULL                                                                |
      | N-DM_INTEREST_RATE = NULL                                                           |
      | N-DM_FIXED_VAR_F = NULL                                                             |

  @MortgageRenewalDML @MortgageRenewalDML_TwoOneTwo_Negative_TestCases @DML @ET04024
  Scenario Outline: Mortgage Renewal ET04024 DML Create test data for TwoOneTwo Negative Test cases
    Given load data from "MortRen_DML" excel sheet
    Given write different cid into "CUST_DIM" sheet for "<Test cases>" having "2" Customers
    Then insert Multiple customer information details in "CUST_DIM" table having "2" accounts
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "1" accounts
    Then insert customer account details in "ACCT_DIM" table having "1" accounts
    When write Mortgage twoOneTwo cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Examples:
      | Test cases                                                           |
      | N-DM_BANKRUPTCY_DT= NULL_SOL AND CoBorrower_BANKRUPTCY_DT!= NULL_COB |
      | N-DM_BANKRUPTCY_DT= NULL_SOL AND CoBorrower_BANKRUPTCY_DT!= NULL_COS |
      | N-DM_BANKRUPTCY_DT!= NULL_SOL AND CoBorrower_BANKRUPTCY_DT= NULL_COB |
      | N-DM_BANKRUPTCY_DT!= NULL_SOL AND CoBorrower_BANKRUPTCY_DT= NULL_COS |
      | N-DM_Deceased_F = Y for COBorrower                                   |
      | N-DM_Deceased_F = NULL for CoBorrower                                |

  @MortgageRenewalDML @MortgageRenewalDML_Single_Customer_One_One_One_NegativeSegmentation_TestData @DML @ET04024
  Scenario Outline: Mortgage Renewal ET04024 DML Single Customer One One One Negative Segmentation test cases test data
    Given load data from "MortRen_DML" excel sheet
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
      | Test cases                                                                                                    |
      | N-DM_T6_NONSOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_Value_AMORTIZATION_REMAIN>=26_CRNT_BAL_AMT>=20000_Count<=2 |
      | N-DM_T6_NONSOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_AMORTIZATION_REMAIN<26_CRNT_BAL_AMT>=20000_Count<=2   |
      | N-DM_T6_NONSOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_AMORTIZATION_REMAIN>=26_CRNT_BAL_AMT<20000_Count<=2   |
      | N-DM_T3_NONSOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_Value_AMORTIZATION_REMAIN>=26_CRNT_BAL_AMT>=20000_Count<=2 |
      | N-DM_T3_NONSOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_AMORTIZATION_REMAIN<26_CRNT_BAL_AMT>=20000_Count<=2   |
      | N-DM_T3_NONSOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_AMORTIZATION_REMAIN>=26_CRNT_BAL_AMT<20000_Count<=2   |

  @MortgageRenewalDML @MortgageRenewalDML_ThreeOneThree_Customer_Negative_Segmentation_TestData @DML @ET04024
  Scenario Outline: Mortgage Renewal ET04024 DML Create test data for Three One Three Customers Negative Segmentation Test cases Test Data
    Given load data from "MortRen_DML" excel sheet
    Given write different cid into "CUST_DIM" sheet for "<Test cases>" having "3" Customers
    Then insert Multiple customer information details in "CUST_DIM" table having "3" accounts
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "1" accounts
    Then insert customer account details in "ACCT_DIM" table having "1" accounts
    When write Mortgage twoOneTwo cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "3" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "3" accounts

    Examples:
      | Test cases                                                                                                  |
      | N-DM_T6_NONSOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_AMORTIZATION_REMAIN>=26_CRNT_BAL_AMT>=20000_Count>2 |
      | N-DM_T3_NONSOL_SOL_LAST_LOGIN_DT_MOB_LAST_LOGIN_DT_NULL_AMORTIZATION_REMAIN>=26_CRNT_BAL_AMT>=20000_Count>2 |
