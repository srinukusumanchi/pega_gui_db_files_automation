Feature: Test data creation for D2D Engagement MappingTomorrow

  
#  As part of D2D Early Engagement Program, this welcome message will target new and existing customers
#  to introduce them to their new D2D account / Scotiabank.
#  It also include a test of the target population who are NEW TO BANK based on Customer relationship date within the last 7 days
  @D2DEngagementMappingTomorrow @D2DEngagementMappingTomorrow_Positive_TestData_4402 @Workstream-4 @4402 @EMAIL @WD18055
  Scenario Outline: D2D Engagement MappingTomorrow_WD18055_4402_EMAIL Create test data for positive test cases
    Given load data from "MappingTomorrow" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
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
      | Test cases                                | Acct_Odt |
      | 4402_ISSUE = Engagement and Group = D2D   | 70       |
      | 4402_CUST_TP_CD=PSNL                      | 70       |
      | 4402_PRIM_CNTRY_CD= CA                    | 70       |
      | 4402_DO_NOT_SOLICIT_F= N                  | 70       |
      | 4402_DO_NOT_SOLICIT_F= NULL               | 70       |
      | 4402_CUST_AGE_Greater than 18             | 70       |
      | 4402_CUST_AGE_Equal to 18                 | 70       |
      | 4402_DO_NOT_EMAIL_F= N                    | 70       |
      | 4402_INDV_FRST_NM= NOT NULL               | 70       |
      | 4402_INDV_FRST_NM!= NULL                  | 70       |
      | 4402_INDV_LST_NM= NOT NULL                | 70       |
      | 4402_INDV_LST_NM!= NULL                   | 70       |
      | 4402_VLD_EMAIL_F = Y                      | 70       |
      | 4402_Deceased_F= N                        | 70       |
      | 4402_LANG_CD= E                           | 70       |
      | 4402_LANG_CODE_USAGE=e                    | 70       |
      | 4402_LANG_CD= EN                          | 70       |
      | 4402_LANG_CODE_USAGE=en                   | 70       |
      | 4402_LANG_CD= F                           | 70       |
      | 4402_LANG_CODE_USAGE=f                    | 70       |
      | 4402_LANG_CD= FR                          | 70       |
      | 4402_LANG_CODE_USAGE=fr                   | 70       |
      | 4402_Prv_Bnk_Ind= N                       | 70       |
      | 4402_EMPLOYEE_STAFF_F= N                  | 70       |
      | 4402_EMPLOYEE_STAFF_F= NULL               | 70       |
      | 4402_CUST_AGE!= NULL                      | 70       |
      | 4402_SRC_ACCT_STAT_CD-A                   | 70       |
      | 4402_PRIM_EMAIL_ADDR= NOT NULL            | 70       |
      | 4402_ACCT_SUBSYS_ID= BB                   | 70       |
      | 4402_PRD CD- 01, SUB PRD CD -01           | 70       |
      | 4402_PRD CD- 01, SUB PRD CD -02           | 70       |
      | 4402_PRD CD- 01, SUB PRD CD -03           | 70       |
      | 4402_PRD CD- 01, SUB PRD CD -04           | 70       |
      | 4402_PRD CD-02, SUB PRD CD -01            | 70       |
      | 4402_PRD CD-02, SUB PRD CD -02            | 70       |
      | 4402_PRD CD-02, SUB PRD CD -03            | 70       |
      | 4402_PRD CD-13, SUB PRD CD -01            | 70       |
      | 4402_PRD CD-13, SUB PRD CD -03            | 70       |
      | 4402_PRD CD-13, SUB PRD CD -07            | 70       |
      | 4402_PRD CD-13, SUB PRD CD -08            | 70       |
      | 4402_PRD CD-07, SUB PRD CD -11            | 70       |
      | 4402_PRD CD-07, SUB PRD CD -12            | 70       |
      | 4402_PRD CD-19, SUB PRD CD -01            | 70       |
      | 4402_PRD CD-19, SUB PRD CD -02            | 70       |
      | 4402_PRD CD-19, SUB PRD CD -03            | 70       |
      | 4402_PRD CD-19, SUB PRD CD -04            | 70       |
      | 4402_PRD CD-19, SUB PRD CD -07            | 70       |
      | 4402_PRD CD-19, SUB PRD CD -08            | 70       |
      | 4402_PRD CD-23, SUB PRD CD -01            | 70       |
      | 4402_PRD CD-23, SUB PRD CD -03            | 70       |
      | 4402_Account Open Date equal to 70 days   | 70       |
      | 4402_Account Open Date equal to 75days    | 75       |
      | 4402_Account Open Date >=70 and <=75 days | 74       |
      | 4402_mappng_tmrw_excl_f=N                 | 70       |
      | 4402_Primary_Acct_Holder_Flag =Y          | 70       |
      | 4402_CC_VIP_IND!= 2and 9                  | 70       |
      | 4402_CC_VIP_IND=NULL                      | 70       |


  @D2DEngagementMappingTomorrow @D2DEngagementMappingTomorrow_NegativeTestData_4402 @Workstream-4 @4402 @EMAIL @WD18055
  Scenario Outline: D2D Engagement MappingTomorrow_WD18055_4402_EMAIL Create test data for negative testcases
    Given load data from "MappingTomorrow" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
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
      | Test cases                                    | Acct_Odt |
      | N_4402_PRIM_CNTRY_CD!=CA Eg:- AC              | 70       |
      | N_4402_PRIM_CNTRY_CD=Null                     | 70       |
      | N_4402_CUST_TP_CD != PSNL (Eg:- Non_PSNL)     | 70       |
      | N_4402_CUST_TP_CD = Null                      | 70       |
      | N_4402_DO_NOT_SOLICIT_F= Y                    | 70       |
      | N_4402_CUST_AGE_ Equal to Null                | 70       |
      | N_4402_CUST_AGE_ with in range (1-18)         | 70       |
      | N_4402_DO_NOT_EMAIL_F= Y                      | 70       |
      | N_4402_INDV_FRST_NM= NULL                     | 70       |
      | N_4402_VLD_EMAIL_F = N                        | 70       |
      | N_4402_INDV_LST_NM= NULL                      | 70       |
      | N_4402_Prv_Bnk_Ind= Null                      | 70       |
      | N_4402_Prv_Bnk_Ind= Y                         | 70       |
      | N_4402_Deceased_F= Y                          | 70       |
      | N_4402_Deceased_F= Null                       | 70       |
      | N_4402_EMPLOYEE_STAFF_F= Y                    | 70       |
      | N-4402_PRD CD- 01, SUB PRD CD -11             | 70       |
      | N_4402_PRD CD- 02, SUB PRD CD -04             | 70       |
      | N_4402_PRD CD- 07, SUB PRD CD -08             | 70       |
      | N_4402_PRD CD- 13, SUB PRD CD -12             | 70       |
      | N_4402_PRD CD-18, SUB PRD CD -01              | 70       |
      | N_4402_PRD CD-18, SUB PRD CD -07              | 70       |
      | N_4402_PRD CD-18, SUB PRD CD -03              | 70       |
      | N_4402_PRD CD- 19, SUB PRD CD -11             | 70       |
      | N_4402_PRD CD-23, SUB PRD CD -02              | 70       |
      | N_4402_SRC_ACCT_STAT_CD-B                     | 70       |
      | N_4402_SRC_ACCT_STAT_CD-Null                  | 70       |
      | N_4402_Account Open Date greater than 75 days | 79       |
      | N_4402_Account Open Date equal to Null        | NULL     |
      | N_4402_Account Open Date less than 70         | 60       |
      | N_4402_Account Open Date equal to 66          | 66       |
      | N_4402_LANG_CD= K                             | 70       |
      | N_4402_LANG_CD= NE                            | 70       |
      | N_4402_LANG_CD= Null                          | 70       |
      | N_4402_ACCT_SUBSYS_ID_KS                      | 70       |
      | N_4402_PRIM_EMAIL_ADDR= NULL                  | 70       |
      | N_4402_Primary_Acct_Holder_Flag =N            | 70       |
      | N_4402_CC_VIP_IND=2                           | 70       |
      | N_4402_CC_VIP_IND=9                           | 70       |
      | N_4402_PRIM_EMAIL_ADDR= BLANK                 | 70       |
      | N_4402_mappng_tmrw_excl_f=Y                   | 70       |

