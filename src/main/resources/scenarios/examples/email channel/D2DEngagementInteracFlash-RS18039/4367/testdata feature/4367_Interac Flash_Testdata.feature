Feature: Test data creation for D2D Engagement Interac Flash


#  As part of D2D Early Engagement Program, this welcome message will target new and existing customers
#  to introduce them to their new D2D account / Scotiabank.
#  It also include a test of the target population who are NEW TO BANK based on Customer relationship date within the last 7 days
  @D2DEngagementInteracFlash @D2DEngagementInteracFlash_Positive_TestData_4367 @Workstream-4 @4367 @EMAIL @RS18039
  Scenario Outline: D2D Engagement Interac Flash_RS18039_4367_EMAIL Create test data for positive test cases
    Given load data from "InteracFlash" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
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
      | Test cases                                | Acct_Odt |
      | 4367_PRIM_CNTRY_CD= CA                    | 50       |
      | 4367_CUST_TYP= PSNL                       | 50       |
      | 4367_DO_NOT_SOLICIT_F=N                   | 50       |
      | 4367_DO_NOT_SOLICIT_F=NULL                | 50       |
      | 4367_LANG_CD=E                            | 50       |
      | 4367_LANG_CD=EN                           | 50       |
      | 4367_LANG_CD=F                            | 50       |
      | 4367_LANG_CD=FR                           | 50       |
      | 4367_LANG_CODE_USAGE=e                    | 50       |
      | 4367_LANG_CODE_USAGE=en                   | 50       |
      | 4367_LANG_CODE_USAGE=f                    | 50       |
      | 4367_LANG_CODE_USAGE=fr                   | 50       |
      | 4367_CUST_AGE_Greater than 16             | 50       |
      | 4367_CUST_AGE_Equal to 16                 | 50       |
      | 4367_DoNotEmailFlag=N                     | 50       |
      | 4367_INDV_FRST_NM !=NULL                  | 50       |
      | 4367_INDV_LAST_NM !=NULL                  | 50       |
      | 4367_VLD_EMAIL_F =Y                       | 50       |
      | 4367_Prv_Bnk_Ind=N                        | 50       |
      | 4367_Deceased_F=N                         | 50       |
      | 4367_EMPLOYEE_STAFF_F=N                   | 50       |
      | 4367_EMPLOYEE_STAFF_F=NULL                | 50       |
      | 4367_CUST_AGE!=NULL                       | 50       |
      | 4367_PRD CD- 01, SUB PRD CD -01           | 50       |
      | 4367_PRD CD- 01, SUB PRD CD -02           | 50       |
      | 4367_PRD CD- 01, SUB PRD CD -03           | 50       |
      | 4367_PRD CD- 01, SUB PRD CD -04           | 50       |
      | 4367_PRD CD-02, SUB PRD CD -01            | 50       |
      | 4367_PRD CD-02, SUB PRD CD -02            | 50       |
      | 4367_PRD CD-02, SUB PRD CD -03            | 50       |
      | 4367_PRD CD-07, SUB PRD CD -11            | 50       |
      | 4367_PRD CD-07, SUB PRD CD -12            | 50       |
      | 4367_PRD CD-13, SUB PRD CD -01            | 50       |
      | 4367_PRD CD-13, SUB PRD CD -03            | 50       |
      | 4367_PRD CD-13, SUB PRD CD -07            | 50       |
      | 4367_PRD CD-13, SUB PRD CD -08            | 50       |
      | 4367_PRD CD-19, SUB PRD CD -01            | 50       |
      | 4367_PRD CD-19, SUB PRD CD -02            | 50       |
      | 4367_PRD CD-19, SUB PRD CD -03            | 50       |
      | 4367_PRD CD-19, SUB PRD CD -04            | 50       |
      | 4367_PRD CD-19, SUB PRD CD -07            | 50       |
      | 4367_PRD CD-19, SUB PRD CD -08            | 50       |
      | 4367_PRD CD-23, SUB PRD CD -01            | 50       |
      | 4367_PRD CD-23, SUB PRD CD -03            | 50       |
      | 4367_ACCT_STAT_CD=A                       | 50       |
      | 4367_PRIM_EMAIL_ADDR!=NULL                | 50       |
      | 4367_ACCT_SUBSYS_ID=BB                    | 50       |
      | 4367_Account Open Date equal to 55 days   | 50       |
      | 4367_Account Open Date >=49 and <=55 days | 52       |
      | 4367_Account Open Date equal to 49 days   | 49       |
      | 4367_LAST_FLASH_TXN_DT = Null             | 50       |
      | 4367_Primary_Acct_Holder_Flag = Y         | 50       |
      | 4367_CC_VIP_IND !=2 and 9                 | 50       |
      | 4367_CC_VIP_IND =NULL                     | 50       |



  @D2DEngagementInteracFlash @D2DEngagementInteracFlash_NegativeTestData_4367 @Workstream-4 @4367 @EMAIL @RS18039
  Scenario Outline: D2D Engagement Interac Flash_RS18039_4367_EMAIL Create test data for negative testcases
    Given load data from "InteracFlash" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
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
      | Test cases                                    | Acct_Odt |
      | N_4367_PRIM_CNTRY_CD!= CA                     | 50       |
      | N_4367_PRIM_CNTRY_CD=NULL                     | 50       |
      | N_4367_CUST_TYP != PSNL                       | 50       |
      | N_4367_CUST_TYP =  Null                       | 50       |
      | N_4367_DO_NOT_SOLICIT_F=Y                     | 50       |
      | N_4367_LANG_CD=K                              | 50       |
      | N_4367_LANG_CD=NE                             | 50       |
      | N_4367_LANG_CD=Null                           | 50       |
      | N_4367_Indv_Brth_Dt less than 16              | 50       |
      | N_4367_DoNotEmailFlag=Y                       | 50       |
      | N_4367_DoNotEmailFlag=NULL                    | 50       |
      | N_4367_INDV_FRST_NM =NULL                     | 50       |
      | N_4367_INDV_LAST_NM =NULL                     | 50       |
      | N_4367_VLD_EMAIL_F =N                         | 50       |
      | N_4367_Prv_Bnk_Ind=Y                          | 50       |
      | N_4367_Prv_Bnk_Ind=NULL                       | 50       |
      | N_4367_Deceased_F=Y                           | 50       |
      | N_4367_Deceased_F=NULL                        | 50       |
      | N_4367_EMPLOYEE_STAFF_F=Y                     | 50       |
      | N_4367_CUST_AGE=NULL                          | 50       |
      | N_4367_PRD CD- 01, SUB PRD CD -07             | 50       |
      | N_4367_PRD CD- 02, SUB PRD CD -11             | 50       |
      | N_4367_PRD CD- 07, SUB PRD CD -01             | 50       |
      | N_4367_PRD CD- 13, SUB PRD CD -04             | 50       |
      | N_4367_PRD CD-18, SUB PRD CD -01              | 50       |
      | N_4367_PRD CD-18, SUB PRD CD -07              | 50       |
      | N_4367_PRD CD-18, SUB PRD CD -03              | 50       |
      | N_4367_PRD CD-19, SUB PRD CD -11              | 50       |
      | N_4367_PRD CD-23, SUB PRD CD -07              | 50       |
      | N_4367_ACCT_STAT_CD!=A                        | 50       |
      | N_4367_ACCT_STAT_CD=NULL                      | 50       |
      | N_4367_PRIM_EMAIL_ADDR = BLANK                | 50       |
      | N_4367_PRIM_EMAIL_ADDR = NULL                 | 50       |
      | N_4367_ACCT_SUBSYS_ID!=BB                     | 50       |
      | N_4367_ACCT_SUBSYS_ID=NULL                    | 50       |
      | N_4367_Account Open Date less than 49 days    | 46       |
      | N_4367_Account Open Date gretaer than 55 days | 59       |
      | N_4367_LAST_FLASH_TXN_DT! = Null              | 50       |
      | N_4367_LAST_FLASH_TXN_DT! = Blank             | 50       |
      | N_4367_Primary_Acct_Holder_Flag = N           | 50       |
      | N_4367_Primary_Acct_Holder_Flag = NULL        | 50       |
      | N_4367_CC_VIP_IND = 2                         | 50       |
      | N_4367_CC_VIP_IND = 9                         | 50       |
