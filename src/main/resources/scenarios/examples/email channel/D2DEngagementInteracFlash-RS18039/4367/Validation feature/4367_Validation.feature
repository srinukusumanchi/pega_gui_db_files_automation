Feature: Validation for D2D Engagement InteracFlash

  
#  As part of D2D Early Engagement Program, this welcome message will target new and existing customers
#  to introduce them to their new D2D account / Scotiabank.
#  It also include a test of the target population who are NEW TO BANK based on Customer relationship date within the last 7 days
  @D2DEngagementInteracFlash @D2DEngagementInteracFlash_Positive_Validation_4367 @Workstream-4 @4367 @EMAIL @RS18039
  Scenario Outline: D2D Engagement InteracFlash_RS18039_4367_EMAIL Validate D2D Engagement InteracFlash_4367 offer details against IH for Positive test cases
    Given load data from "InteracFlash" excel sheet
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
      | Test cases                                |
      | 4367_PRIM_CNTRY_CD= CA                    |
      | 4367_CUST_TYP= PSNL                       |
      | 4367_DO_NOT_SOLICIT_F=N                   |
      | 4367_DO_NOT_SOLICIT_F=NULL                |
      | 4367_LANG_CD=E                            |
      | 4367_LANG_CD=EN                           |
      | 4367_LANG_CD=F                            |
      | 4367_LANG_CD=FR                           |
      | 4367_LANG_CODE_USAGE=e                    |
      | 4367_LANG_CODE_USAGE=en                   |
      | 4367_LANG_CODE_USAGE=f                    |
      | 4367_LANG_CODE_USAGE=fr                   |
      | 4367_CUST_AGE_Greater than 16             |
      | 4367_CUST_AGE_Equal to 16                 |
      | 4367_DoNotEmailFlag=N                     |
      | 4367_INDV_FRST_NM !=NULL                  |
      | 4367_INDV_LAST_NM !=NULL                  |
      | 4367_VLD_EMAIL_F =Y                       |
      | 4367_Prv_Bnk_Ind=N                        |
      | 4367_Deceased_F=N                         |
      | 4367_EMPLOYEE_STAFF_F=N                   |
      | 4367_EMPLOYEE_STAFF_F=NULL                |
      | 4367_CUST_AGE!=NULL                       |
      | 4367_PRD CD- 01, SUB PRD CD -01           |
      | 4367_PRD CD- 01, SUB PRD CD -02           |
      | 4367_PRD CD- 01, SUB PRD CD -03           |
      | 4367_PRD CD- 01, SUB PRD CD -04           |
      | 4367_PRD CD-02, SUB PRD CD -01            |
      | 4367_PRD CD-02, SUB PRD CD -02            |
      | 4367_PRD CD-02, SUB PRD CD -03            |
      | 4367_PRD CD-07, SUB PRD CD -11            |
      | 4367_PRD CD-07, SUB PRD CD -12            |
      | 4367_PRD CD-13, SUB PRD CD -01            |
      | 4367_PRD CD-13, SUB PRD CD -03            |
      | 4367_PRD CD-13, SUB PRD CD -07            |
      | 4367_PRD CD-13, SUB PRD CD -08            |
      | 4367_PRD CD-19, SUB PRD CD -01            |
      | 4367_PRD CD-19, SUB PRD CD -02            |
      | 4367_PRD CD-19, SUB PRD CD -03            |
      | 4367_PRD CD-19, SUB PRD CD -04            |
      | 4367_PRD CD-19, SUB PRD CD -07            |
      | 4367_PRD CD-19, SUB PRD CD -08            |
      | 4367_PRD CD-23, SUB PRD CD -01            |
      | 4367_PRD CD-23, SUB PRD CD -03            |
      | 4367_ACCT_STAT_CD=A                       |
      | 4367_PRIM_EMAIL_ADDR!=NULL                |
      | 4367_ACCT_SUBSYS_ID=BB                    |
      | 4367_Account Open Date equal to 55 days   |
      | 4367_Account Open Date >=49 and <=55 days |
      | 4367_Account Open Date equal to 49 days   |
      | 4367_LAST_FLASH_TXN_DT = Null             |
      | 4367_Primary_Acct_Holder_Flag = Y         |
      | 4367_CC_VIP_IND !=2 and 9                 |
      | 4367_CC_VIP_IND =NULL                     |



  @D2DEngagementInterFlash @D2DEngagementInteracFlash_Negative_Validation_4367 @Workstream-4 @4367 @EMAIL @RS18039
    Scenario Outline: D2D Engagement InteracFlash_RS18039_4367_EMAIL Validate D2D Engagement InteracFlash_4367 offer details against IH for Negative test cases
    Given load data from "InteracFlash" excel sheet
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
      | Test cases                                    |
      | N_4367_PRIM_CNTRY_CD!= CA                     |
      | N_4367_PRIM_CNTRY_CD=NULL                     |
      | N_4367_CUST_TYP != PSNL                       |
      | N_4367_CUST_TYP =  Null                       |
      | N_4367_DO_NOT_SOLICIT_F=Y                     |
      | N_4367_LANG_CD=K                              |
      | N_4367_LANG_CD=NE                             |
      | N_4367_LANG_CD=Null                           |
      | N_4367_Indv_Brth_Dt less than 16              |
      | N_4367_DoNotEmailFlag=Y                       |
      | N_4367_DoNotEmailFlag=NULL                    |
      | N_4367_INDV_FRST_NM =NULL                     |
      | N_4367_INDV_LAST_NM =NULL                     |
      | N_4367_VLD_EMAIL_F =N                         |
      | N_4367_Prv_Bnk_Ind=Y                          |
      | N_4367_Prv_Bnk_Ind=NULL                       |
      | N_4367_Deceased_F=Y                           |
      | N_4367_Deceased_F=NULL                        |
      | N_4367_EMPLOYEE_STAFF_F=Y                     |
      | N_4367_CUST_AGE=NULL                          |
      | N_4367_PRD CD- 01, SUB PRD CD -07             |
      | N_4367_PRD CD- 02, SUB PRD CD -11             |
      | N_4367_PRD CD- 07, SUB PRD CD -01             |
      | N_4367_PRD CD- 13, SUB PRD CD -04             |
      | N_4367_PRD CD-18, SUB PRD CD -01              |
      | N_4367_PRD CD-18, SUB PRD CD -07              |
      | N_4367_PRD CD-18, SUB PRD CD -03              |
      | N_4367_PRD CD-19, SUB PRD CD -11              |
      | N_4367_PRD CD-23, SUB PRD CD -07              |
      | N_4367_ACCT_STAT_CD!=A                        |
      | N_4367_ACCT_STAT_CD=NULL                      |
      | N_4367_PRIM_EMAIL_ADDR = BLANK                |
      | N_4367_PRIM_EMAIL_ADDR = NULL                 |
      | N_4367_ACCT_SUBSYS_ID!=BB                     |
      | N_4367_ACCT_SUBSYS_ID=NULL                    |
      | N_4367_Account Open Date less than 49 days    |
      | N_4367_Account Open Date gretaer than 55 days |
      | N_4367_LAST_FLASH_TXN_DT! = Null              |
      | N_4367_LAST_FLASH_TXN_DT! = Blank             |
      | N_4367_Primary_Acct_Holder_Flag = N           |
      | N_4367_Primary_Acct_Holder_Flag = NULL        |
      | N_4367_CC_VIP_IND = 2                         |
      | N_4367_CC_VIP_IND = 9                         |
