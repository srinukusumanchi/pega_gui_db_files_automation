Feature: Validation for D2D Engagement DigitalPayment-IOS

  
#  As part of D2D Early Engagement Program, this welcome message will target new and existing customers
#  to introduce them to their new D2D account / Scotiabank.
#  It also include a test of the target population who are NEW TO BANK based on Customer relationship date within the last 7 days
  @D2DEngagementDigitalPayment @D2DEngagementDigitalPayment_Positive_Validation_IOS @Workstream-4 @4399 @EMAIL @WD18054
  Scenario Outline: D2D Engagement DigitalPayment-IOS_WD18054_4399_EMAIL Validate D2D Engagement DigitalPayment-IOS offer details against IH for Positive test cases
    Given load data from "DigitalPayment" excel sheet
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
      | 4399_PRIM_CNTRY_CD= CA                                    |
      | 4399_CUST_TYP= PSNL                                       |
      | 4399_DO_NOT_SOLICIT_F=N                                   |
      | 4399_DO_NOT_SOLICIT_F=NULL                                |
      | 4399_LANG_CD=E                                            |
      | 4399_LANG_CD=EN                                           |
      | 4399_LANG_CD=F                                            |
      | 4399_LANG_CD=FR                                           |
      | 4399_LANG_CODE_USAGE=e                                    |
      | 4399_LANG_CODE_USAGE=en                                   |
      | 4399_LANG_CODE_USAGE=f                                    |
      | 4399_LANG_CODE_USAGE=fr                                   |
      | 4399_INDV_BRTH_DT_Greater than 16                         |
      | 4399_INDV_BRTH_DT_Equal to 16                             |
      | 4399_DoNotEmailFlag=N                                     |
      | 4399_INDV_FRST_NM !=NULL                                  |
      | 4399_INDV_LAST_NM !=NULL                                  |
      | 4399_VLD_EMAIL_F =Y                                       |
      | 4399_Prv_Bnk_Ind=N                                        |
      | 4399_Deceased_F=N                                         |
      | 4399_EMPLOYEE_STAFF_F=N                                   |
      | 4399_EMPLOYEE_STAFF_F=NULL                                |
      | 4399_CUST_AGE!=NULL                                       |
      | 4399_PRIM_EMAIL_ADDR!=NULL                                |
      | 4399_CC_VIP_IND !=2 and 9                                 |
      | 4399_CC_VIP_IND =NULL                                     |
      | 4399_Device_Tp = ios                                      |
      | 4399_PRD CD- 01, SUB PRD CD -01                           |
      | 4399_PRD CD- 01, SUB PRD CD -02                           |
      | 4399_PRD CD- 01, SUB PRD CD -03                           |
      | 4399_PRD CD- 01, SUB PRD CD -04                           |
      | 4399_PRD CD-02, SUB PRD CD -01                            |
      | 4399_PRD CD-02, SUB PRD CD -02                            |
      | 4399_PRD CD-02, SUB PRD CD -03                            |
      | 4399_PRD CD-07, SUB PRD CD -11                            |
      | 4399_PRD CD-07, SUB PRD CD -12                            |
      | 4399_PRD CD-13, SUB PRD CD -01                            |
      | 4399_PRD CD-13, SUB PRD CD -03                            |
      | 4399_PRD CD-13, SUB PRD CD -07                            |
      | 4399_PRD CD-13, SUB PRD CD -08                            |
      | 4399_PRD CD-19, SUB PRD CD -01                            |
      | 4399_PRD CD-19, SUB PRD CD -02                            |
      | 4399_PRD CD-19, SUB PRD CD -03                            |
      | 4399_PRD CD-19, SUB PRD CD -04                            |
      | 4399_PRD CD-19, SUB PRD CD -07                            |
      | 4399_PRD CD-19, SUB PRD CD -08                            |
      | 4399_PRD CD-23, SUB PRD CD -01                            |
      | 4399_PRD CD-23, SUB PRD CD -03                            |
      | 4399_SRC_ACCT_STAT_CD=A                                   |
      | 4399_Account Open Date equal to 63 days                   |
      | 4399_Account Open Date >=63 and <=68 days                 |
      | 4399_Account Open Date equal to 68 days                   |
      | 4399_ACCT_SUBSYS_ID=BB                                    |
      | 4399_Primary_Acct_Holder_Flag = Y                         |
      | 4399_LAST_APPLE_PAY_TXN_TMSTMP = NULL                     |
      | 4399_LAST_APPLE_PAY_TXN_TMSTMP not within last 3 months   |
      | 4399_LAST_ANDROID_PAY_TXN_TMSTMP = NULL                   |
      | 4399_LAST_ANDROID_PAY_TXN_TMSTMP not within last 3 months |
      | 4399_LAST_SAMSUNG_PAY_TXN_TMSTMP = NULL                   |
      | 4399_LAST_SAMSUNG_PAY_TXN_TMSTMP not within last 3 months |
      | 4399_LAST_SCOTIA_PAY_TXN_TMSTMP = NULL                    |
      | 4399_LAST_SCOTIA_PAY_TXN_TMSTMP not within last 3 months  |


  @D2DEngagementDigitalPayment_NegativeValidation @D2DEngagementDigitalPayment-IOS_Negative_Validation @Workstream-4 @4399 @EMAIL @WD18054
  Scenario Outline: D2D Engagement DigitalPayment-IOS_WD18054_4399_EMAIL Verify D2D Engagement DigitalPayment-IOS offer details are not displayed in IH for Negative test cases
    Given load data from "DigitalPayment" excel sheet
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
      | N_4399_PRIM_CNTRY_CD!= CA                               |
      | N_4399_PRIM_CNTRY_CD=NULL                               |
      | N_4399_CUST_TYP != PSNL                                 |
      | N_4399_CUST_TYP =  Null                                 |
      | N_4399_DO_NOT_SOLICIT_F=Y                               |
      | N_4399_LANG_CD=K                                        |
      | N_4399_LANG_CD=NE                                       |
      | N_4399_LANG_CD=Null                                     |
      | N_4399_Indv_Brth_Dt less than 16                        |
      | N_4399_DoNotEmailFlag=Y                                 |
      | N_4399_DoNotEmailFlag=NULL                              |
      | N_4399_INDV_FRST_NM =NULL                               |
      | N_4399_INDV_LAST_NM =NULL                               |
      | N_4399_VLD_EMAIL_F =N                                   |
      | N_4399_VLD_EMAIL_F =NULL                                |
      | N_4399_Prv_Bnk_Ind=Y                                    |
      | N_4399_Prv_Bnk_Ind=NULL                                 |
      | N_4399_Deceased_F=Y                                     |
      | N_4399_Deceased_F=NULL                                  |
      | N_4399_EMPLOYEE_STAFF_F=Y                               |
      | N_4399_CUST_AGE=NULL                                    |
      | N_4399_PRIM_EMAIL_ADDR = BLANK                          |
      | N_4399_PRIM_EMAIL_ADDR = NULL                           |
      | N_4399_CC_VIP_IND = 2                                   |
      | N_4399_CC_VIP_IND = 9                                   |
      | N_4399_Device_Tp != ios                                 |
      | N_4399_Device_Tp = Null                                 |
      | N_4399_PRD CD- 01, SUB PRD CD -07                       |
      | N_4399_PRD CD- 02, SUB PRD CD -11                       |
      | N_4399_PRD CD- 07, SUB PRD CD -01                       |
      | N_4399_PRD CD- 13, SUB PRD CD -04                       |
      | N_4399_PRD CD-18, SUB PRD CD -01                        |
      | N_4399_PRD CD-18, SUB PRD CD -07                        |
      | N_4399_PRD CD-18, SUB PRD CD -03                        |
      | N_4399_PRD CD-19, SUB PRD CD -11                        |
      | N_4399_PRD CD-23, SUB PRD CD -07                        |
      | N_4399_ACCT_STAT_CD!=A                                  |
      | N_4399_ACCT_STAT_CD=NULL                                |
      | N_4399_ACCT_SUBSYS_ID!=BB                               |
      | N_4399_ACCT_SUBSYS_ID=NULL                              |
      | N_4399_Account Open Date less than 63 days              |
      | N_4399_Account Open Date gretaer than 68 days           |
      | N_4399_Primary_Acct_Holder_Flag = N                     |
      | N_4399_Primary_Acct_Holder_Flag = NULL                  |
      | N_4399_Account Open Date equal to Null                  |
      | N_4399_LAST_APPLE_PAY_TXN_TMSTMP within last 3 months   |
      | N_4399_LAST_ANDROID_PAY_TXN_TMSTMP within last 3 months |
      | N_4399_LAST_SAMSUNG_PAY_TXN_TMSTMP within last 3 months |
      | N_4399_LAST_SCOTIA_PAY_TXN_TMSTMP within last 3 months  |