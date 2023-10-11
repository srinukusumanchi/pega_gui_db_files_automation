Feature: Test data creation for D2D Engagement Digital Payment-Unknown


#  As part of D2D Early Engagement Program, this Digital Payment message will target new and existing customers
#  to introduce them to their new D2D  Digital Payment/ Unknown.
#  It also include a test of the target population who are NEW TO BANK based on Customer relationship date within the last 7 days
  @D2DEngagementDigitalPayment @D2DEngagementDigitalPayment_Positive_TestData_Unknown @Workstream-4 @4401 @EMAIL @WD18054
  Scenario Outline: D2D Engagement DigitalPayment_WD18054_4401_EMAIL Create test data for positive test cases
    Given load data from "DigitalPayment" excel sheet
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
      | Test cases                                                | Acct_Odt |
#      | 4401_PRIM_CNTRY_CD= CA                                    | 65       |
#      | 4401_CUST_TYP= PSNL                                       | 65       |
#      | 4401_DO_NOT_SOLICIT_F=N                                   | 65       |
#      | 4401_DO_NOT_SOLICIT_F=NULL                                | 65       |
      | 4401_LANG_CD=E                                            | 65       |
#      | 4401_LANG_CD=EN                                           | 65       |
      | 4401_LANG_CD=F                                            | 65       |
#      | 4401_LANG_CD=FR                                           | 65       |
#      | 4401_LANG_CODE_USAGE=e                                    | 65       |
#      | 4401_LANG_CODE_USAGE=en                                   | 65       |
#      | 4401_LANG_CODE_USAGE=f                                    | 65       |
#      | 4401_LANG_CODE_USAGE=fr                                   | 65       |
#      | 4401_INDV_BRTH_DT_Greater than 16                         | 65       |
#      | 4401_INDV_BRTH_DT_Equal to 16                             | 65       |
#      | 4401_DoNotEmailFlag=N                                     | 65       |
#      | 4401_INDV_FRST_NM !=NULL                                  | 65       |
#      | 4401_INDV_LAST_NM !=NULL                                  | 65       |
#      | 4401_VLD_EMAIL_F =Y                                       | 65       |
#      | 4401_Prv_Bnk_Ind=N                                        | 65       |
#      | 4401_Deceased_F=N                                         | 65       |
#      | 4401_EMPLOYEE_STAFF_F=N                                   | 65       |
#      | 4401_EMPLOYEE_STAFF_F=NULL                                | 65       |
#      | 4401_CUST_AGE!=NULL                                       | 65       |
#      | 4401_PRIM_EMAIL_ADDR!=NULL                                | 65       |
#      | 4401_CC_VIP_IND !=2 and 9                                 | 65       |
#      | 4401_CC_VIP_IND =NULL                                     | 65       |
#      | 4401_Device_Tp != IOS                                     | 65       |
#      | 4401_Device_Tp != Android                                 | 65       |
#      | 4401_Device_Tp = NULL                                     | 65       |
#      | 4401_Device_Tp = Blank                                    | 65       |
#      | 4401_PRD CD- 01, SUB PRD CD -01                           | 65       |
#      | 4401_PRD CD- 01, SUB PRD CD -02                           | 65       |
#      | 4401_PRD CD- 01, SUB PRD CD -03                           | 65       |
#      | 4401_PRD CD- 01, SUB PRD CD -04                           | 65       |
#      | 4401_PRD CD-02, SUB PRD CD -01                            | 65       |
#      | 4401_PRD CD-02, SUB PRD CD -02                            | 65       |
#      | 4401_PRD CD-02, SUB PRD CD -03                            | 65       |
#      | 4401_PRD CD-07, SUB PRD CD -11                            | 65       |
#      | 4401_PRD CD-07, SUB PRD CD -12                            | 65       |
#      | 4401_PRD CD-13, SUB PRD CD -01                            | 65       |
#      | 4401_PRD CD-13, SUB PRD CD -03                            | 65       |
#      | 4401_PRD CD-13, SUB PRD CD -07                            | 65       |
#      | 4401_PRD CD-13, SUB PRD CD -08                            | 65       |
#      | 4401_PRD CD-19, SUB PRD CD -01                            | 65       |
#      | 4401_PRD CD-19, SUB PRD CD -02                            | 65       |
#      | 4401_PRD CD-19, SUB PRD CD -03                            | 65       |
#      | 4401_PRD CD-19, SUB PRD CD -04                            | 65       |
#      | 4401_PRD CD-19, SUB PRD CD -07                            | 65       |
#      | 4401_PRD CD-19, SUB PRD CD -08                            | 65       |
#      | 4401_PRD CD-23, SUB PRD CD -01                            | 65       |
#      | 4401_PRD CD-23, SUB PRD CD -03                            | 65       |
#      | 4401_SRC_ACCT_STAT_CD=A                                   | 65       |
#      | 4401_Account Open Date equal to 63 days                   | 63       |
#      | 4401_Account Open Date >=63 and <=68 days                 | 66       |
#      | 4401_Account Open Date equal to 68 days                   | 68       |
#      | 4401_ACCT_SUBSYS_ID=BB                                    | 65       |
#      | 4401_Primary_Acct_Holder_Flag = Y                         | 65       |
#      | 4401_LAST_APPLE_PAY_TXN_TMSTMP = NULL                     | 65       |
#      | 4401_LAST_APPLE_PAY_TXN_TMSTMP not within last 3 months   | 65       |
#      | 4401_LAST_ANDROID_PAY_TXN_TMSTMP = NULL                   | 65       |
#      | 4401_LAST_ANDROID_PAY_TXN_TMSTMP not within last 3 months | 65       |
#      | 4401_LAST_SAMSUNG_PAY_TXN_TMSTMP = NULL                   | 65       |
#      | 4401_LAST_SAMSUNG_PAY_TXN_TMSTMP not within last 3 months | 65       |
#      | 4401_LAST_SCOTIA_PAY_TXN_TMSTMP = NULL                    | 65       |
#      | 4401_LAST_SCOTIA_PAY_TXN_TMSTMP not within last 3 months  | 65       |


  @D2DEngagementDigitalPayment_NegativeTestData @D2DEngagementDigitalPayment_NegativeTestData_Unknown @Workstream-4 @4401 @EMAIL @WD18054
  Scenario Outline: D2D Engagement Digital Payment_WD18054_4401_EMAIL Create test data for negative testcases
    Given load data from "DigitalPayment" excel sheet
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
      | Test cases                                              | Acct_Odt |
      | N_4401_PRIM_CNTRY_CD!= CA                               | 65       |
      | N_4401_PRIM_CNTRY_CD=NULL                               | 65       |
      | N_4401_CUST_TYP != PSNL                                 | 65       |
      | N_4401_CUST_TYP =  Null                                 | 65       |
      | N_4401_DO_NOT_SOLICIT_F=Y                               | 65       |
      | N_4401_LANG_CD=K                                        | 65       |
      | N_4401_LANG_CD=NE                                       | 65       |
      | N_4401_LANG_CD=Null                                     | 65       |
      | N_4401_Indv_Brth_Dt less than 16                        | 65       |
      | N_4401_DoNotEmailFlag=Y                                 | 65       |
      | N_4401_DoNotEmailFlag=NULL                              | 65       |
      | N_4401_INDV_FRST_NM =NULL                               | 65       |
      | N_4401_INDV_LAST_NM =NULL                               | 65       |
      | N_4401_VLD_EMAIL_F =N                                   | 65       |
      | N_4401_VLD_EMAIL_F =NULL                                | 65       |
      | N_4401_Prv_Bnk_Ind=Y                                    | 65       |
      | N_4401_Prv_Bnk_Ind=NULL                                 | 65       |
      | N_4401_Deceased_F=Y                                     | 65       |
      | N_4401_Deceased_F=NULL                                  | 65       |
      | N_4401_EMPLOYEE_STAFF_F=Y                               | 65       |
      | N_4401_CUST_AGE=NULL                                    | 65       |
      | N_4401_PRIM_EMAIL_ADDR = BLANK                          | 65       |
      | N_4401_PRIM_EMAIL_ADDR = NULL                           | 65       |
      | N_4401_CC_VIP_IND = 2                                   | 65       |
      | N_4401_CC_VIP_IND = 9                                   | 65       |
      | N_4401_Device_Tp = IOS                                  | 65       |
      | N_4401_Device_Tp = Android                              | 65       |
      | N_4401_PRD CD- 01, SUB PRD CD -07                       | 65       |
      | N_4401_PRD CD- 02, SUB PRD CD -11                       | 65       |
      | N_4401_PRD CD- 07, SUB PRD CD -01                       | 65       |
      | N_4401_PRD CD- 13, SUB PRD CD -04                       | 65       |
      | N_4401_PRD CD-18, SUB PRD CD -01                        | 65       |
      | N_4401_PRD CD-18, SUB PRD CD -07                        | 65       |
      | N_4401_PRD CD-18, SUB PRD CD -03                        | 65       |
      | N_4401_PRD CD-19, SUB PRD CD -11                        | 65       |
      | N_4401_PRD CD-23, SUB PRD CD -07                        | 65       |
      | N_4401_ACCT_STAT_CD!=A                                  | 65       |
      | N_4401_ACCT_STAT_CD=NULL                                | 65       |
      | N_4401_ACCT_SUBSYS_ID!=BB                               | 65       |
      | N_4401_ACCT_SUBSYS_ID=NULL                              | 65       |
      | N_4401_Account Open Date less than 63 days              | 62       |
      | N_4401_Account Open Date greater than 68 days           | 69       |
      | N_4401_Primary_Acct_Holder_Flag = N                     | 65       |
      | N_4401_Primary_Acct_Holder_Flag = NULL                  | 65       |
      | N_4401_Account Open Date equal to Null                  | NULL     |
      | N_4401_LAST_APPLE_PAY_TXN_TMSTMP within last 3 months   | 65       |
      | N_4401_LAST_ANDROID_PAY_TXN_TMSTMP within last 3 months | 65       |
      | N_4401_LAST_SAMSUNG_PAY_TXN_TMSTMP within last 3 months | 65       |
      | N_4401_LAST_SCOTIA_PAY_TXN_TMSTMP within last 3 months  | 65       |