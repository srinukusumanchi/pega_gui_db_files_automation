Feature: Validation for D2D Engagement Bill Payment


  @D2DEngagementBillPayment @D2DEngagementBillPayment_Positive_Validation @Workstream-4 @4380 @EMAIL @RS18023
  Scenario Outline: D2D Engagement Bill Payment_RS18023_4380_EMAIL Validate D2D Engagement Bill Payment offer details against IH for Positive test cases
    Given load data from "BillPayment" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate the offer details against IH
    Examples:
      | Test cases                                                                               |
      | 4380_ISSUE = Engagement and Group = D2D                                                  |
      | 4380_CUST_TP_CD=PSNL                                                                     |
      | 4380_PRIM_CNTRY_CD= CA                                                                   |
      | 4380_DO_NOT_SOLICIT_F=N                                                                  |
      | 4380_DO_NOT_SOLICIT_F= Null                                                              |
      | 4380_Cust.AGE_Greater than 16                                                            |
      | 4380_Cust.AGE_Equal to 16                                                                |
      | 4380_Deceased_F=N                                                                        |
      | 4380_LANG_CD=E                                                                           |
      | 4380_LANG_CD=EN                                                                          |
      | 4380_LANG_CD=F                                                                           |
      | 4380_LANG_CD=FR                                                                          |
      | 4380_LANG_CD small case =e                                                               |
      | 4380_LANG_CD small case =en                                                              |
      | 4380_LANG_CD small case =f                                                               |
      | 4380_LANG_CD small case =fr                                                              |
      | 4380_Do not Email Flag=N                                                                 |
      | 4380_INDV_FRST_NM Is NOT NULL                                                            |
      | 4380_INDV_FRST_NM!=NULL                                                                  |
      | 4380_INDV_LAST_NM Is NOT NULL                                                            |
      | 4380_INDV_LAST_NM!=NULL                                                                  |
      | 4380_VLD_EMAIL_F=Y                                                                       |
      | 4380_Prv_Bnk_Ind=N                                                                       |
      | 4380_EMPLOYEE_STAFF_F=N                                                                  |
      | 4380_EMPLOYEE_STAFF_F=NULL                                                               |
      | 4380_SRC_ACCT_STAT_CD-A                                                                  |
      | 4380_ACCT_SUBSYS_ID_=BB                                                                  |
      | 4380_PRIM_EMAIL_ADDR !=NULL                                                              |
      | 4380_PRD CD- 01, SUB PRD CD -01                                                          |
      | 4380_PRD CD- 01, SUB PRD CD -02                                                          |
      | 4380_PRD CD- 01, SUB PRD CD -03                                                          |
      | 4380_PRD CD- 01, SUB PRD CD -04                                                          |
      | 4380_PRD CD-02, SUB PRD CD -01                                                           |
      | 4380_PRD CD-02, SUB PRD CD -02                                                           |
      | 4380_PRD CD-02, SUB PRD CD -03                                                           |
      | 4380_PRD CD-13, SUB PRD CD -01                                                           |
      | 4380_PRD CD-13, SUB PRD CD -03                                                           |
      | 4380_PRD CD-13, SUB PRD CD -07                                                           |
      | 4380_PRD CD-13, SUB PRD CD -08                                                           |
      | 4380_PRD CD-07, SUB PRD CD -11                                                           |
      | 4380_PRD CD-07, SUB PRD CD -12                                                           |
      | 4380_PRD CD-19, SUB PRD CD -01                                                           |
      | 4380_PRD CD-19, SUB PRD CD -02                                                           |
      | 4380_PRD CD-19, SUB PRD CD -03                                                           |
      | 4380_PRD CD-19, SUB PRD CD -04                                                           |
      | 4380_PRD CD-19, SUB PRD CD -07                                                           |
      | 4380_PRD CD-19, SUB PRD CD -08                                                           |
      | 4380_PRD CD-23, SUB PRD CD -01                                                           |
      | 4380_PRD CD-23, SUB PRD CD -03                                                           |
      | 4380_Account Open Date equal to 25 days                                                  |
      | 4380_Account Open Date equal to 23 days                                                  |
      | 4380_Account Open Date >23 and <25 days                                                  |
      | 4380_LAST_BILL_PAYMENT =NULL                                                             |
      | 4380_PAC_PAD_F =1                                                                        |
      | 4380_PAC_PAD_F =2                                                                        |
      | 4380_CC_VIP_IND !=2,9                                                                    |
      | 4380_CC_VIP_IND = NULL                                                                   |
      | 4380_Primary_Acct_Holder_Flag=Y                                                          |
      | 4380_CUST_OPND_DT = 90 DAYS                                                              |
      | 4380_CUST_OPND_DT < 90 DAYS                                                              |
      | 4380_CUST_OPND_DT > 90 DAYS                                                              |
      | 4380_CUST_OPND_DT  = NULL                                                                |
      | 4380_Customer has a Multiple BB Accounts that have no billpayment date on any of account |

  @D2DEngagementBillPayment @D2DEngagementBillPayment_Negative_Validation @Workstream-4 @4380 @EMAIL @RS18023
  Scenario Outline: D2D Engagement Bill Payment_RS18023_4380_EMAIL Verify D2D Engagement Bill Payment offer details are not displayed in IH for Negative test cases
    Given load data from "BillPayment" excel sheet
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
      | Test cases                                                                                                                |
      | N-4380_Customer falls in both segments, then Bill Payment (Segment 2) is prioritized. (ie. 4380 is prioritized over 4316) |
      | N_4380_PRIM_CNTRY_CD!=CA                                                                                                  |
      | N_4380_PRIM_CNTRY_CD=Null                                                                                                 |
      | N_4380_CUST_TP_CD != PSNL                                                                                                 |
      | N_4380_CUST_TP_CD =  Null                                                                                                 |
      | N_4380_DO_NOT_SOLICIT_F= Y                                                                                                |
      | N_4380_CUST_AGE Equal to 15                                                                                               |
      | N_4380_CUST_AGE Equal to Null                                                                                             |
      | N_4380_CUST_AGE with in range (1-14)                                                                                      |
      | N_4380_PRD CD- 01, SUB PRD CD -08                                                                                         |
      | N_4380_PRD CD- 02, SUB PRD CD -04                                                                                         |
      | N_4380_PRD CD- 07, SUB PRD CD -08                                                                                         |
      | N_4380_PRD CD- 13, SUB PRD CD -12                                                                                         |
      | N_4380_PRD CD- 18, SUB PRD CD -02                                                                                         |
      | N_4380_PRD CD-18, SUB PRD CD -01                                                                                          |
      | N_4380_PRD CD-18, SUB PRD CD -07                                                                                          |
      | N_4380_PRD CD-18, SUB PRD CD -03                                                                                          |
      | N_4380_PRD CD- 19, SUB PRD CD -11                                                                                         |
      | N_4380_PRD CD-23, SUB PRD CD -02                                                                                          |
      | N_4380_SRC_ACCT_STAT_CD!=A                                                                                                |
      | N_4380_SRC_ACCT_STAT_CD-Null                                                                                              |
      | N_4380_Account Open Date greater than 25days                                                                              |
      | N_4380_Account Open Date equal to Null                                                                                    |
      | N_4380_Account Open Date less than 23                                                                                     |
      | N_4380_Deceased_F=Y                                                                                                       |
      | N_4380_Deceased_F=Null                                                                                                    |
      | N_4380_LANG_CD=K                                                                                                          |
      | N_4380_LANG_CD=N                                                                                                          |
      | N_4380_LANG_CD=Null                                                                                                       |
      | N_4380_LAST_BILL_PAYMENT=2020-10-10                                                                                       |
      | N_4380_EMPLOYEE_STAFF_F=Y                                                                                                 |
      | N_4380_ACCT_SUBSYS_ID=KS                                                                                                  |
      | N_4380_Prv_Bnk_Ind=Null                                                                                                   |
      | N_4380_Prv_Bnk_Ind=Y                                                                                                      |
      | N_4380_Do not Email Flag=Y                                                                                                |
      | N_4380_INDV_FRST_NM=Blank                                                                                                 |
      | N_4380_INDV_FRST_NM=NULL                                                                                                  |
      | N_4380_INDV_LAST_NM=Blank                                                                                                 |
      | N_4380_INDV_LAST_NM=NULL                                                                                                  |
      | N_4380_VLD_EMAIL_F=N                                                                                                      |
      | N_4380_PRIM_EMAIL_ADDR =NULL                                                                                              |
      | N_4380_CC_VIP_IND = 2                                                                                                     |
      | N_4380_CC_VIP_IND = 9                                                                                                     |
      | N_4380_Primary_Acct_Holder_Flag=N                                                                                         |
      | N_4380_Primary_Acct_Holder_Flag=NULL                                                                                      |