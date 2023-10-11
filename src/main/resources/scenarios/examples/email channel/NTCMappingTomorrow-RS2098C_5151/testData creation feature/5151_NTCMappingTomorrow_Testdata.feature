@5151_MappingTomorrow_TestDataCreation
Feature: Test data creation for NTC Engagement Curriculum- Mapping Tomorrow


  @NTCEngagementMappingTomorrow_PositiveTcs @5151 @EMAIL @RS2098C
  Scenario Outline: NTC Engagement CurriCulum Mapping Tomorrow_RS2098C_5151_EMAIL Create test data for positive test cases
    Given load data from "NTCMappingTomPos" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "ARRV_DT" field with "<Arrival_Dt_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts

    Examples:
      | Test cases               | Arrival_Dt_Val | ACCT_ODT_Val | Acct_Cnt |
      | 5151_Primary_Country_Cd = CA                                | 45             | 183          | 1        |
#      | 5151_CUST_TP_CD=PSNL                                        | 45             | 183          | 1        |
#      | 5151_DO_NOT_SOLICIT_F=NULL                                  | 45             | 183          | 1        |
#      | 5151_DO_NOT_SOLICIT_F!=Y                                    | 45             | 183          | 1        |
#      | 5151_EMPLOYEE_STAFF_F=N                                     | 45             | 183          | 1        |
#      | 5151_EMPLOYEE_STAFF_F=Null                                  | 45             | 183          | 1        |
#      | 5151_LANG_CD in EN                                          | 45             | 183          | 1        |
#      | 5151_LANG_CD in E                                           | 45             | 183          | 1        |
#      | 5151_LANG_CD in F                                           | 45             | 183          | 1        |
#      | 5151_LANG_CD in FR                                          | 45             | 183          | 1        |
#      | 5151_IMMGRTN_CAT_CD not in S                                | 45             | 183          | 1        |
#      | 5151_IMMGRTN_CAT_CD not in S00                              | 45             | 183          | 1        |
#      | 5151_MCB_IND = Y                                            | 45             | 183          | 1        |
      | 5151_ARRV_DT is <5 years | 45             | 183          | 1        |
      | 5151_ARRV_DT is =5 years | 1825           | 183          | 1        |
#      | 5151_INDV_BRTH_DT is 18                                     | 45             | 183          | 1        |
#      | 5151_INDV_BRTH_DT is >18                                    | 45             | 183          | 1        |
#      | 5151_INDV_BRTH_DT !=NULL                                    | 45             | 183          | 1        |
#      | 5151_INDV_BRTH_DT IS NOT NULL                               | 45             | 183          | 1        |
#      | 5151_SRC_ACCT_STAT_CD=A                                     | 45             | 183          | 1        |
#      | 5151_PRIM_ACCT_HOLDER_F = Y                                 | 45             | 183          | 1        |
#      | 5151_CC_VIP_IND not 2                                       | 45             | 183          | 1        |
#      | 5151_Physicians_F = NULL                                    | 45             | 183          | 1        |
#      | 5151_CC_VIP_IND not 9                                       | 45             | 183          | 1        |
#      | 5151_Physicians_F = N                                       | 45             | 183          | 1        |
#      | 5151_MAPP_TMRRW_LAST_SESS_DT != <6 months from current date | 45             | 183          | 1        |
#      | 5151_MAPP_TMRRW_LAST_SESS_DT != NULL                        | 45             | 183          | 1        |
#      | 5151_SRC_PRD CODE=13  SRC_SUB PRD CD=01                     | 45             | 183          | 1        |
#      | 5151_SRC_PRD CODE=13  SRC_SUB PRD CD=03                     | 45             | 183          | 1        |
#      | 5151_SRC_PRD CODE=13  SRC_SUB PRD CD=07                     | 45             | 183          | 1        |
#      | 5151_SRC_PRD CODE=13  SRC_SUB PRD CD=08                     | 45             | 183          | 1        |
#      | 5151_Customer decease = N                                   | 45             | 183          | 1        |
#      | 5151_Account type is opened =181 days                       | 45             | 181          | 1        |
#      | 5151_Account type is opened =186 days                       | 45             | 186          | 1        |
#      | 5151_Account type is opened =183 days                       | 45             | 183          | 1        |
#      | Valid_Email_F=Y                                             | 45             | 183          | 1        |
#      | 5151_DO_NOT_EMAIL_F=N                                       | 45             | 183          | 1        |
#      | 5151_Validate IH Record fields against Proposition          | 45             | 183          | 1        |


  @NTCEngagementMappingTomorrow_NegativeTcs @5151 @EMAIL @RS2098C
  Scenario Outline: NTC Engagement CurriCulum Mapping Tomorrow_RS2098C_5151_EMAIL Create test data for Negative test cases
    Given load data from "NTCMappingTomNeg" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write Different Generic Dates in "ARRV_DT" field with "<Arrival_Dt_Val>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And write Different Generic Dates in "ACCT_ODT" field with "<ACCT_ODT_Val>" duration from current date into "ACCT_DIM" sheet for "<Test cases>" having "<Acct_Cnt>" records
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts
    Examples:
      | Test cases                                | Arrival_Dt_Val | ACCT_ODT_Val | Acct_Cnt |
#      | N-5151_PRIM_CNTRY_CD != CA                | 45             | 183          | 1        |
#      | N-5151_CUST_TP_CD != PSNL                 | 45             | 183          | 1        |
#      | N-5151_DO_NOT_SOLICIT_F = Y               | 45             | 183          | 1        |
#      | N-5151_EMPLOYEE_STAFF_F = Y               | 45             | 183          | 1        |
#      | N-5151_LANG_CD NOT in ( EN, E, FR, F)     | 45             | 183          | 1        |
#      | N-5151_Customer Decease - Y               | 45             | 183          | 1        |
#      | N-5151_Customer Decease - NULL            | 45             | 183          | 1        |
#      | N-5151_IMMGRTN_CAT_CD in S                | 45             | 183          | 1        |
#      | N-5151_IMMGRTN_CAT_CD in S00              | 45             | 183          | 1        |
#      | N-5151_MCB_IND !=  Y                      | 45             | 183          | 1        |
#      | N-5151_MCB_IND =  NULL                    | 45             | 183          | 1        |
#      | N-5151_ARRV_DT is > 5 years               | 1826           | 183          | 1        |
      | N-5151_ARRV_DT_eq_1827days               | 1827           | 183          | 1        |
#      | N-5151_INDV_BRTH_DT < 18                  | 45             | 183          | 1        |
#      | N-5151_INDV_BRTH_DT = NULL                | 45             | 183          | 1        |
#      | N-5151_SRC_ACCT_STAT_CD != A              | 45             | 183          | 1        |
#      | N-5151_PRIM_ACCT_HOLDER_F != Y            | 45             | 183          | 1        |
#      | N-5151_PRIM_ACCT_HOLDER_F = NULL          | 45             | 183          | 1        |
#      | N-5151_CC_VIP_IND is 2                    | 45             | 183          | 1        |
#      | N-5151_CC_VIP_IND is 9                    | 45             | 183          | 1        |
#      | N-5151_Physicians_F = Y                   | 45             | 183          | 1        |
#      | N-5151_MAPP_TMRRW_LAST_SESS_DT < 6 months | 45             | 183          | 1        |
#      | N-5151_MAPP_TMRRW_LAST_SESS_DT = NULL     | 45             | 183          | 1        |
#      | N-5151_ACCT_SUBSYS_ID != BB               | 45             | 183          | 1        |
#      | N-5151_PRD CODE=13  SUB PRD CD=05         | 45             | 183          | 1        |
#      | N-5151_PRD CODE=19  SUB PRD CD=06         | 45             | 183          | 1        |
#      | N-5151_PRD CODE=12  SUB PRD CD=04         | 45             | 183          | 1        |
#      | N-5151_Account type is opened < 181 days  | 45             | 180          | 1        |
#      | N-5151_Account type is opened > 186 days  | 45             | 187          | 1        |
#      | N-5151_Account Open Date = Null           | 45             | NULL         | 1        |
#      | N-5151_Do not Email Flag-Y                | 45             | 183          | 1        |
#      | N-5151_Do not Email Flag-NULL             | 45             | 183          | 1        |
#      | N-5151_VLD_EMAIL_F -N                     | 45             | 183          | 1        |
#      | N-5151_VLD_EMAIL_F -NULL                  | 45             | 183          | 1        |
#      | N-5151_ARRV_DT_eq_NULL                    | NULL           | 183          | 1        |
