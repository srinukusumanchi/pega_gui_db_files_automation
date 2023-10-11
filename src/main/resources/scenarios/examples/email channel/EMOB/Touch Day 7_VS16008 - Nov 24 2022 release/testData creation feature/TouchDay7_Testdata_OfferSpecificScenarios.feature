@Touch7_OfferSpecific_TestDataCreation
Feature: Test data creation for EMOB  Touch Day 7
#  Name:	EMOB Notification
#  Code:	VS16008
#  Data Specs:	https://confluence.agile.bns/display/CIMCAMP/Customer+Interaction+Ecosystem+-+Workstream+4
#  Welcome to  ScotiaGold No Fee	2432
#  Welcome to SCENE VISA Card Regular	2437
#  Welcome to SCENE VISA Card Student	2438
#  Welcome to Value VISA Regular	2441
#  Welcome to Value VISA No Fee	2444
#  Welcome to Scotia Momentum VISA Infinite	2445
#  Welcome to Scotia Momentum VISA Regular	2446
#  Welcome to Scotia Momentum No-Fee VISA	2447
#  Welcome to L earn VISA Card Student	2448
#  Welcome to GM Visa Card (Classic)	2449
#  Welcome to GM Visa Infinite Card	2450
#  Welcome to Scotiabank Gold Amex	4749
#  Welcome to Scotiabank Amex	4954
#  Welcome to Scotiabank Platinum Amex	4955
#  Welcome to Scotiabank Rewards Visa	4956
#  Welcome to Scotiabank Passport Visa Infinite	4957
#  Welcome to ScotiaGold Passport VISA	4958

  @EMOB @EMOBTouchDay7_Positive_Negative_2437_TestData @Workstream-4 @EMAIL @VS16008 @2437
  Scenario Outline: EMOB Touch Day 7_EMAIL Create test data for positive test cases for 2437
    Given load data from "EMOBTouch7" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<acct_odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                                         | acct_odt |
      | Touch7_2437_DO_NOT_SOLICIT_F=NULL_EMPLOYEE_STAFF_F=N_PRV_BNK_IND=N | 6        |
      | Touch7_2437_EMPLOYEE_STAFF_F=Null                                  | 6        |
      | Touch7_2437_BLOCK_RSN_CD and RECL_CD is BLANK                      | 6        |
      | Touch7_2437_BLOCK_RSN_CD and RECL_CD is NULL                       | 6        |
      | Touch7_2437_BLOCK_RSN_CD and RECL_CD is XH                         | 6        |
      | Touch7_2437_BLOCK_RSN_CD and RECL_CD is  C                         | 6        |
      | Touch7_2437_Prv_Bnk_Ind = Y                                        | 6        |
      | Touch7_2437_Prv_Bnk_Ind = NULL                                     | 6        |
      | Touch7_2437_EMPLOYEE_STAFF_F=Y                                     | 6        |
      | Touch7_2437_BLOCK_RSN_CD = A and RECL_CD = B                       | 6        |
      | Touch7_2437_BLOCK_RSN_CD = BLANK and RECL_CD = H                   | 6        |
      | Touch7_2437_BLOCK_RSN_CD = C and RECL_CD = BLANK                   | 6        |
      | Touch7_2437_BLOCK_RSN_CD = C and RECL_CD = NULL                    | 6        |
      | Touch7_2437_ BLOCK_RSN_CD = X and RECL_CD = BLANK                  | 6        |
      | Touch7_2437_ BLOCK_RSN_CD = X and RECL_CD = NULL                   | 6        |
      | Touch7_2437_ BLOCK_RSN_CD = BLANK and RECL_CD = H                  | 6        |
      | Touch7_2437_ BLOCK_RSN_CD = NULL and RECL_CD = H                   | 6        |
      | Touch7_2437_ BLOCK_RSN_CD = NULL and RECL_CD = NULL                | 6        |
      | Touch7_2437_NOT_AML_KYC_ne_Y                                       | 6        |
      | Touch7_2437_NOT_AML_KYC_eq_NULL                                    | 6        |
      | Touch7_2437_SRC_ACCT_STAT_CD_eq_Open                               | 6        |
      | Touch7_N-2437_NOT_AML_KYC_eq_Y                                     | 6        |
      | Touch7_N-2437_SRC_ACCT_STAT_CD_ne_Open                             | 6        |
      | Touch7_N-2437_SRC_ACCT_STAT_CD_eq_NULL                             | 6        |
      | Touch7_2437_acct_opn_dt =  5 days                                  | 5        |
      | Touch7_2437_acct_opn_dt = 8 days                                   | 8        |
      | Touch7_2437_acct_opn_dt is >=5 days and <=8 days                   | 7        |
      | Touch7_N-2437_acct_opn_dt is lessthan 5                            | 4        |
      | Touch7_N-2437_acct_opn_dt is greater than 8                        | 9        |
      | Touch7_N-2437_acct_opn_dt is NULL                                  | NULL     |

  @EMOB @EMOBTouchDay7_Positive_Negative_2438_TestData @Workstream-4 @EMAIL @VS16008 @2438
  Scenario Outline: EMOB Touch Day 7_EMAIL Create test data for positive test cases for 2438
    Given load data from "EMOBTouch7" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<acct_odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                                         | acct_odt |
      | Touch7_2438_DO_NOT_SOLICIT_F=NULL_EMPLOYEE_STAFF_F=N_PRV_BNK_IND=N | 6        |
      | Touch7_2438_EMPLOYEE_STAFF_F=Null                                  | 6        |
      | Touch7_2438_BLOCK_RSN_CD and RECL_CD is BLANK                      | 6        |
      | Touch7_2438_BLOCK_RSN_CD and RECL_CD is NULL                       | 6        |
      | Touch7_2438_BLOCK_RSN_CD and RECL_CD is XH                         | 6        |
      | Touch7_2438_BLOCK_RSN_CD and RECL_CD is  C                         | 6        |
      | Touch7_2438_Prv_Bnk_Ind = Y                                        | 6        |
      | Touch7_2438_Prv_Bnk_Ind = NULL                                     | 6        |
      | Touch7_2438_EMPLOYEE_STAFF_F=Y                                     | 6        |
      | Touch7_2438_BLOCK_RSN_CD = A and RECL_CD = B                       | 6        |
      | Touch7_2438_BLOCK_RSN_CD = BLANK and RECL_CD = H                   | 6        |
      | Touch7_2438_BLOCK_RSN_CD = C and RECL_CD = BLANK                   | 6        |
      | Touch7_2438_BLOCK_RSN_CD = C and RECL_CD = NULL                    | 6        |
      | Touch7_2438_ BLOCK_RSN_CD = X and RECL_CD = BLANK                  | 6        |
      | Touch7_2438_ BLOCK_RSN_CD = X and RECL_CD = NULL                   | 6        |
      | Touch7_2438_ BLOCK_RSN_CD = BLANK and RECL_CD = H                  | 6        |
      | Touch7_2438_ BLOCK_RSN_CD = NULL and RECL_CD = H                   | 6        |
      | Touch7_2438_ BLOCK_RSN_CD = NULL and RECL_CD = NULL                | 6        |
      | Touch7_2438_NOT_AML_KYC_ne_Y                                       | 6        |
      | Touch7_2438_NOT_AML_KYC_eq_NULL                                    | 6        |
      | Touch7_2438_SRC_ACCT_STAT_CD_eq_Open                               | 6        |
      | Touch7_N-2438_NOT_AML_KYC_eq_Y                                     | 6        |
      | Touch7_N-2438_SRC_ACCT_STAT_CD_ne_Open                             | 6        |
      | Touch7_N-2438_SRC_ACCT_STAT_CD_eq_NULL                             | 6        |

  @EMOB @EMOBTouchDay7_Positive_Negative_2441_TestData @Workstream-4 @EMAIL @VS16008 @2441
  Scenario Outline: EMOB Touch Day 7_EMAIL Create test data for positive test cases for 2441
    Given load data from "EMOBTouch7" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<acct_odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                                         | acct_odt |
      | Touch7_2441_DO_NOT_SOLICIT_F=NULL_EMPLOYEE_STAFF_F=N_PRV_BNK_IND=N | 6        |
      | Touch7_2441_EMPLOYEE_STAFF_F=Null                                  | 6        |
      | Touch7_2441_BLOCK_RSN_CD and RECL_CD is BLANK                      | 6        |
      | Touch7_2441_BLOCK_RSN_CD and RECL_CD is NULL                       | 6        |
      | Touch7_2441_BLOCK_RSN_CD and RECL_CD is XH                         | 6        |
      | Touch7_2441_BLOCK_RSN_CD and RECL_CD is  C                         | 6        |
      | Touch7_2441_Prv_Bnk_Ind = Y                                        | 6        |
      | Touch7_2441_Prv_Bnk_Ind = NULL                                     | 6        |
      | Touch7_2441_EMPLOYEE_STAFF_F=Y                                     | 6        |
      | Touch7_2441_BLOCK_RSN_CD = A and RECL_CD = B                       | 6        |
      | Touch7_2441_BLOCK_RSN_CD = BLANK and RECL_CD = H                   | 6        |
      | Touch7_2441_BLOCK_RSN_CD = C and RECL_CD = BLANK                   | 6        |
      | Touch7_2441_BLOCK_RSN_CD = C and RECL_CD = NULL                    | 6        |
      | Touch7_2441_ BLOCK_RSN_CD = X and RECL_CD = BLANK                  | 6        |
      | Touch7_2441_ BLOCK_RSN_CD = X and RECL_CD = NULL                   | 6        |
      | Touch7_2441_ BLOCK_RSN_CD = BLANK and RECL_CD = H                  | 6        |
      | Touch7_2441_ BLOCK_RSN_CD = NULL and RECL_CD = H                   | 6        |
      | Touch7_2441_ BLOCK_RSN_CD = NULL and RECL_CD = NULL                | 6        |
      | Touch7_2441_NOT_AML_KYC_ne_Y                                       | 6        |
      | Touch7_2441_NOT_AML_KYC_eq_NULL                                    | 6        |
      | Touch7_2441_SRC_ACCT_STAT_CD_eq_Open                               | 6        |
      | Touch7_N-2441_NOT_AML_KYC_eq_Y                                     | 6        |
      | Touch7_N-2441_SRC_ACCT_STAT_CD_ne_Open                             | 6        |
      | Touch7_N-2441_SRC_ACCT_STAT_CD_eq_NULL                             | 6        |

  @EMOB @EMOBTouchDay7_Positive_Negative_2445_TestData @Workstream-4 @EMAIL @VS16008 @2445
  Scenario Outline: EMOB Touch Day 7_EMAIL Create test data for positive test cases for 2445
    Given load data from "EMOBTouch7" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<acct_odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                                         | acct_odt |
      | Touch7_2445_DO_NOT_SOLICIT_F=NULL_EMPLOYEE_STAFF_F=N_PRV_BNK_IND=N | 6        |
      | Touch7_2445_EMPLOYEE_STAFF_F=Null                                  | 6        |
      | Touch7_2445_BLOCK_RSN_CD and RECL_CD is BLANK                      | 6        |
      | Touch7_2445_BLOCK_RSN_CD and RECL_CD is NULL                       | 6        |
      | Touch7_2445_BLOCK_RSN_CD and RECL_CD is XH                         | 6        |
      | Touch7_2445_BLOCK_RSN_CD and RECL_CD is  C                         | 6        |
      | Touch7_2445_Prv_Bnk_Ind = Y                                        | 6        |
      | Touch7_2445_Prv_Bnk_Ind = NULL                                     | 6        |
      | Touch7_2445_EMPLOYEE_STAFF_F=Y                                     | 6        |
      | Touch7_2445_BLOCK_RSN_CD = A and RECL_CD = B                       | 6        |
      | Touch7_2445_BLOCK_RSN_CD = BLANK and RECL_CD = H                   | 6        |
      | Touch7_2445_BLOCK_RSN_CD = C and RECL_CD = BLANK                   | 6        |
      | Touch7_2445_BLOCK_RSN_CD = C and RECL_CD = NULL                    | 6        |
      | Touch7_2445_ BLOCK_RSN_CD = X and RECL_CD = BLANK                  | 6        |
      | Touch7_2445_ BLOCK_RSN_CD = X and RECL_CD = NULL                   | 6        |
      | Touch7_2445_ BLOCK_RSN_CD = BLANK and RECL_CD = H                  | 6        |
      | Touch7_2445_ BLOCK_RSN_CD = NULL and RECL_CD = H                   | 6        |
      | Touch7_2445_ BLOCK_RSN_CD = NULL and RECL_CD = NULL                | 6        |
      | Touch7_2445_NOT_AML_KYC_ne_Y                                       | 6        |
      | Touch7_2445_NOT_AML_KYC_eq_NULL                                    | 6        |
      | Touch7_2445_SRC_ACCT_STAT_CD_eq_Open                               | 6        |
      | Touch7_N-2445_NOT_AML_KYC_eq_Y                                     | 6        |
      | Touch7_N-2445_SRC_ACCT_STAT_CD_ne_Open                             | 6        |
      | Touch7_N-2445_SRC_ACCT_STAT_CD_eq_NULL                             | 6        |

  @EMOB @EMOBTouchDay7_Positive_Negative_2446_TestData @Workstream-4 @EMAIL @VS16008 @2446
  Scenario Outline: EMOB Touch Day 7_EMAIL Create test data for positive test cases for 2446
    Given load data from "EMOBTouch7" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<acct_odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                                         | acct_odt |
      | Touch7_2446_DO_NOT_SOLICIT_F=NULL_EMPLOYEE_STAFF_F=N_PRV_BNK_IND=N | 6        |
      | Touch7_2446_EMPLOYEE_STAFF_F=Null                                  | 6        |
      | Touch7_2446_BLOCK_RSN_CD and RECL_CD is BLANK                      | 6        |
      | Touch7_2446_BLOCK_RSN_CD and RECL_CD is NULL                       | 6        |
      | Touch7_2446_BLOCK_RSN_CD and RECL_CD is XH                         | 6        |
      | Touch7_2446_BLOCK_RSN_CD and RECL_CD is  C                         | 6        |
      | Touch7_2446_Prv_Bnk_Ind = Y                                        | 6        |
      | Touch7_2446_Prv_Bnk_Ind = NULL                                     | 6        |
      | Touch7_2446_EMPLOYEE_STAFF_F=Y                                     | 6        |
      | Touch7_2446_BLOCK_RSN_CD = A and RECL_CD = B                       | 6        |
      | Touch7_2446_BLOCK_RSN_CD = BLANK and RECL_CD = H                   | 6        |
      | Touch7_2446_BLOCK_RSN_CD = C and RECL_CD = BLANK                   | 6        |
      | Touch7_2446_BLOCK_RSN_CD = C and RECL_CD = NULL                    | 6        |
      | Touch7_2446_ BLOCK_RSN_CD = X and RECL_CD = BLANK                  | 6        |
      | Touch7_2446_ BLOCK_RSN_CD = X and RECL_CD = NULL                   | 6        |
      | Touch7_2446_ BLOCK_RSN_CD = BLANK and RECL_CD = H                  | 6        |
      | Touch7_2446_ BLOCK_RSN_CD = NULL and RECL_CD = H                   | 6        |
      | Touch7_2446_ BLOCK_RSN_CD = NULL and RECL_CD = NULL                | 6        |
      | Touch7_2446_NOT_AML_KYC_ne_Y                                       | 6        |
      | Touch7_2446_NOT_AML_KYC_eq_NULL                                    | 6        |
      | Touch7_2446_SRC_ACCT_STAT_CD_eq_Open                               | 6        |
      | Touch7_N-2446_NOT_AML_KYC_eq_Y                                     | 6        |
      | Touch7_N-2446_SRC_ACCT_STAT_CD_ne_Open                             | 6        |
      | Touch7_N-2446_SRC_ACCT_STAT_CD_eq_NULL                             | 6        |

  @EMOB @EMOBTouchDay7_Positive_Negative_2447_TestData @Workstream-4 @EMAIL @VS16008 @2447
  Scenario Outline: EMOB Touch Day 7_EMAIL Create test data for positive test cases for 2447
    Given load data from "EMOBTouch7" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<acct_odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                                         | acct_odt |
      | Touch7_2447_DO_NOT_SOLICIT_F=NULL_EMPLOYEE_STAFF_F=N_PRV_BNK_IND=N | 6        |
      | Touch7_2447_EMPLOYEE_STAFF_F=Null                                  | 6        |
      | Touch7_2447_BLOCK_RSN_CD and RECL_CD is BLANK                      | 6        |
      | Touch7_2447_BLOCK_RSN_CD and RECL_CD is NULL                       | 6        |
      | Touch7_2447_BLOCK_RSN_CD and RECL_CD is XH                         | 6        |
      | Touch7_2447_BLOCK_RSN_CD and RECL_CD is  C                         | 6        |
      | Touch7_2447_Prv_Bnk_Ind = Y                                        | 6        |
      | Touch7_2447_Prv_Bnk_Ind = NULL                                     | 6        |
      | Touch7_2447_EMPLOYEE_STAFF_F=Y                                     | 6        |
      | Touch7_2447_BLOCK_RSN_CD = A and RECL_CD = B                       | 6        |
      | Touch7_2447_BLOCK_RSN_CD = BLANK and RECL_CD = H                   | 6        |
      | Touch7_2447_BLOCK_RSN_CD = C and RECL_CD = BLANK                   | 6        |
      | Touch7_2447_BLOCK_RSN_CD = C and RECL_CD = NULL                    | 6        |
      | Touch7_2447_ BLOCK_RSN_CD = X and RECL_CD = BLANK                  | 6        |
      | Touch7_2447_ BLOCK_RSN_CD = X and RECL_CD = NULL                   | 6        |
      | Touch7_2447_ BLOCK_RSN_CD = BLANK and RECL_CD = H                  | 6        |
      | Touch7_2447_ BLOCK_RSN_CD = NULL and RECL_CD = H                   | 6        |
      | Touch7_2447_ BLOCK_RSN_CD = NULL and RECL_CD = NULL                | 6        |
      | Touch7_2447_NOT_AML_KYC_ne_Y                                       | 6        |
      | Touch7_2447_NOT_AML_KYC_eq_NULL                                    | 6        |
      | Touch7_2447_SRC_ACCT_STAT_CD_eq_Open                               | 6        |
      | Touch7_N-2447_NOT_AML_KYC_eq_Y                                     | 6        |
      | Touch7_N-2447_SRC_ACCT_STAT_CD_ne_Open                             | 6        |
      | Touch7_N-2447_SRC_ACCT_STAT_CD_eq_NULL                             | 6        |

  @EMOB @EMOBTouchDay7_Positive_Negative_4749_TestData @Workstream-4 @EMAIL @VS16008 @4749
  Scenario Outline: EMOB Touch Day 7_EMAIL Create test data for positive test cases for 4749
    Given load data from "EMOBTouch7" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<acct_odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                                         | acct_odt |
      | Touch7_4749_DO_NOT_SOLICIT_F=NULL_EMPLOYEE_STAFF_F=N_PRV_BNK_IND=N | 6        |
      | Touch7_4749_EMPLOYEE_STAFF_F=Null                                  | 6        |
      | Touch7_4749_BLOCK_RSN_CD and RECL_CD is BLANK                      | 6        |
      | Touch7_4749_BLOCK_RSN_CD and RECL_CD is NULL                       | 6        |
      | Touch7_4749_BLOCK_RSN_CD and RECL_CD is XH                         | 6        |
      | Touch7_4749_BLOCK_RSN_CD and RECL_CD is  C                         | 6        |
      | Touch7_4749_Prv_Bnk_Ind = Y                                        | 6        |
      | Touch7_4749_Prv_Bnk_Ind = NULL                                     | 6        |
      | Touch7_4749_EMPLOYEE_STAFF_F=Y                                     | 6        |
      | Touch7_4749_BLOCK_RSN_CD = A and RECL_CD = B                       | 6        |
      | Touch7_4749_BLOCK_RSN_CD = BLANK and RECL_CD = H                   | 6        |
      | Touch7_4749_BLOCK_RSN_CD = C and RECL_CD = BLANK                   | 6        |
      | Touch7_4749_BLOCK_RSN_CD = C and RECL_CD = NULL                    | 6        |
      | Touch7_4749_ BLOCK_RSN_CD = X and RECL_CD = BLANK                  | 6        |
      | Touch7_4749_ BLOCK_RSN_CD = X and RECL_CD = NULL                   | 6        |
      | Touch7_4749_ BLOCK_RSN_CD = BLANK and RECL_CD = H                  | 6        |
      | Touch7_4749_ BLOCK_RSN_CD = NULL and RECL_CD = H                   | 6        |
      | Touch7_4749_ BLOCK_RSN_CD = NULL and RECL_CD = NULL                | 6        |
      | Touch7_4749_NOT_AML_KYC_ne_Y                                       | 6        |
      | Touch7_4749_NOT_AML_KYC_eq_NULL                                    | 6        |
      | Touch7_4749_SRC_ACCT_STAT_CD_eq_Open                               | 6        |
      | Touch7_N-4749_NOT_AML_KYC_eq_Y                                     | 6        |
      | Touch7_N-4749_SRC_ACCT_STAT_CD_ne_Open                             | 6        |
      | Touch7_N-4749_SRC_ACCT_STAT_CD_eq_NULL                             | 6        |

  @EMOB @EMOBTouchDay7_Positive_Negative_4954_TestData @Workstream-4 @EMAIL @VS16008 @4954
  Scenario Outline: EMOB Touch Day 7_EMAIL Create test data for positive test cases for 4954
    Given load data from "EMOBTouch7" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<acct_odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                                         | acct_odt |
      | Touch7_4954_DO_NOT_SOLICIT_F=NULL_EMPLOYEE_STAFF_F=N_PRV_BNK_IND=N | 6        |
      | Touch7_4954_EMPLOYEE_STAFF_F=Null                                  | 6        |
      | Touch7_4954_BLOCK_RSN_CD and RECL_CD is BLANK                      | 6        |
      | Touch7_4954_BLOCK_RSN_CD and RECL_CD is NULL                       | 6        |
      | Touch7_4954_BLOCK_RSN_CD and RECL_CD is XH                         | 6        |
      | Touch7_4954_BLOCK_RSN_CD and RECL_CD is  C                         | 6        |
      | Touch7_4954_Prv_Bnk_Ind = Y                                        | 6        |
      | Touch7_4954_Prv_Bnk_Ind = NULL                                     | 6        |
      | Touch7_4954_EMPLOYEE_STAFF_F=Y                                     | 6        |
      | Touch7_4954_BLOCK_RSN_CD = A and RECL_CD = B                       | 6        |
      | Touch7_4954_BLOCK_RSN_CD = BLANK and RECL_CD = H                   | 6        |
      | Touch7_4954_BLOCK_RSN_CD = C and RECL_CD = BLANK                   | 6        |
      | Touch7_4954_BLOCK_RSN_CD = C and RECL_CD = NULL                    | 6        |
      | Touch7_4954_ BLOCK_RSN_CD = X and RECL_CD = BLANK                  | 6        |
      | Touch7_4954_ BLOCK_RSN_CD = X and RECL_CD = NULL                   | 6        |
      | Touch7_4954_ BLOCK_RSN_CD = BLANK and RECL_CD = H                  | 6        |
      | Touch7_4954_ BLOCK_RSN_CD = NULL and RECL_CD = H                   | 6        |
      | Touch7_4954_ BLOCK_RSN_CD = NULL and RECL_CD = NULL                | 6        |
      | Touch7_4954_NOT_AML_KYC_ne_Y                                       | 6        |
      | Touch7_4954_NOT_AML_KYC_eq_NULL                                    | 6        |
      | Touch7_4954_SRC_ACCT_STAT_CD_eq_Open                               | 6        |
      | Touch7_N-4954_NOT_AML_KYC_eq_Y                                     | 6        |
      | Touch7_N-4954_SRC_ACCT_STAT_CD_ne_Open                             | 6        |
      | Touch7_N-4954_SRC_ACCT_STAT_CD_eq_NULL                             | 6        |

  @EMOB @EMOBTouchDay7_Positive_Negative_4955_TestData @Workstream-4 @EMAIL @VS16008 @4955
  Scenario Outline: EMOB Touch Day 7_EMAIL Create test data for positive test cases for 4955
    Given load data from "EMOBTouch7" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<acct_odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                                         | acct_odt |
      | Touch7_4955_DO_NOT_SOLICIT_F=NULL_EMPLOYEE_STAFF_F=N_PRV_BNK_IND=N | 6        |
      | Touch7_4955_EMPLOYEE_STAFF_F=Null                                  | 6        |
      | Touch7_4955_BLOCK_RSN_CD and RECL_CD is BLANK                      | 6        |
      | Touch7_4955_BLOCK_RSN_CD and RECL_CD is NULL                       | 6        |
      | Touch7_4955_BLOCK_RSN_CD and RECL_CD is XH                         | 6        |
      | Touch7_4955_BLOCK_RSN_CD and RECL_CD is  C                         | 6        |
      | Touch7_4955_Prv_Bnk_Ind = Y                                        | 6        |
      | Touch7_4955_Prv_Bnk_Ind = NULL                                     | 6        |
      | Touch7_4955_EMPLOYEE_STAFF_F=Y                                     | 6        |
      | Touch7_4955_BLOCK_RSN_CD = A and RECL_CD = B                       | 6        |
      | Touch7_4955_BLOCK_RSN_CD = BLANK and RECL_CD = H                   | 6        |
      | Touch7_4955_BLOCK_RSN_CD = C and RECL_CD = BLANK                   | 6        |
      | Touch7_4955_BLOCK_RSN_CD = C and RECL_CD = NULL                    | 6        |
      | Touch7_4955_ BLOCK_RSN_CD = X and RECL_CD = BLANK                  | 6        |
      | Touch7_4955_ BLOCK_RSN_CD = X and RECL_CD = NULL                   | 6        |
      | Touch7_4955_ BLOCK_RSN_CD = BLANK and RECL_CD = H                  | 6        |
      | Touch7_4955_ BLOCK_RSN_CD = NULL and RECL_CD = H                   | 6        |
      | Touch7_4955_ BLOCK_RSN_CD = NULL and RECL_CD = NULL                | 6        |
      | Touch7_4955_NOT_AML_KYC_ne_Y                                       | 6        |
      | Touch7_4955_NOT_AML_KYC_eq_NULL                                    | 6        |
      | Touch7_4955_SRC_ACCT_STAT_CD_eq_Open                               | 6        |
      | Touch7_N-4955_NOT_AML_KYC_eq_Y                                     | 6        |
      | Touch7_N-4955_SRC_ACCT_STAT_CD_ne_Open                             | 6        |
      | Touch7_N-4955_SRC_ACCT_STAT_CD_eq_NULL                             | 6        |

  @EMOB @EMOBTouchDay7_Positive_Negative_4957_TestData @Workstream-4 @EMAIL @VS16008 @4957
  Scenario Outline: EMOB Touch Day 7_EMAIL Create test data for positive test cases for 4957
    Given load data from "EMOBTouch7" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<acct_odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                                         | acct_odt |
      | Touch7_4957_DO_NOT_SOLICIT_F=NULL_EMPLOYEE_STAFF_F=N_PRV_BNK_IND=N | 6        |
      | Touch7_4957_EMPLOYEE_STAFF_F=Null                                  | 6        |
      | Touch7_4957_BLOCK_RSN_CD and RECL_CD is BLANK                      | 6        |
      | Touch7_4957_BLOCK_RSN_CD and RECL_CD is NULL                       | 6        |
      | Touch7_4957_BLOCK_RSN_CD and RECL_CD is XH                         | 6        |
      | Touch7_4957_BLOCK_RSN_CD and RECL_CD is  C                         | 6        |
      | Touch7_4957_Prv_Bnk_Ind = Y                                        | 6        |
      | Touch7_4957_Prv_Bnk_Ind = NULL                                     | 6        |
      | Touch7_4957_EMPLOYEE_STAFF_F=Y                                     | 6        |
      | Touch7_4957_BLOCK_RSN_CD = A and RECL_CD = B                       | 6        |
      | Touch7_4957_BLOCK_RSN_CD = BLANK and RECL_CD = H                   | 6        |
      | Touch7_4957_BLOCK_RSN_CD = C and RECL_CD = BLANK                   | 6        |
      | Touch7_4957_BLOCK_RSN_CD = C and RECL_CD = NULL                    | 6        |
      | Touch7_4957_ BLOCK_RSN_CD = X and RECL_CD = BLANK                  | 6        |
      | Touch7_4957_ BLOCK_RSN_CD = X and RECL_CD = NULL                   | 6        |
      | Touch7_4957_ BLOCK_RSN_CD = BLANK and RECL_CD = H                  | 6        |
      | Touch7_4957_ BLOCK_RSN_CD = NULL and RECL_CD = H                   | 6        |
      | Touch7_4957_ BLOCK_RSN_CD = NULL and RECL_CD = NULL                | 6        |
      | Touch7_4957_NOT_AML_KYC_ne_Y                                       | 6        |
      | Touch7_4957_NOT_AML_KYC_eq_NULL                                    | 6        |
      | Touch7_4957_SRC_ACCT_STAT_CD_eq_Open                               | 6        |
      | Touch7_N-4957_NOT_AML_KYC_eq_Y                                     | 6        |
      | Touch7_N-4957_SRC_ACCT_STAT_CD_ne_Open                             | 6        |
      | Touch7_N-4957_SRC_ACCT_STAT_CD_eq_NULL                             | 6        |

  @EMOB @EMOBTouchDay7_Positive_Negative_5894_TestData @Workstream-4 @EMAIL @VS16008 @5894
  Scenario Outline: EMOB Touch Day 7_EMAIL Create test data for positive test cases for 5894
    Given load data from "EMOBTouch7" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<acct_odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                                         | acct_odt |
      | Touch7_5894_DO_NOT_SOLICIT_F=NULL_EMPLOYEE_STAFF_F=N_PRV_BNK_IND=N | 6        |
      | Touch7_5894_EMPLOYEE_STAFF_F=Null                                  | 6        |
      | Touch7_5894_BLOCK_RSN_CD and RECL_CD is BLANK                      | 6        |
      | Touch7_5894_BLOCK_RSN_CD and RECL_CD is NULL                       | 6        |
      | Touch7_5894_BLOCK_RSN_CD and RECL_CD is XH                         | 6        |
      | Touch7_5894_BLOCK_RSN_CD and RECL_CD is  C                         | 6        |
      | Touch7_5894_Prv_Bnk_Ind = Y                                        | 6        |
      | Touch7_5894_Prv_Bnk_Ind = NULL                                     | 6        |
      | Touch7_5894_EMPLOYEE_STAFF_F=Y                                     | 6        |
      | Touch7_5894_BLOCK_RSN_CD = A and RECL_CD = B                       | 6        |
      | Touch7_5894_BLOCK_RSN_CD = BLANK and RECL_CD = H                   | 6        |
      | Touch7_5894_BLOCK_RSN_CD = C and RECL_CD = BLANK                   | 6        |
      | Touch7_5894_BLOCK_RSN_CD = C and RECL_CD = NULL                    | 6        |
      | Touch7_5894_ BLOCK_RSN_CD = X and RECL_CD = BLANK                  | 6        |
      | Touch7_5894_ BLOCK_RSN_CD = X and RECL_CD = NULL                   | 6        |
      | Touch7_5894_ BLOCK_RSN_CD = BLANK and RECL_CD = H                  | 6        |
      | Touch7_5894_ BLOCK_RSN_CD = NULL and RECL_CD = H                   | 6        |
      | Touch7_5894_ BLOCK_RSN_CD = NULL and RECL_CD = NULL                | 6        |
      | Touch7_5894_NOT_AML_KYC_ne_Y                                       | 6        |
      | Touch7_5894_NOT_AML_KYC_eq_NULL                                    | 6        |
      | Touch7_5894_SRC_ACCT_STAT_CD_eq_Open                               | 6        |
      | Touch7_N-5894_NOT_AML_KYC_eq_Y                                     | 6        |
      | Touch7_N-5894_SRC_ACCT_STAT_CD_ne_Open                             | 6        |
      | Touch7_N-5894_SRC_ACCT_STAT_CD_eq_NULL                             | 6        |

