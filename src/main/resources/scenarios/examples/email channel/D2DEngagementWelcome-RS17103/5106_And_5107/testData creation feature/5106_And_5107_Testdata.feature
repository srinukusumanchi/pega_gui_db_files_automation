@5106_5107_TestDataCreation
Feature: Test data creation for D2D Welcome 5106 and 5107

  
#  As part of D2D Early Engagement Program, this welcome message will target new and existing customers
#  to introduce them to their new D2D account / Scotiabank.
#  It also include a test of the target population who are NEW TO BANK based on Customer relationship date within the last 7 days

  @D2DEngagementWelcome @D2DEngagementWelcomeDigiActivationFundCombo_Positive_TestData @Workstream-4 @5106 @EMAIL @RS17103
  Scenario Outline: D2D Engagement Welcome-Dig Activation and Fund Combo_RS17103_5106_EMAIL Create test data for positive test cases
    Given load data from "Welcome" excel sheet
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
      | Test cases                      | Acct_Odt | CUST_OPND_DT |
      | 5106_DO_NOT_SOLICIT_F= Null     | 4        | 2            |
      | 5106_INDV_BRTH_DT_Equal to 16   | 4        | 2            |
      | 5106_LANG_CD=E                  | 4        | 2            |
      | 5106_LANG_CD=EN                 | 4        | 2            |
      | 5106_LANG_CD=F                  | 4        | 2            |
      | 5106_LANG_CD=FR                 | 4        | 2            |
      | 5106_LANG_CD small case =e      | 4        | 2            |
      | 5106_LANG_CD small case = en    | 4        | 2            |
      | 5106_LANG_CD small case  =f     | 4        | 2            |
      | 5106_LANG_CD small case =fr     | 4        | 2            |
      | 5106_EMPLOYEE_STAFF_F=NULL      | 4        | 2            |
      | 5106_PRD CD- 23, SUB PRD CD -01 | 4        | 2            |
#      | 5106_Account Open Date equal to 03 days | 3        | 1            |
#      | 5106_Account Open Date equal to 10 days | 10       | 1            |
#      | 5106_PRD CD- 23, SUB PRD CD -03         | 3        | 1            |
#      | 5106_CUST_OPND_DT = 1st Day             | 3        | 1            |
#      | 5106_CUST_OPND_DT = 9th Day             | 3        | 9           |


  @D2DEngagementWelcome @D2DEngagementWelcomeDigiActivationFundCombo_NegativeTestData @Workstream-4 @5106 @EMAIL @RS17103
  Scenario Outline: D2D Engagement Welcome-Dig Activation and Fund Combo_RS17103_5106_EMAIL Create test data for negative test cases
    Given load data from "Welcome" excel sheet
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
      | Test cases                                    | Acct_Odt | CUST_OPND_DT |
      | N-5106_PRIM_CNTRY_CD!=CA                      | 6        | 8            |
      | N-5106_PRIM_CNTRY_CD=Null                     | 6        | 8            |
      | N-5106_CUST_TP_CD != PSNL                     | 6        | 8            |
      | N-5106_CUST_TP_CD =  Null                     | 6        | 8            |
      | N-5106_DO_NOT_SOLICIT_F = Y                   | 6        | 8            |
      | N-5106_Indv_Brth_Dt Equal to 15               | 6        | 8            |
      | N-5106_Indv_Brth_Dt Equal to Null             | 6        | 8            |
      | N-5106_Indv_Brth_Dt with in range (1-14)      | 6        | 8            |
      | N-5106_Deceased_F = Y                         | 6        | 8            |
      | N-5106_Deceased_F=Null                        | 6        | 8            |
      | N-5106_Prv_Bnk_Ind=Null                       | 6        | 8            |
      | N-5106_Prv_Bnk_Ind=Y                          | 6        | 8            |
      | N-5106_CC_VIP_IND should be 2                 | 6        | 8            |
      | N-5106_CC_VIP_IND should be 9                 | 6        | 8            |
      | N-5106_PRIM_EMAIL_ADDR = Null                 | 6        | 8            |
      | N-5106_INDV_INDV_FRST_NM =  Null              | 6        | 8            |
      | N-5106_INDV_LAST_NM = Null                    | 6        | 8            |
      | N-5106_Do not Email Flag-Y                    | 6        | 8            |
      | N-5106_Do not Email Flag-Null                 | 6        | 8            |
      | N-5106_VLD_EMAIL_F -N                         | 6        | 8            |
      | N-5106_VLD_EMAIL_F -Null                      | 6        | 8            |
      | N-5106_EMPLOYEE_STAFF_F=Y                     | 6        | 8            |
      | N-5106_LANG_CD = K                            | 6        | 8            |
      | N-5106_LANG_CD = NE                           | 6        | 8            |
      | N-5106_ACCT_SUBSYS_ID = KS                    | 6        | 8            |
      | N-5106_PRD CD- 23, SUB PRD CD -02             | 6        | 8            |
      | N-5106_PRD CD-23, SUB PRD CD -04              | 6        | 8            |
      | N-5106_PRD CD- 01, SUB PRD CD -05             | 6        | 8            |
      | N-5106_PRD CD-02, SUB PRD CD -04              | 6        | 8            |
      | N-5106_PRD CD- 19, SUB PRD CD -05             | 6        | 8            |
      | N-5106_PRD CD- 18, SUB PRD CD -01             | 6        | 8            |
      | N-5106_PRD CD- 13, SUB PRD CD -02             | 6        | 8            |
      | N-5106_PRD CD-13, SUB PRD CD -09              | 6        | 8            |
      | N-5106_PRD CD- 07, SUB PRD CD -10             | 6        | 8            |
      | N-5106_PRD CD-07, SUB PRD CD -13              | 6        | 8            |
      | N-5106_SRC_ACCT_STAT_CD = B                   | 6        | 8            |
      | N-5106_SRC_ACCT_STAT_CD-Null                  | 6        | 8            |
      | N-5106_Account Open Date less than 03 days    | 2        | 8            |
      | N-5106_Account Open Date greater than 10 days | 11       | 8            |
      | N-5106_Account Open Date equal to Null        | Null     | 8            |
      | N-5106_PRIM_ACCT_HOLDER_F = Null              | 6        | 8            |
      | N-5106_PRIM_ACCT_HOLDER_F = N                 | 6        | 8            |
      | N-5106_CUST_OPND_DT = 10th Day                | 5        | 10           |
      | N-5106_CUST_OPND_DT = Null                    | 6        | NULL         |


  @D2DEngagementWelcome @D2DEngagementWelcomeSimpleSwitch_Positive_TestData @Workstream-4 @5107 @EMAIL @RS17103
  Scenario Outline: D2D Engagement Welcome-Simple Switch_RS17103_5107_EMAIL Create test data for positive test cases
    Given load data from "Welcome" excel sheet
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
      | Test cases                    | Acct_Odt | CUST_OPND_DT |
      | 5107_DO_NOT_SOLICIT_F= Null   | 6        | 2            |
      | 5107_INDV_BRTH_DT_Equal to 16 | 6        | 3            |
      | 5107_LANG_CD=E                | 6        | 4            |
      | 5107_LANG_CD=EN               | 6        | 5            |
      | 5107_LANG_CD=F                | 6        | 5            |
      | 5107_LANG_CD=FR               | 6        | 4            |
      | 5107_LANG_CD small case =e    | 6        | 3            |
      | 5107_LANG_CD small case = en  | 6        | 3            |
      | 5107_LANG_CD small case  =f   | 6        | 3            |
      | 5107_LANG_CD small case =fr   | 6        | 2            |
#      | 5107_EMPLOYEE_STAFF_F=NULL              | 6        | 1            |
#      | 5107_Account Open Date equal to 03 days | 3        | 1            |
#      | 5107_Account Open Date equal to 10 days | 10       | 1            |
#      | 5107_PRD CD- 23, SUB PRD CD -01         | 8        | 1            |
#      | 5107_PRD CD- 23, SUB PRD CD -03         | 8        | 1            |
#      | 5107_CUST_OPND_DT = 1st Day             | 8        | 1            |
#      | 5107_CUST_OPND_DT = 9th Day             | 8        | 9            |


  @D2DEngagementWelcome @D2DEngagementWelcomeSimpleSwitch_NegativeTestData @Workstream-4 @5107 @EMAIL @RS17103
  Scenario Outline: D2D Engagement Welcome-Simple Switch_RS17103_5107_EMAIL Create test data for negative test cases
    Given load data from "Welcome" excel sheet
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
      | Test cases                                    | Acct_Odt | CUST_OPND_DT |
      | N-5107_PRIM_CNTRY_CD!=CA                      | 7        | 4            |
      | N-5107_PRIM_CNTRY_CD=Null                     | 7        | 4            |
      | N-5107_CUST_TP_CD != PSNL                     | 7        | 4            |
      | N-5107_CUST_TP_CD =  Null                     | 7        | 4            |
      | N-5107_DO_NOT_SOLICIT_F = Y                   | 7        | 4            |
      | N-5107_Indv_Brth_Dt Equal to 15               | 7        | 5            |
      | N-5107_Indv_Brth_Dt Equal to Null             | 7        | 5            |
      | N-5107_Indv_Brth_Dt with in range (1-14)      | 7        | 5            |
      | N-5107_Deceased_F = Y                         | 7        | 5            |
      | N-5107_Deceased_F=Null                        | 7        | 5            |
      | N-5107_Prv_Bnk_Ind=Null                       | 7        | 5            |
      | N-5107_Prv_Bnk_Ind=Y                          | 7        | 5            |
      | N-5107_CC_VIP_IND should be 2                 | 7        | 5            |
      | N-5107_CC_VIP_IND should be 9                 | 7        | 5            |
      | N-5107_PRIM_EMAIL_ADDR = Null                 | 7        | 5            |
      | N-5107_INDV_INDV_FRST_NM =  Null              | 7        | 8            |
      | N-5107_INDV_LAST_NM = Null                    | 7        | 8            |
      | N-5107_Do not Email Flag-Y                    | 7        | 8            |
      | N-5107_Do not Email Flag-Null                 | 7        | 8            |
      | N-5107_VLD_EMAIL_F -N                         | 7        | 8            |
      | N-5107_VLD_EMAIL_F -Null                      | 7        | 8            |
      | N-5107_EMPLOYEE_STAFF_F=Y                     | 7        | 8            |
      | N-5107_LANG_CD = K                            | 7        | 8            |
      | N-5107_LANG_CD = NE                           | 7        | 7            |
      | N-5107_ACCT_SUBSYS_ID = KS                    | 7        | 7            |
      | N-5107_PRD CD- 23, SUB PRD CD -02             | 7        | 7            |
      | N-5107_PRD CD-23, SUB PRD CD -04              | 7        | 7            |
      | N-5107_PRD CD- 01, SUB PRD CD -05             | 7        | 7            |
      | N-5107_PRD CD-02, SUB PRD CD -04              | 7        | 7            |
      | N-5107_PRD CD- 19, SUB PRD CD -05             | 7        | 7            |
      | N-5107_PRD CD- 18, SUB PRD CD -01             | 7        | 1            |
      | N-5107_PRD CD- 13, SUB PRD CD -02             | 7        | 1            |
      | N-5107_PRD CD-13, SUB PRD CD -09              | 7        | 1            |
      | N-5107_PRD CD- 07, SUB PRD CD -10             | 7        | 1            |
      | N-5107_PRD CD-07, SUB PRD CD -13              | 7        | 1            |
      | N-5107_SRC_ACCT_STAT_CD = B                   | 7        | 3            |
      | N-5107_SRC_ACCT_STAT_CD-Null                  | 7        | 3            |
      | N-5107_Account Open Date less than 03 days    | 2        | 3            |
      | N-5107_Account Open Date greater than 10 days | 11       | 3            |
      | N-5107_Account Open Date equal to Null        | NULL     | 3            |
      | N-5107_PRIM_ACCT_HOLDER_F = Null              | 5        | 3            |
      | N-5107_PRIM_ACCT_HOLDER_F = N                 | 5        | 3            |
      | N-5107_CUST_OPND_DT = 10th Day                | 5        | 10           |
      | N-5107_CUST_OPND_DT = Null                    | 5        | NULL         |


