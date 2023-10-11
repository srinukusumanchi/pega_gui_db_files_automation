Feature: Test data creation for D2D Engagement DigitalPADPayment

  
#  As part of D2D Early Engagement Program, this Digital Payment message will target new and existing customers
#  to introduce them to their new D2D  Digital Payment/ Android.
#  It also include a test of the target population who are NEW TO BANK based on Customer relationship date within the last 7 days
  @D2DEngagementPADPayment @D2DEngagementPADPayment_Positive_TestData_4380_MutlipleAcc @Workstream-4 @4380 @EMAIL @RS18023
  Scenario Outline: D2D Engagement PADPayment_RS18023_4380_EMAIL Create test data for positive test cases
    Given load data from "BillPayment" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write customer open date "<CUST_OPND_DT>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    When write cid and account number into "PURL_CUST_PROFILE" sheet for "<Test cases>"  having "2" accounts
    And write purl key into "PURL_CUST_PROFILE" sheet for "<Test cases>"  having "2" accounts
    And write hash key into "PURL_CUST_PROFILE" sheet for "<Test cases>"  having "2" accounts
    Then insert customer in "PURL_CUST_PROFILE" table having "2" accounts

    Examples:
      | Test cases                                                                                                                | Acct_Odt | CUST_OPND_DT |
      | 4380_Customer has a Multiple BB Accounts that have no billpayment date on any of account                                  | 23       | 95           |
      | N-4380_Customer falls in both segments, then Bill Payment (Segment 2) is prioritized. (ie. 4380 is prioritized over 4316) | 23       | 95           |
