Feature: Validation for D2D Engagement PAD Payment


  @D2DEngagementPADPayment_Positive_Validation @D2DEngagementPADPayment_Positive_Validation_4316 @Workstream-4 @4316 @EMAIL @RS18023
  Scenario Outline: D2D Engagement PAD Payment_RS18023_4316_EMAIL Validate D2D Engagement PAD Payment offer details against IH for Positive test cases
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
      | Test cases                                                                                                                |
      | 4316_ISSUE = Engagement and Group = D2D                                                                                                 |
      | 4316_PRIM_CNTRY_CD= CA                                                                                                                  |
      | 4316_CUST_TP_CD=PSNL                                                                                                                    |
      | 4316_DO_NOT_SOLICIT_F=N                                                                                                                 |
      | 4316_DO_NOT_SOLICIT_F= Null                                                                                                             |
      | 4316_LANG_CD=E                                                                                                                          |
      | 4316_LANG_CD=EN                                                                                                                         |
      | 4316_LANG_CD=F                                                                                                                          |
      | 4316_LANG_CD=FR                                                                                                                         |
      | 4316_LANG_CD small case =e                                                                                                                          |
      | 4316_LANG_CD small case =en                                                                                                                      |
      | 4316_LANG_CD small case =f                                                                                                                         |
      | 4316_LANG_CD small case =fr                                                                                                                       |
      | 4316_CUST_AGE_Greater than 16                                                                                                           |
      | 4316_CUST_AGE_Equal to 16                                                                                                               |
      | 4316_Do not Email Flag=N                                                                                                                |
      | 4316_INDV_FRST_NM Is NOT NULL                                                                                                           |
      | 4316_INDV_FRST_NM!=NULL                                                                                                                 |
      | 4316_INDV_LAST_NM Is NOT NULL                                                                                                           |
      | 4316_INDV_LAST_NM!=NULL                                                                                                                 |
      | 4316_VLD_EMAIL_F=Y                                                                                                                      |
      | 4316_Deceased_F=N                                                                                                                       |
      | 4316_PRD CD- 01, SUB PRD CD -01                                                                                                         |
      | 4316_PRD CD- 01, SUB PRD CD -02                                                                                                         |
      | 4316_PRD CD- 01, SUB PRD CD -03                                                                                                         |
      | 4316_PRD CD- 01, SUB PRD CD -04                                                                                                         |
      | 4316_PRD CD-02, SUB PRD CD -01                                                                                                          |
      | 4316_PRD CD-02, SUB PRD CD -02                                                                                                          |
      | 4316_PRD CD-02, SUB PRD CD -03                                                                                                          |
      | 4316_PRD CD-13, SUB PRD CD -01                                                                                                          |
      | 4316_PRD CD-13, SUB PRD CD -03                                                                                                          |
      | 4316_PRD CD-13, SUB PRD CD -07                                                                                                          |
      | 4316_PRD CD-13, SUB PRD CD -08                                                                                                          |
      | 4316_PRD CD-07, SUB PRD CD -11                                                                                                          |
      | 4316_PRD CD-07, SUB PRD CD -12                                                                                                          |
      | 4316_PRD CD-19, SUB PRD CD -01                                                                                                          |
      | 4316_PRD CD-19, SUB PRD CD -02                                                                                                          |
      | 4316_PRD CD-19, SUB PRD CD -03                                                                                                          |
      | 4316_PRD CD-19, SUB PRD CD -04                                                                                                          |
      | 4316_PRD CD-19, SUB PRD CD -07                                                                                                          |
      | 4316_PRD CD-19, SUB PRD CD -08                                                                                                          |
      | 4316_PRD CD-23, SUB PRD CD -01                                                                                                          |
      | 4316_PRD CD-23, SUB PRD CD -03                                                                                                          |
      | 4316_SRC_ACCT_STAT_CD-A                                                                                                            |
      | 4316_ACCT_SUBSYS_ID=BB                                                                                                                  |
      | 4316_PRIM_EMAIL_ADDR !=NULL                                                                                                             |
      | 4316_Account Open Date equal to 25 days                                                                                                 |
      | 4316_Account Open Date equal to 23 days                                                                                                 |
      | 4316_Account Open Date equal to 24 days                                                                                                 |
      | 4316_LAST_BILL_PAYMENT =2020-10-10                                                                                                      |
      | 4316_PAC_PAD_F !=1                                                                                                                      |
      | 4316_PAC_PAD_F !=2                                                                                                                      |
      | 4316_CC_VIP_IND !=2,9                                                                                                                   |
      | 4316_CC_VIP_IND =NULL                                                                                                                   |
      | 4316_Primary_Acct_Holder_Flag=Y                                                                                                         |
      | 4316_Customer has a Multiple BB Accounts and can have billpayment date on any of accounts with the PAC_PAD_F other than 1 or 2          |
      | 4316_Prv_Bnk_Ind=N                                                                                                        |
      | 4316_EMPLOYEE_STAFF_F=N                                                                                                   |
      | 4316_EMPLOYEE_STAFF_F=Null                                                                                                |
      | 4316_EMPLOYEE_STAFF_F=Y                                                                                                   |
      | 4316_Prv_Bnk_Ind=Null                                                                                                     |
      | 4316_Prv_Bnk_Ind=Y                                                                                                        |
      | 4316_NOT_AML_KYC !=Y                                                                                                      |
      | 4316_NOT_AML_KYC = NULL                                                                                                   |
      | 4316_ACCT_SUBSYS_ID != SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT <= 6 months   |
      | 4316_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD != Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT <= 6 months   |
      | 4316_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = NULL and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT <= 6 months      |
      | 4316_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD != 9  and Current Date - ACCT_ODT <= 6 months   |
      | 4316_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = NULL  and Current Date - ACCT_ODT <= 6 months |
      | 4316_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT > 6 months     |
      | 4316_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT = NULL         |


  @D2DEngagementPADPayment_Negative_Validation @D2DEngagementPADPayment_Negative_Validation @Workstream-4 @4316 @EMAIL @RS18023
  Scenario Outline: D2D Engagement PAD Payment_RS18023_4316_EMAIL Verify D2D Engagement PAD Payment offer details are not displayed in IH for Negative test cases
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
      | Test cases                                                                                                              |
      | N_4316_PRIM_CNTRY_CD!=CA Eg:- AC              |
      | N_4316_PRIM_CNTRY_CD=Null                     |
      | N_4316_CUST_TP_CD != PSNL                     |
      | N_4316_CUST_TP_CD =  Null                     |
      | N_4316_DO_NOT_SOLICIT_F= Y                    |
      | N_4316_Cust_AGE=15                            |
      | N_4316_CUST_AGE=Null                          |
      | N_4316_CUSTAGE in Range 1-14                  |
      | N_4316_PRD CD- 01, SUB PRD CD -08             |
      | N_4316_PRD CD- 02, SUB PRD CD -04             |
      | N_4316_PRD CD- 07, SUB PRD CD -08             |
      | N_4316_PRD CD- 13, SUB PRD CD -12             |
      | N_4316_PRD CD-18, SUB PRD CD -01              |
      | N_4316_PRD CD-18, SUB PRD CD -07              |
      | N_4316_PRD CD-18, SUB PRD CD -03              |
      | N_4316_PRD CD- 18, SUB PRD CD -02             |
      | N_4316_PRD CD- 19, SUB PRD CD -11             |
      | N_4316_PRD CD-23, SUB PRD CD -02              |
      | N_4316_SRC_ACCT_STAT_CD!=A                    |
      | N_4316_SRC_ACCT_STAT_CD-Null                  |
      | N_4316_Account Open Date greater than 25 days |
      | N_4316_Account Open Date equal to Null        |
      | N_4316_Account Open Date less than 23         |
      | N_4316_Deceased_F=Y                           |
      | N_4316_Deceased_F=Null                        |
      | N_4316_LANG_CD=K                              |
      | N_4316_LANG_CD=NE                             |
      | N_4316_LANG_CD=Null                           |
      | N_4316_LAST_BILL_PAYMENT=NULL                 |
      | N_4316_PAC_PAD_F=1                            |
      | N_4316_PAC_PAD_F=2                            |
      | N_4316_EMPLOYEE_STAFF_F=Y                     |
      | N_4316_ACCT_SUBSYS_ID_KS                      |
      | N_4316_Prv_Bnk_Ind=Null                       |
      | N_4316_Prv_Bnk_Ind=Y                          |
      | N_4316_Do not Email Flag=Y                    |
      | N_4316_INDV_FRST_NM=Blank                     |
      | N_4316_INDV_FRST_NM=NULL                      |
      | N_4316_INDV_LAST_NM=Blank                     |
      | N_4316_INDV_LAST_NM=NULL                      |
      | N_4316_VLD_EMAIL_F=N                          |
      | N_4316_PRIM_EMAIL_ADDR =NULL                  |
      | N_4316_CC_VIP_IND = 2                         |
      | N_4316_CC_VIP_IND = 9                         |
      | N_4316_Primary_Acct_Holder_Flag=N             |
      | N_4316_Primary_Acct_Holder_Flag=NULL          |
      | N-4316_NOT_AML_KYC = Y                                                                                                  |
      | N-4316_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT < 6 months |
      | N-4316_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT = 6 months |

