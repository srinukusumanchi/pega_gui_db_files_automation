@4894_TestDataCreation
Feature: Test data creation for Cross Sell Ultimate - 4894

#  Name:	D2D Early Engagement – Cross-Sell
#  Code:	RS19067
#  Data Specs:	https://confluence.agile.bns/display/CIMCAMP/Customer+Interaction+Ecosystem+-+Workstream+4
#  Ultimate (store  Cell Group 1 on IH)

#  SBAP (store  Cell Group 5 on IH)
#  Credit Card = N, AND	4894	                                     4894111901	Credit Card
#  Customer Relationship < 6 months, AND
#  Customer Age between 18 and 24


  @CrossSell @CrossSell_Positive_TestData @Workstream-4 @4894 @EMAIL @RS19067
  Scenario Outline: Cross Sell 4894_EMAIL Create test data for positive test cases for single account
    Given load data from "D2DCrossSell" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write customer open date "<CUST_OPND_DT>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    When write customer id into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write account number into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write account odt into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write purl key into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write hash key into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write last sequence id into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    When read customer purl profile information details from excel sheet "PURL_CUST_PROFILE" for "<Test cases>"
    Then insert customer in "PURL_CUST_PROFILE" table
    Examples:
      | Test cases                                                                                                           | Acct_Odt | CUST_OPND_DT |
      | 4894_DO_NOT_SOLICIT_F=NULL                                                                                           | 28       | 24           |
      | 4894_INDV_BRTH_DT_Equal to 18                                                                                        | 28       | 26           |
      | 4894_LANG_CD=E                                                                                                       | 28       | 27           |
      | 4894_LANG_CD=EN                                                                                                      | 28       | 28           |
      | 4894_LANG_CD=F                                                                                                       | 28       | 29           |
      | 4894_LANG_CD=FR                                                                                                      | 28       | 30           |
      | 4894_LANG_CD_LowerCase=e                                                                                             | 28       | 31           |
      | 4894_LANG_CD_LowerCase=en                                                                                            | 28       | 32           |
      | 4894_LANG_CD_LowerCase=f                                                                                             | 28       | 33           |
      | 4894_LANG_CD_LowerCase=fr                                                                                            | 28       | 34           |
      | 4894_EMPLOYEE_STAFF_F=NULL                                                                                           | 28       | 37           |
      | 4894_Account Open Date equal to 28 days                                                                              | 28       | 43           |
      | 4894_Account Open Date equal to 33 days                                                                              | 33       | 44           |
      | 4894_BANKRUPTCY_DT-NULL                                                                                              | 28       | 50           |
      | 4894_4894111901_CreditCard-N And CUST_OPND_DT<6 months And CUST_AGE >18 < 24 And PRD CD-07, SUB PRD CD-11            | 28       | 50           |
      | 4894_4894111901_CreditCard-N And CUST_OPND_DT<6 months And CUST_AGE >18 < 24 And PRD CD-07, SUB PRD CD-12            | 28       | 214          |
      | 4894_4894111901_CreditCard-N And CUST_OPND_DT=6 month last Day  And  CUST_AGE >18 < 24  And PRD CD-07, SUB PRD CD-11 | 28       | 214          |
      | 4894_4894111901_CreditCard-N And CUST_OPND_DT=6 month last Day  And  CUST_AGE >18 < 24  And PRD CD-07, SUB PRD CD-12 | 28       | 50           |
      | 4894_4894111901_CreditCard-N And CUST_OPND_DT<6 months And CUST_AGE =18 And PRD CD-07, SUB PRD CD-11                 | 28       | 50           |
      | 4894_4894111901_CreditCard-N And CUST_OPND_DT<6 months And CUST_AGE=24 And PRD CD-07, SUB PRD CD-11                  | 28       | 50           |
      | 4894_4894111901_CreditCard-N And CUST_OPND_DT<6 months And CUST_AGE =18 And PRD CD-07, SUB PRD CD-12                 | 28       | 50           |
      | 4894_4894111901_CreditCard-N And CUST_OPND_DT<6 months And CUST_AGE=24 And PRD CD-07, SUB PRD CD-12                  | 28       | 50           |

  @CrossSell @CrossSell_Negative_TestData @4894 @Workstream-4 @EMAIL @RS19067
  Scenario Outline: Cross Sell 4894_EMAIL Create test data for negative test cases single account
    Given load data from "D2DCrossSell" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write customer open date "<CUST_OPND_DT>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    When write customer id into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write account number into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write account odt into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write purl key into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write hash key into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write last sequence id into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    When read customer purl profile information details from excel sheet "PURL_CUST_PROFILE" for "<Test cases>"
    Then insert customer in "PURL_CUST_PROFILE" table
    Examples:
      | Test cases                                                                       | Acct_Odt | CUST_OPND_DT |
      | N-4894_PRIM_CNTRY_CD!=CA Eg:- AC                                                 | 28       | 1            |
      | N-4894_PRIM_CNTRY_CD=Null                                                        | 29       | 2            |
      | N-4894_CUST_TP_CD != PSNL (Eg:- Non_PSNL)                                        | 30       | 3            |
      | N-4894_CUST_TP_CD = Null                                                         | 31       | 4            |
      | N-4894_DO_NOT_SOLICIT_F= Y                                                       | 32       | 20           |
      | N-4894_Indv_Brth_Dt Equal to 17                                                  | 32       | 20           |
      | N-4894_Indv_Brth_Dt Equal to Null                                                | 32       | 20           |
      | N-4894_Indv_Brth_Dt with in range (1-16)                                         | 32       | 20           |
      | N-4894_PRD CD- 01, SUB PRD CD -08                                                | 32       | 20           |
      | N-4894_PRD CD- 02, SUB PRD CD -04                                                | 32       | 20           |
      | N-4894_PRD CD- 07, SUB PRD CD -08                                                | 32       | 20           |
      | N-4894_PRD CD- 13, SUB PRD CD -12                                                | 32       | 20           |
      | N-4894_PRD CD- 18, SUB PRD CD -02                                                | 32       | 20           |
      | N-4894_PRD CD- 19, SUB PRD CD -11                                                | 32       | 20           |
      | N-4894_PRD CD-23, SUB PRD CD -02                                                 | 32       | 20           |
      | N-4894_SRC_ACCT_STAT_CD-B                                                        | 32       | 20           |
      | N-4894_SRC_ACCT_STAT_CD-Null                                                     | 32       | 20           |
      | N-4894_Account Open Date greater than 33 days                                    | 34       | 20           |
      | N-4894_Account Open Date equal to Null                                           | NULL     | 20           |
      | N-4894_Account Open Date less than 28                                            | 15       | 20           |
      | N-4894_Account Open Date equal to 27                                             | 27       | 20           |
      | N-4894_Account Open Date equal to 34                                             | 34       | 20           |
      | N-4894_Deceased_F=Y                                                              | 32       | 20           |
      | N-4894_Deceased_F=Null                                                           | 32       | 20           |
      | N-4894_LANG_CD=K                                                                 | 32       | 20           |
      | N-4894_LANG_CD=NE                                                                | 32       | 20           |
      | N-4894_LANG_CD=Null                                                              | 32       | 20           |
      | N-4894_EMPLOYEE_STAFF_F=Y                                                        | 32       | 20           |
      | N-4894_ACCT_SUBSYS_ID_KS                                                         | 32       | 20           |
      | N-4894_Prv_Bnk_Ind=Null                                                          | 32       | 20           |
      | N-4894_Prv_Bnk_Ind=Y                                                             | 32       | 20           |
      | N-4894_MRKTBLE_F = N                                                             | 32       | 20           |
      | N-4894_MRKTBLE_F = NULL                                                          | 32       | 20           |
      | N-4894_Do Not Email Flag=Y                                                       | 32       | 20           |
      | N-4894_INDV_FRST_NM != Null                                                      | 32       | 20           |
      | N-4894_INDV_LAST_NM != Null                                                      | 32       | 20           |
      | N-4894_VLD_EMAIL_F = N                                                           | 32       | 20           |
      | N-4894_PRIM_EMAIL_ADDR  = BLANK                                                  | 32       | 20           |
      | N-4894_PRIM_EMAIL_ADDR  = NULL                                                   | 32       | 20           |
      | N-4894_Primary_Acct_Holder_Flag = N                                              | 32       | 20           |
      | N-4894_4894111901_CC-N And CUST_OPND_DT> 6 months AND CUST_Age Between 18 and 24 | 28       | 240          |
      | N-4894_CreditCard-N And CUST_OPND_DT<6 months And CustomerAge <18                | 32       | 20           |
      | N-4894_CreditCard-N And CUST_OPND_DT<6 months And CustomerAge >24                | 32       | 20           |
