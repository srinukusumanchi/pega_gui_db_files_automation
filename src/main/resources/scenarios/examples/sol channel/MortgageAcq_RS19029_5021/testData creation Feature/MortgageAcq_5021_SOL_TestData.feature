@MortgageAcquisition_SOL
Feature: Test Data Creation For Mortgage Acquisition SOL Channel


  @MortgageAcquisitionSOL @MortgageAcquisitionSOL_Positive_TestData_5021 @5021 @SOL @RS19029 @LeadType1 @LeadType3 @LeadType4
  Scenario Outline: Mortgage Acquisition 5021 RS19029 SOL Create test data for positive test cases
    Given load data from "MortAcq_SOL" excel sheet
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
      | Testcases                                                            |
      | CUST_TP_CD = PSNL                                                    |
      | Country_CD = CA                                                      |
      | CUST_AGE = 18                                                        |
      | CUST_AGE Greater Than 18                                             |
      | MRKTBLE_F = Y                                                        |
      | Deceased_F = N                                                       |
      | LANG_CD = E                                                          |
      | LANG_CD = EN                                                         |
      | LANG_CD = F                                                          |
      | LANG_CD = FR                                                         |
#      | LANG_CD_LowerCase = e                                                |
#      | LANG_CD_LowerCase = en                                               |
#      | LANG_CD_LowerCase = f                                                |
#      | LANG_CD_LowerCase = fr                                               |
#      | NOT_AML_KYC = N                                                      |
#      | NOT_AML_KYC = NULL                                                   |
#      | ACCT_SUBSYS_ID = AC                                                  |
#      | EDW_ACCT_STAT_CD = A                                                 |
#      | GivenName != NULL                                                    |
#      | GivenName != BLANK                                                   |
#      | FIRST_NAME != NULL                                                   |
#      | LAST_NAME  != NULL                                                   |
#      | FIRST_NAME != BLANK                                                  |
#      | LAST_NAME  != BLANK                                                  |
#      | Address1 != NULL                                                     |
#      | City != NULL                                                         |
#      | City != BLANK                                                        |
#      | ProvinceCode != NULL                                                 |
#      | ProvinceCode != BLANK                                                |
#      | PostalCode != NULL                                                   |
#      | PostalCode != BLANK                                                  |
#      | ASSIGNED_FA_TRANSIT = 80002                                          |
#      | MLS_LISTING_FLAG = Y And MLS_ADDED_AT_DT = 0-30 Days For LeadType1   |
#      | SOL_LAST_LOGIN_DT is with in 90Days (Digitally Active) For LeadType1 |
#      | TV_TS_MORT_FLAG = Y For Getting the Lead Type3                       |
#      | SOL_LAST_LOGIN_DT is with in 90Days (Digitally Active) For LeadType3 |
#      | MORT_OUT_PYMT_FLAG = Y For Getting the Lead Type4                    |
#      | SOL_LAST_LOGIN_DT is with in 90Days (Digitally Active) For LeadType4 |


  @MortgageAcquisitionSOL @MortgageAcquisitionSOL_Negative_TestData_5021 @5021 @SOL @RS19029 @LeadType1 @LeadType3 @LeadType4
  Scenario Outline: Mortgage Acquisition 5021 RS19029 SOL Create test data for Negative test cases
    Given load data from "MortAcq_SOL" excel sheet
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
      | Testcases                                                                                         |
      | CUST_TP_CD = !PSNL                                                                                |
      | CUST_TP_CD = NULL                                                                                 |
      | Country_CD = !CA                                                                                  |
      | Country_CD = NULL                                                                                 |
      | Customer age is less than 18                                                                      |
      | Customer age is Null                                                                              |
      | MRKTBLE_F = N                                                                                     |
      | MRKTBLE_F = NULL                                                                                  |
      | Deceased_F = Y                                                                                    |
      | Deceased_F = NULL                                                                                 |
      | Language Code is K                                                                                |
      | Language Code is NE                                                                               |
      | Language Code is Null                                                                             |
      | NOT_AML_KYC = Y                                                                                   |
      | ACCT_SUBSYS_ID = BB                                                                               |
      | EDW_ACCT_STAT_CD = B                                                                              |
      | SOL_LAST_LOGIN_DT > 90 Days                                                                       |
      | SOL_LAST_LOGIN_DT = NULL                                                                          |
      | SOL_LAST_LOGIN_DT = BLANK                                                                         |
      | Title = NULL                                                                                      |
      | FIRST_NAME = NULL                                                                                 |
      | LAST_NAME = NULL                                                                                  |
      | GivenName = NULL                                                                                  |
      | Address 1 = NULL                                                                                  |
      | City = NULL                                                                                       |
      | Province Code = NULL                                                                              |
      | Postal Code = NULL                                                                                |
      | ASSIGNED_FA_TRANSIT = NULL                                                                        |
      | MLS_LISTING_FLAG = N And MLS_ADDED_AT_DT = 0-30 Days For Not Getting the Lead Type1               |
      | MLS_LISTING_FLAG = N And MLS_ADDED_AT_DT > 30 Days For Not Getting the Lead Type1                 |
      | MLS_LISTING_FLAG = Y And MLS_ADDED_AT_DT > 30 Days For Not Getting the Lead Type1                 |
      | MLS_LISTING_FLAG = NULL And MLS_ADDED_AT_DT = 0-30 Days For Not Getting the Lead Type1            |
      | MLS_LISTING_FLAG = NULL And MLS_ADDED_AT_DT > 30 Days For Not Getting the Lead Type1              |
      | SOL_LAST_LOGIN_DT is NULL of Current Date (Digitally InActive) For Not Getting the LeadType1      |
      | SOL_LAST_LOGIN_DT is > 90 days of Current Date (Digitally InActive) For Not Getting the LeadType1 |
      | TV_TS_MORT_FLAG = N For Not Getting the Lead Type3                                                |
      | SOL_LAST_LOGIN_DT is NULL of Current Date (Digitally InActive) For Not Getting The LeadType3      |
      | SOL_LAST_LOGIN_DT is > 90 days of Current Date (Digitally InActive) For Not Getting The LeadTyep3 |
      | TV_TS_MORT_FLAG = NULL For Not Getting the Lead Type3                                             |
      | MORT_OUT_PYMT_FLAG = N For Not Getting the Lead Type4                                             |
      | MORT_OUT_PYMT_FLAG = NULL For Not Getting the Lead Type4                                          |
      | SOL_LAST_LOGIN_DT is NULL of Current Date (Digitally InActive) For Not Getting LeadTyep4          |
      | SOL_LAST_LOGIN_DT is > 90 days of Current Date (Digitally InActive) For Not Getting LeadType4     |


  @MortgageAcquisitionSOL @MortgageAcquisitionSOL_Positive_Negative_TestData_5021_LeadType2 @5021 @SOL @RS19029 @LeadType2
  Scenario Outline: Mortgage Acquisition 5021 RS19029 SOL Create test data for LeadType2 positive test cases
    Given write cid into "CUST_DIM" sheet for "<Testcases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Testcases>"
    Then insert customer information details in "CUST_DIM" table
    When write cid in the "CLICKSTREAM" sheet for "<Testcases>"
    When read clickstrem information details from excel sheet "CLICKSTREAM" for "<Testcases>"
    Then insert clickstream information details in "CLICKSTREAM" table
    When write account number into "ACCT_DIM" sheet for "<Testcases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Testcases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Testcases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Testcases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Testcases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table

    Examples:
      | Testcases                                                                                         |
      | MORT_COUNT_30DAY =>1 For Getting the Lead Type2                                                   |
      | SOL_LAST_LOGIN_DT is with in 90Days of Current Date (Digitally Active) For LeadType2              |
      | MORT_COUNT_30DAY < 1 For Not Getting the Lead Type2                                               |
      | SOL_LAST_LOGIN_DT is NULL of Current Date (Digitally InActive) For Not Getting The LeadType2      |
      | SOL_LAST_LOGIN_DT is > 90 days of Current Date (Digitally InActive) For Not Getting The LeadType2 |

  @MortgageAcquisitionSOL @MortgageAcquisitionSOLPriority @MortgageAcquisitionPrioritySOL_Positive_TestData_5021_LeadType2 @5021 @SOL @RS19029 @LeadType2
  Scenario Outline: Mortgage Acquisition Priority 5021 RS19029 SOL Create test data for LeadType2 positive test cases
    Given load data from "MortAcq_SOL" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Testcases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Testcases>"
    Then insert customer information details in "CUST_DIM" table
    When write cid in the "CLICKSTREAM" sheet for "<Testcases>"
    When read clickstrem information details from excel sheet "CLICKSTREAM" for "<Testcases>"
    Then insert clickstream information details in "CLICKSTREAM" table
    When write account number into "ACCT_DIM" sheet for "<Testcases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Testcases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Testcases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Testcases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Testcases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table

    Examples:
      | Testcases                                                                                        |
      | Lead Type 1 should be prioritized When we have Mort Acq customer has all the LeadType 1, 2       |
      | Lead Type 3 should be prioritized When we have Mort Acq customer has all the LeadType 2, 3       |
      | Lead Type 4 should be prioritized When we have Mort Acq customer has all the LeadType 2, 4       |
      | Lead Type 1 should be prioritized When we have Mort Acq customer has all the LeadType 1, 2, 3    |
      | Lead Type 3 should be prioritized When we have Mort Acq customer has all the LeadType 2, 3, 4    |
      | Lead Type 1 should be prioritized When we have Mort Acq customer has all the LeadType 1, 2, 3, 4 |

  @MortgageAcquisitionSOL @MortgageAcquisitionSOLPriority @MortgageAcquisitionPrioritySOL_Positive_TestData_5021 @5021 @SOL @RS19029 @LeadType1 @LeadType3 @LeadType4
  Scenario Outline: Mortgage Acquisition Priority 5021 RS19029 SOL Create test data for LeadType1, 3, 4 positive test cases
    Given load data from "MortAcq_SOL" excel sheet
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
      | Testcases                                                                                  |
      | Lead Type 1 should be prioritized When we have Mort Acq customer has all the LeadType 1, 3 |
      | Lead Type 1 should be prioritized When we have Mort Acq customer has all the LeadType 1, 4 |
      | Lead Type 3 should be prioritized When we have Mort Acq customer has all the LeadType 3, 4 |

