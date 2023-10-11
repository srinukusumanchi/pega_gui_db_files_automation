Feature: Validation for D2D Engagement DigitalPayment-Android

  
#  As part of D2D Early Engagement Program, this welcome message will target new and existing customers
#  to introduce them to their new D2D account / Scotiabank.
#  It also include a test of the target population who are NEW TO BANK based on Customer relationship date within the last 7 days
  @D2DEngagementDigitalPayment @D2DEngagementDigitalPayment_Positive_Validation_Android @Workstream-4 @4400 @EMAIL @WD18054
  Scenario Outline: D2D Engagement DigitalPayment-Android_WD18054_4400_EMAIL Validate D2D Engagement DigitalPayment-Android offer details against IH for Positive test cases
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
      | 4400_PRIM_CNTRY_CD= CA                                    |
      | 4400_CUST_TYP= PSNL                                       |
      | 4400_DO_NOT_SOLICIT_F=N                                   |
      | 4400_DO_NOT_SOLICIT_F=NULL                                |
      | 4400_LANG_CD=E                                            |
      | 4400_LANG_CD=EN                                           |
      | 4400_LANG_CD=F                                            |
      | 4400_LANG_CD=FR                                           |
      | 4400_LANG_CODE_USAGE=e                                    |
      | 4400_LANG_CODE_USAGE=en                                   |
      | 4400_LANG_CODE_USAGE=f                                    |
      | 4400_LANG_CODE_USAGE=fr                                   |
      | 4400_INDV_BRTH_DT_Greater than 16                         |
      | 4400_INDV_BRTH_DT_Equal to 16                             |
      | 4400_DoNotEmailFlag=N                                     |
      | 4400_INDV_FRST_NM !=NULL                                  |
      | 4400_INDV_LAST_NM !=NULL                                  |
      | 4400_VLD_EMAIL_F =Y                                       |
      | 4400_Prv_Bnk_Ind=N                                        |
      | 4400_Deceased_F=N                                         |
      | 4400_EMPLOYEE_STAFF_F=N                                   |
      | 4400_EMPLOYEE_STAFF_F=NULL                                |
      | 4400_CUST_AGE!=NULL                                       |
      | 4400_PRIM_EMAIL_ADDR!=NULL                                |
      | 4400_CC_VIP_IND !=2 and 9                                 |
      | 4400_CC_VIP_IND =NULL                                |
      | 4400_Device_Tp = Android                                  |
      | 4400_PRD CD- 01, SUB PRD CD -01                           |
      | 4400_PRD CD- 01, SUB PRD CD -02                           |
      | 4400_PRD CD- 01, SUB PRD CD -03                           |
      | 4400_PRD CD- 01, SUB PRD CD -04                           |
      | 4400_PRD CD-02, SUB PRD CD -01                            |
      | 4400_PRD CD-02, SUB PRD CD -02                            |
      | 4400_PRD CD-02, SUB PRD CD -03                            |
      | 4400_PRD CD-07, SUB PRD CD -11                            |
      | 4400_PRD CD-07, SUB PRD CD -12                            |
      | 4400_PRD CD-13, SUB PRD CD -01                            |
      | 4400_PRD CD-13, SUB PRD CD -03                            |
      | 4400_PRD CD-13, SUB PRD CD -07                            |
      | 4400_PRD CD-13, SUB PRD CD -08                            |
      | 4400_PRD CD-19, SUB PRD CD -01                            |
      | 4400_PRD CD-19, SUB PRD CD -02                            |
      | 4400_PRD CD-19, SUB PRD CD -03                            |
      | 4400_PRD CD-19, SUB PRD CD -04                            |
      | 4400_PRD CD-19, SUB PRD CD -07                            |
      | 4400_PRD CD-19, SUB PRD CD -08                            |
      | 4400_PRD CD-23, SUB PRD CD -01                            |
      | 4400_PRD CD-23, SUB PRD CD -03                            |
      | 4400_SRC_ACCT_STAT_CD=A                                   |
      | 4400_Account Open Date equal to 63 days                   |
      | 4400_Account Open Date >=63 and <=68 days                 |
      | 4400_Account Open Date equal to 68 days                   |
      | 4400_ACCT_SUBSYS_ID=BB                                    |
      | 4400_Primary_Acct_Holder_Flag = Y                         |
      | 4400_LAST_APPLE_PAY_TXN_TMSTMP = NULL                     |
      | 4400_LAST_APPLE_PAY_TXN_TMSTMP not within last 3 months   |
      | 4400_LAST_ANDROID_PAY_TXN_TMSTMP = NULL                   |
      | 4400_LAST_ANDROID_PAY_TXN_TMSTMP not within last 3 months |
      | 4400_LAST_SAMSUNG_PAY_TXN_TMSTMP = NULL                   |
      | 4400_LAST_SAMSUNG_PAY_TXN_TMSTMP not within last 3 months |
      | 4400_LAST_SCOTIA_PAY_TXN_TMSTMP = NULL                    |
      | 4400_LAST_SCOTIA_PAY_TXN_TMSTMP not within last 3 months  |


  @D2DEngagementDigitalPayment @D2DEngagementDigitalPayment-Android_Negative_Validation @Workstream-4 @4400 @EMAIL @WD18054
  Scenario Outline: D2D Engagement DigitalPayment-Android_WD18054_4400_EMAIL Verify D2D Engagement DigitalPayment-Android offer details are not displayed in IH for Negative test cases
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
      | N_4400_PRIM_CNTRY_CD!= CA                               |
      | N_4400_PRIM_CNTRY_CD=NULL                               |
      | N_4400_CUST_TYP != PSNL                                 |
      | N_4400_CUST_TYP =  Null                                 |
      | N_4400_DO_NOT_SOLICIT_F=Y                               |
      | N_4400_LANG_CD=K                                        |
      | N_4400_LANG_CD=NE                                       |
      | N_4400_LANG_CD=Null                                     |
      | N_4400_Indv_Brth_Dt less than 16                        |
      | N_4400_DoNotEmailFlag=Y                                 |
      | N_4400_DoNotEmailFlag=NULL                              |
      | N_4400_INDV_FRST_NM =NULL                               |
      | N_4400_INDV_LAST_NM =NULL                               |
      | N_4400_VLD_EMAIL_F =N                                   |
      | N_4400_VLD_EMAIL_F =NULL                                |
      | N_4400_Prv_Bnk_Ind=Y                                    |
      | N_4400_Prv_Bnk_Ind=NULL                                 |
      | N_4400_Deceased_F=Y                                     |
      | N_4400_Deceased_F=NULL                                  |
      | N_4400_EMPLOYEE_STAFF_F=Y                               |
      | N_4400_CUST_AGE=NULL                                    |
      | N_4400_PRIM_EMAIL_ADDR = BLANK                          |
      | N_4400_PRIM_EMAIL_ADDR = NULL                           |
      | N_4400_CC_VIP_IND = 2                                   |
      | N_4400_CC_VIP_IND = 9                                   |
      | N_4400_Device_Tp != Android                             |
      | N_4400_Device_Tp = Null                                 |
      | N_4400_PRD CD- 01, SUB PRD CD -07                       |
      | N_4400_PRD CD- 02, SUB PRD CD -11                       |
      | N_4400_PRD CD- 07, SUB PRD CD -01                       |
      | N_4400_PRD CD- 13, SUB PRD CD -04                       |
      | N_4400_PRD CD-18, SUB PRD CD -01                        |
      | N_4400_PRD CD-18, SUB PRD CD -07                        |
      | N_4400_PRD CD-18, SUB PRD CD -03                        |
      | N_4400_PRD CD-19, SUB PRD CD -11                        |
      | N_4400_PRD CD-23, SUB PRD CD -07                        |
      | N_4400_ACCT_STAT_CD!=A                                  |
      | N_4400_ACCT_STAT_CD=NULL                                |
      | N_4400_ACCT_SUBSYS_ID!=BB                               |
      | N_4400_ACCT_SUBSYS_ID=NULL                              |
      | N_4400_Account Open Date less than 63 days              |
      | N_4400_Account Open Date gretaer than 68 days           |
      | N_4400_Primary_Acct_Holder_Flag = N                     |
      | N_4400_Primary_Acct_Holder_Flag = NULL                  |
      | N_4400_Account Open Date equal to Null                  |
      | N_4400_LAST_APPLE_PAY_TXN_TMSTMP within last 3 months   |
      | N_4400_LAST_ANDROID_PAY_TXN_TMSTMP within last 3 months |
      | N_4400_LAST_SAMSUNG_PAY_TXN_TMSTMP within last 3 months |
      | N_4400_LAST_SCOTIA_PAY_TXN_TMSTMP within last 3 months  |