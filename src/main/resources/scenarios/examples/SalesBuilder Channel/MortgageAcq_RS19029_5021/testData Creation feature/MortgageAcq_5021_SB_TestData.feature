@MortgageAcquisition_SB
Feature: Test Data Creation For Mortgage Acquisition SB Channel


  @MortgageAcquisitionSB @MortgageAcquisitionSB_Positive_TestData_5021 @5021 @SB @RS19029 @LeadType1 @LeadType3 @LeadType4
  Scenario Outline: Mortgage Acquisition 5021 RS19029 SB Create test data for positive test cases

    Given load data from "MortAcq_SB" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Testcases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Testcases>"
    Then insert customer information details in "CUST_DIM" table

    Examples:
      | Testcases                                                                         |
      | CUST_TP_CD = PSNL                                                                 |
      | Country_CD = CA                                                                   |
      | CUST_AGE = 18                                                                     |
      | CUST_AGE Greater Than 18                                                          |
      | MRKTBLE_F = Y                                                                     |
      | Deceased_F = N                                                                    |
      | LANG_CD = E                                                                       |
      | LANG_CD = EN                                                                      |
      | LANG_CD = F                                                                       |
      | LANG_CD = FR                                                                      |
      | LANG_CD_LowerCase = e                                                             |
      | LANG_CD_LowerCase = en                                                            |
      | LANG_CD_LowerCase = f                                                             |
      | LANG_CD_LowerCase = fr                                                            |
      | NOT_AML_KYC = N                                                                   |
      | NOT_AML_KYC = NULL                                                                |
      | ASSIGNED_FA_TRANSIT != NULL                                                       |
      | ASSIGNED_FA_TRANSIT != BLANK                                                      |
      | DO_NOT_SOLICIT_F = N                                                              |
      | DO_NOT_SOLICIT_F = NULL                                                           |
      | DO_NOT_CALL_F = N                                                                 |
      | DO_NOT_CALL_F = NULL                                                              |
      | GIVEN_NAME != NULL                                                                |
      | BUSINESSEFFECTIVEDATE != NULL                                                     |
      | MLS_LISTING_FLAG = Y And MLS_ADDED_AT_DT = 0-30 Days For LeadType1                |
      | SOL_LAST_LOGIN_DT is NULL of Current Date (Digitally InActive) For LeadType1      |
      | SOL_LAST_LOGIN_DT is > 90 days of Current Date (Digitally InActive) For LeadType1 |
      | TV_TS_MORT_FLAG = Y For Getting the Lead Type3                                    |
      | SOL_LAST_LOGIN_DT is NULL of Current Date (Digitally InActive) For LeadType3      |
      | SOL_LAST_LOGIN_DT is > 90 days of Current Date (Digitally InActive) For LeadType3 |
      | MORT_OUT_PYMT_FLAG = Y For Getting the Lead Type4                                 |
      | SOL_LAST_LOGIN_DT is NULL of Current Date (Digitally InActive) For LeadType4      |
      | SOL_LAST_LOGIN_DT is > 90 days of Current Date (Digitally InActive) For LeadType4 |



  @MortgageAcquisitionSB @MortgageAcquisitionSB_Negative_TestData_5021 @5021 @SB @RS19029 @LeadType1 @LeadType3 @LeadType4
  Scenario Outline: Mortgage Acquisition 5021 RS19029 SB Create test data for Negative test cases
    Given load data from "MortAcq_SB" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Testcases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Testcases>"
    Then insert customer information details in "CUST_DIM" table

    Examples:
      | Testcases                                                                              |
      | CUST_TP_CD = !PSNL                                                                     |
      | CUST_TP_CD = NULL                                                                      |
      | Country_CD = !CA                                                                       |
      | Country_CD = NULL                                                                      |
      | Customer age is less than 18                                                           |
      | Customer age is Null                                                                   |
      | MRKTBLE_F = N                                                                          |
      | MRKTBLE_F = NULL                                                                       |
      | Deceased_F = Y                                                                         |
      | Deceased_F = NULL                                                                      |
      | Language Code is K                                                                     |
      | Language Code is NE                                                                    |
      | Language Code is Null                                                                  |
      | NOT_AML_KYC = Y                                                                        |
      | SOL_LAST_LOGIN_DT is with in 90Days (Digitally Active)                                 |
      | ASSIGNED_FA_TRANSIT = NULL                                                             |
      | ASSIGNED_FA_TRANSIT = BLANK                                                            |
      | DO_NOT_SOLICIT_F = Y                                                                   |
      | DO_NOT_CALL_F = Y                                                                      |
      | GIVEN_NAME = NULL                                                                      |
      | BUSINESSEFFECTIVEDATE = NULL                                                           |
      | MLS_LISTING_FLAG = N And MLS_ADDED_AT_DT = 0-30 Days For Not Getting the Lead Type1    |
      | MLS_LISTING_FLAG = N And MLS_ADDED_AT_DT > 30 Days For Not Getting the Lead Type1      |
      | MLS_LISTING_FLAG = Y And MLS_ADDED_AT_DT > 30 Days For Not Getting the Lead Type1      |
      | MLS_LISTING_FLAG = NULL And MLS_ADDED_AT_DT = 0-30 Days For Not Getting the Lead Type1 |
      | MLS_LISTING_FLAG = NULL And MLS_ADDED_AT_DT > 30 Days For Not Getting the Lead Type1   |
      | SOL_LAST_LOGIN_DT is with in 90Days (Digitally Active) For Not Getting LeadType1       |
      | TV_TS_MORT_FLAG = N For Not Getting the Lead Type3                                     |
      | TV_TS_MORT_FLAG = NULL For Not Getting the Lead Type3                                  |
      | SOL_LAST_LOGIN_DT is with in 90Days (Digitally Active) For Not Getting LeadType3       |
      | MORT_OUT_PYMT_FLAG = N For Not Getting the Lead Type4                                  |
      | MORT_OUT_PYMT_FLAG = NULL For Not Getting the Lead Type4                               |
      | SOL_LAST_LOGIN_DT is with in 90Days (Digitally Active) For Not Getting LeadType4       |


  @MortgageAcquisitionSB @MortgageAcquisitionSB_Positive_Negative_TestData_5021_LeadType2 @5021 @SB @RS19029 @LeadType2
  Scenario Outline: Mortgage Acquisition 5021 RS19029 SB Create test data for LeadType2 positive test cases
    Given load data from "MortAcq_SB" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Testcases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Testcases>"
    Then insert customer information details in "CUST_DIM" table
    When write cid in the "CLICKSTREAM" sheet for "<Testcases>"
    When read clickstrem information details from excel sheet "CLICKSTREAM" for "<Testcases>"
    Then insert clickstream information details in "CLICKSTREAM" table

    Examples:
      | Testcases                                                                                        |
      | MORT_COUNT_30DAY =>1 For Getting the Lead Type2                                                  |
      | SOL_LAST_LOGIN_DT is NULL of Current Date (Digitally InActive) For LeadType2                     |
      | SOL_LAST_LOGIN_DT is > 90 days of Current Date (Digitally InActive) For LeadType2                |
      | MORT_COUNT_30DAY < 1 For Not Getting the Lead Type2                                              |
      | SOL_LAST_LOGIN_DT is with in 90Days of Current Date (Digitally Active) For Not Getting LeadTyep2 |


  @MortgageAcquisitionSB @MortgageAcquisitionSBPriority @MortgageAcquisitionPrioritySB_Positive_TestData_5021_LeadType2 @5021 @SB @RS19029 @LeadType2
  Scenario Outline: Mortgage Acquisition Priority 5021 RS19029 SB Create test data for LeadType2 positive test cases

    Given load data from "MortAcq_SB" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Testcases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Testcases>"
    Then insert customer information details in "CUST_DIM" table
    When write cid in the "CLICKSTREAM" sheet for "<Testcases>"
    When read clickstrem information details from excel sheet "CLICKSTREAM" for "<Testcases>"
    Then insert clickstream information details in "CLICKSTREAM" table

    Examples:
      | Testcases                                                                                        |
      | Lead Type 1 should be prioritized When we have Mort Acq customer has all the LeadType 1, 2       |
      | Lead Type 3 should be prioritized When we have Mort Acq customer has all the LeadType 2, 3       |
      | Lead Type 4 should be prioritized When we have Mort Acq customer has all the LeadType 2, 4       |
      | Lead Type 1 should be prioritized When we have Mort Acq customer has all the LeadType 1, 2, 3    |
      | Lead Type 3 should be prioritized When we have Mort Acq customer has all the LeadType 2, 3, 4    |
      | Lead Type 1 should be prioritized When we have Mort Acq customer has all the LeadType 1, 2, 3, 4 |


  @MortgageAcquisitionSB @MortgageAcquisitionSBPriority @MortgageAcquisitionPrioritySB_Positive_TestData_5021 @5021 @SB @RS19029 @LeadType1 @LeadType3 @LeadType4
  Scenario Outline: Mortgage Acquisition Priority 5021 RS19029 SB Create test data for LeadType1, 3, 4 positive test cases
    Given load data from "MortAcq_SB" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Testcases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Testcases>"
    Then insert customer information details in "CUST_DIM" table

    Examples:
      | Testcases                                                                                  |
      | Lead Type 1 should be prioritized When we have Mort Acq customer has all the LeadType 1, 3 |
      | Lead Type 1 should be prioritized When we have Mort Acq customer has all the LeadType 1, 4 |
      | Lead Type 3 should be prioritized When we have Mort Acq customer has all the LeadType 3, 4 |

  @MortgageAcquisitionSB_Positive_TestData_5021_LeadType1_LeadType3_LeadType4 @MortgageAcquisitionSB_Positive_TestData_5021_AllLeadTypes
  Scenario Outline: Mortgage Acquisition 5021 RS19029 SB Create test data for positive test cases
    Given load data from "MortAcq_SB" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Testcases>"
    When write "SOL_LAST_LOGIN_DT" for "<sol_login>" into "CUST_DIM" sheet for "<Testcases>" for decrement in days
    And  write MLS Added Date "<MLS_ADDED_AT_DT>" value into sheet "CUST_DIM" for "<Testcases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Testcases>"
    Then insert customer information details in "CUST_DIM" table

    Examples:
      | Testcases             | sol_login | MLS_ADDED_AT_DT |
      | LeadType_1_5021022102 | 100       | 5               |
      | LeadType_3_5021022103 | NULL      | NULL            |
      | LeadType_4_5021022103 | 100       | NULL            |

  @MortgageAcquisitionSB_Positive_TestData_5021_LeadType2 @MortgageAcquisitionSB_Positive_TestData_5021_AllLeadTypes
  Scenario Outline: Mortgage Acquisition 5021 RS19029 SB Create test data for LeadType2 positive test cases
    Given load data from "MortAcq_SB" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Testcases>"
    When write "SOL_LAST_LOGIN_DT" for "<sol_login>" into "CUST_DIM" sheet for "<Testcases>" for decrement in days
    When read customer information details from excel sheet "CUST_DIM" for "<Testcases>"
    Then insert customer information details in "CUST_DIM" table
    When write cid in the "CLICKSTREAM" sheet for "<Testcases>"
    When read clickstrem information details from excel sheet "CLICKSTREAM" for "<Testcases>"
    Then insert clickstream information details in "CLICKSTREAM" table

    Examples:
      | Testcases             | sol_login |
      | LeadType_2_5021022102 | 100       |
