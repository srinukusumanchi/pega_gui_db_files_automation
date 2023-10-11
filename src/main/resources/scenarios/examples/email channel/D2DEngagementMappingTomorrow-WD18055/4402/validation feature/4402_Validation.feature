Feature: Validation for D2D Engagement MappingTomorrow

  
#  As part of D2D Early Engagement Program, this welcome message will target new and existing customers
#  to introduce them to their new D2D account / Scotiabank.
#  It also include a test of the target population who are NEW TO BANK based on Customer relationship date within the last 7 days
  @D2DEngagementMappingTomorrow @D2DEngagementMappingTomorrow_Positive_Validation_4402 @Workstream-4 @4402 @EMAIL @WD18055
  Scenario Outline: D2D Engagement MappingTomorrow-4402_WD18055_EMAIL Validate D2D Engagement MappingTomorrow offer details against IH for Positive test cases
    Given load data from "MappingTomorrow" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate offer details against IH
    Examples:
      | Test cases                                                |
      |4402_ISSUE = Engagement and Group = D2D                           |
      |4402_CUST_TP_CD=PSNL                                              |
      |4402_PRIM_CNTRY_CD= CA                                            |
      |4402_DO_NOT_SOLICIT_F= N                                          |
      |4402_DO_NOT_SOLICIT_F= NULL                                       |
      |4402_CUST_AGE_Greater than 18                                     |
      |4402_CUST_AGE_Equal to 18                                         |
      |4402_DO_NOT_EMAIL_F= N                                            |
      |4402_INDV_FRST_NM= NOT NULL                                       |
      |4402_INDV_FRST_NM!= NULL                                          |
      |4402_INDV_LST_NM= NOT NULL                                        |
      |4402_INDV_LST_NM!= NULL                                           |
      |4402_VLD_EMAIL_F = Y                                              |
      |4402_Deceased_F= N                                                |
      |4402_LANG_CD= E                                                   |
      |4402_LANG_CODE_USAGE=e                                            |
      |4402_LANG_CD= EN                                                  |
      |4402_LANG_CODE_USAGE=en                                           |
      |4402_LANG_CD= F                                                   |
      |4402_LANG_CODE_USAGE=f                                            |
      |4402_LANG_CD= FR                                                  |
      |4402_LANG_CODE_USAGE=fr                                           |
      |4402_Prv_Bnk_Ind= N                                               |
      |4402_EMPLOYEE_STAFF_F= N                                          |
      |4402_EMPLOYEE_STAFF_F= NULL                                       |
      |4402_CUST_AGE!= NULL                                              |
      |4402_SRC_ACCT_STAT_CD-A                                           |
      |4402_PRIM_EMAIL_ADDR= NOT NULL                                    |
      |4402_ACCT_SUBSYS_ID= BB                                           |
      |4402_PRD CD- 01, SUB PRD CD -01                                   |
      |4402_PRD CD- 01, SUB PRD CD -02                                   |
      |4402_PRD CD- 01, SUB PRD CD -03                                   |
      |4402_PRD CD- 01, SUB PRD CD -04                                   |
      |4402_PRD CD-02, SUB PRD CD -01                                    |
      |4402_PRD CD-02, SUB PRD CD -02                                    |
      |4402_PRD CD-02, SUB PRD CD -03                                    |
      |4402_PRD CD-13, SUB PRD CD -01                                    |
      |4402_PRD CD-13, SUB PRD CD -03                                    |
      |4402_PRD CD-13, SUB PRD CD -07                                    |
      |4402_PRD CD-13, SUB PRD CD -08                                    |
      |4402_PRD CD-07, SUB PRD CD -11                                    |
      |4402_PRD CD-07, SUB PRD CD -12                                    |
      |4402_PRD CD-19, SUB PRD CD -01                                    |
      |4402_PRD CD-19, SUB PRD CD -02                                    |
      |4402_PRD CD-19, SUB PRD CD -03                                    |
      |4402_PRD CD-19, SUB PRD CD -04                                    |
      |4402_PRD CD-19, SUB PRD CD -07                                    |
      |4402_PRD CD-19, SUB PRD CD -08                                    |
      |4402_PRD CD-23, SUB PRD CD -01                                    |
      |4402_PRD CD-23, SUB PRD CD -03                                    |
      |4402_Account Open Date equal to 70 days                           |
      |4402_Account Open Date equal to 75days                            |
      |4402_Account Open Date >=70 and <=75 days                         |
      |4402_mappng_tmrw_excl_f=N                                         |
      |4402_Primary_Acct_Holder_Flag =Y                                  |
      |4402_CC_VIP_IND!= 2and 9                                          |
      |4402_CC_VIP_IND=NULL                                              |

  @D2DEngagementMappingTomorrow @D2DEngagementMappingTomorrow_Negative_Validation_4402 @Workstream-4 @4402 @EMAIL @WD18055
  Scenario Outline: D2D Engagement MappingTomorrow-4402_WD18055_EMAIL Validate D2D Engagement MappingTomorrow offer details against IH for Negative test cases
    Given load data from "MappingTomorrow" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then verify offer should not display
    Examples:
      | Test cases                                              |
      |N_4402_PRIM_CNTRY_CD!=CA Eg:- AC                                  |
      |N_4402_PRIM_CNTRY_CD=Null                                         |
      |N_4402_CUST_TP_CD != PSNL (Eg:- Non_PSNL)                         |
      |N_4402_CUST_TP_CD = Null                                          |
      |N_4402_DO_NOT_SOLICIT_F= Y                                        |
      |N_4402_CUST_AGE_ Equal to Null                                    |
      |N_4402_CUST_AGE_ with in range (1-18)                             |
      |N_4402_DO_NOT_EMAIL_F= Y                                          |
      |N_4402_INDV_FRST_NM= NULL                                         |
      |N_4402_VLD_EMAIL_F = N                                            |
      |N_4402_INDV_LST_NM= NULL                                          |
      |N_4402_Prv_Bnk_Ind= Null                                          |
      |N_4402_Prv_Bnk_Ind= Y                                             |
      |N_4402_Deceased_F= Y                                              |
      |N_4402_Deceased_F= Null                                           |
      |N_4402_EMPLOYEE_STAFF_F= Y                                        |
      |N-4402_PRD CD- 01, SUB PRD CD -11                                 |
      |N_4402_PRD CD- 02, SUB PRD CD -04                                 |
      |N_4402_PRD CD- 07, SUB PRD CD -08                                 |
      |N_4402_PRD CD- 13, SUB PRD CD -12                                 |
      |N_4402_PRD CD-18, SUB PRD CD -01                                  |
      |N_4402_PRD CD-18, SUB PRD CD -07                                  |
      |N_4402_PRD CD-18, SUB PRD CD -03                                  |
      |N_4402_PRD CD- 19, SUB PRD CD -11                                 |
      |N_4402_PRD CD-23, SUB PRD CD -02                                  |
      |N_4402_SRC_ACCT_STAT_CD-B                                         |
      |N_4402_SRC_ACCT_STAT_CD-Null                                      |
      |N_4402_Account Open Date greater than 75 days                     |
      |N_4402_Account Open Date equal to Null                            |
      |N_4402_Account Open Date less than 70                             |
      |N_4402_Account Open Date equal to 66                              |
      |N_4402_LANG_CD= K                                                 |
      |N_4402_LANG_CD= NE                                                |
      |N_4402_LANG_CD= Null                                              |
      |N_4402_ACCT_SUBSYS_ID_KS                                          |
      |N_4402_PRIM_EMAIL_ADDR= NULL                                      |
      |N_4402_Primary_Acct_Holder_Flag =N                                |
      |N_4402_CC_VIP_IND=2                                               |
      |N_4402_CC_VIP_IND=9                                               |
      |N_4402_PRIM_EMAIL_ADDR= BLANK                                     |
      |N_4402_mappng_tmrw_excl_f=Y                                       |