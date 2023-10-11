Feature: Validation for D2D Engagement VisaDebit

  
#  As part of D2D Early Engagement Program, this welcome message will target new and existing customers
#  to introduce them to their new D2D account / Scotiabank.
#  It also include a test of the target population who are NEW TO BANK based on Customer relationship date within the last 7 days
  @D2DEngagementVisaDebit @D2DEngagementVisaDebit_Positive_Validation_4368 @Workstream-4 @4368 @EMAIL @RS18040
  Scenario Outline: D2D Engagement VisaDebit_RS18040_4368_EMAIL Validate D2D Engagement VisaDebit_4368 offer details against IH for Positive test cases
    Given load data from "VisaDebit" excel sheet
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
      | 4368_ISSUE=EngagementandGroup=D2D                                                                                         |
      | 4368_CUST_TP_CD=PSNL                                                                                                      |
      | 4368_PRIM_CNTRY_CD=CA                                                                                                     |
      | 4368_DO_NOT_SOLICIT_F=N                                                                                                   |
      | 4368_DO_NOT_SOLICIT_F=NULL                                                                                                |
      | 4368_CUST_AGE_Greater than 16                                                                                             |
      | 4368_CUST_AGE_Equal to 16                                                                                                 |
      | 4368_DO_NOT_EMAIL_F=N                                                                                                     |
      | 4368_INDV_FRST_NM=NOT NULL                                                                                                |
      | 4368_INDV_FRST_NM!=NULL                                                                                                   |
      | 4368_INDV_LST_NM=NOT NULL                                                                                                 |
      | 4368_INDV_LST_NM!=NULL                                                                                                    |
      | 4368_VLD_EMAIL_F =Y                                                                                                       |
      | 4368_Deceased_F=N                                                                                                         |
      | 4368_LANG_CD=E                                                                                                            |
      | 4368_LANG_CD_Small Case=e                                                                                                 |
      | 4368_LANG_CD=EN                                                                                                           |
      | 4368_LANG_CD_Small Case=en                                                                                                |
      | 4368_LANG_CD=F                                                                                                            |
      | 4368_LANG_CD_Small Case=f                                                                                                 |
      | 4368_LANG_CD=FR                                                                                                           |
      | 4368_LANG_CD_Small Case=fr                                                                                                |
      | 4368_CUST_AGE!=NULL                                                                                                       |
      | 4368_SRC_ACCT_STAT_CD=A                                                                                                   |
      | 4368_PRIM_EMAIL_ADDR=NOT NULL                                                                                             |
      | 4368_ACCT_SUBSYS_ID=BB                                                                                                    |
      | 4368_PRD CD- 01, SUB PRD CD -01                                                                                           |
      | 4368_PRD CD- 01, SUB PRD CD -02                                                                                           |
      | 4368_PRD CD- 01, SUB PRD CD -03                                                                                           |
      | 4368_PRD CD- 01, SUB PRD CD -04                                                                                           |
      | 4368_PRD CD-02, SUB PRD CD -01                                                                                            |
      | 4368_PRD CD-02, SUB PRD CD -02                                                                                            |
      | 4368_PRD CD-02, SUB PRD CD -03                                                                                            |
      | 4368_PRD CD-13, SUB PRD CD -01                                                                                            |
      | 4368_PRD CD-13, SUB PRD CD -03                                                                                            |
      | 4368_PRD CD-13, SUB PRD CD -07                                                                                            |
      | 4368_PRD CD-13, SUB PRD CD -08                                                                                            |
      | 4368_PRD CD-07, SUB PRD CD -11                                                                                            |
      | 4368_PRD CD-07, SUB PRD CD -12                                                                                            |
      | 4368_PRD CD-19, SUB PRD CD -01                                                                                            |
      | 4368_PRD CD-19, SUB PRD CD -02                                                                                            |
      | 4368_PRD CD-19, SUB PRD CD -03                                                                                            |
      | 4368_PRD CD-19, SUB PRD CD -04                                                                                            |
      | 4368_PRD CD-19, SUB PRD CD -07                                                                                            |
      | 4368_PRD CD-19, SUB PRD CD -08                                                                                            |
      | 4368_PRD CD-23, SUB PRD CD -01                                                                                            |
      | 4368_PRD CD-23, SUB PRD CD -03                                                                                            |
      | 4368_Account Open Date equal to 56 days                                                                                   |
      | 4368_Account Open Date equal to 60days                                                                                    |
      | 4368_Account Open Date >=56 and <=60 days                                                                                 |
      | 4368_LAST_VD_VPOS_TXN_TMSTMP = Null                                                                                       |
      | 4368_LAST_VD_OPOS_TXN_TMSTMP = Null                                                                                       |
      | 4368_Primary_Acct_Holder_Flag =Y                                                                                          |
      | 4368_CC_VIP_IND!= 2and 9                                                                                                  |
      | 4368_CC_VIP_IND=NULL                                                                                                      |
      | 4368_Prv_Bnk_Ind=N                                                                                                        |
      | 4368_EMPLOYEE_STAFF_F=N                                                                                                   |
      | 4368_EMPLOYEE_STAFF_F=NULL                                                                                                |
      | 4368_EMPLOYEE_STAFF_F=Y                                                                                                   |
      | 4368_Prv_Bnk_Ind=Null                                                                                                     |
      | 4368_Prv_Bnk_Ind=Y                                                                                                        |
      | 4368_NOT_AML_KYC !=Y                                                                                                      |
      | 4368_NOT_AML_KYC = NULL                                                                                                   |
      | 4368_ACCT_SUBSYS_ID != SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT <= 6 months   |
      | 4368_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD != Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT <= 6 months   |
      | 4368_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = NULL and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT <= 6 months      |
      | 4368_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD != 9  and Current Date - ACCT_ODT <= 6 months   |
      | 4368_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = NULL  and Current Date - ACCT_ODT <= 6 months |
      | 4368_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT > 6 months     |
      | 4368_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT = NULL         |


  @D2DEngagementVisaDebit @D2DEngagementVisaDebit_Negative_Validation_4368 @Workstream-4 @4368 @EMAIL @RS18040
  Scenario Outline: D2D Engagement VisaDebit_RS18040_4368_EMAIL Validate D2D Engagement VisaDebit_4368 offer details against IH for Negative test cases
    Given load data from "VisaDebit" excel sheet
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
      | N_4368_PRIM_CNTRY_CD!=CA Eg:- AC                                                                                        |
      | N_4368_PRIM_CNTRY_CD=Null                                                                                               |
      | N_4368_CUST_TP_CD != PSNL (Eg:- Non_PSNL)                                                                               |
      | N_4368_CUST_TP_CD =  Null                                                                                               |
      | N_4368_DO_NOT_SOLICIT_F= Y                                                                                              |
      | N_4368_CUST_AGE Equal to 15                                                                                             |
      | N_4368_CUST_AGE Equal to Null                                                                                           |
      | N_4368_CUST_AGE with in range (1-14)                                                                                    |
      | N_4368_DO_NOT_EMAIL_F=Y                                                                                                 |
      | N_4368_INDV_FRST_NM=                                                                                                    |
      | N_4368_INDV_FRST_NM=NULL                                                                                                |
      | N_4368_VLD_EMAIL_F =N                                                                                                   |
      | N_4368_INDV_LST_NM=                                                                                                     |
      | N_4368_INDV_LST_NM=NULL                                                                                                 |
      | N_4368_Deceased_F=Y                                                                                                     |
      | N_4368_Deceased_F=Null                                                                                                  |
      | N_4368_PRD CD- 01, SUB PRD CD -11                                                                                       |
      | N_4368_PRD CD- 02, SUB PRD CD -04                                                                                       |
      | N_4368_PRD CD- 07, SUB PRD CD -08                                                                                       |
      | N_4368_PRD CD- 13, SUB PRD CD -12                                                                                       |
      | N_4368_PRD CD-18, SUB PRD CD -01                                                                                        |
      | N_4368_PRD CD-18, SUB PRD CD -07                                                                                        |
      | N_4368_PRD CD-18, SUB PRD CD -03                                                                                        |
      | N_4368_PRD CD- 19, SUB PRD CD -11                                                                                       |
      | N_4368_PRD CD-23, SUB PRD CD -02                                                                                        |
      | N_4368_SRC_ACCT_STAT_CD!=A                                                                                              |
      | N_4368_SRC_ACCT_STAT_CD-Null                                                                                            |
      | N_4368_Account Open Date greater than 60 days                                                                           |
      | N_4368_Account Open Date equal to Null                                                                                  |
      | N_4368_Account Open Date less than 56                                                                                   |
      | N_4368_LANG_CD=K                                                                                                        |
      | N_4368_LANG_CD=NE                                                                                                       |
      | N_4368_LANG_CD=Null                                                                                                     |
      | N_4368_ACCT_SUBSYS_ID=KS                                                                                                |
      | N_4368_PRIM_EMAIL_ADDR=NULL                                                                                             |
      | N_4368_LAST_VD_VPOS_TXN_TMSTMP != Null                                                                                  |
      | N_4368_LAST_VD_OPOS_TXN_TMSTMP! = Null                                                                                  |
      | N_4368_Primary_Acct_Holder_Flag =N                                                                                      |
      | N_4368_CC_VIP_IND=2                                                                                                     |
      | N_4368_CC_VIP_IND=9                                                                                                     |
      | N-4368_NOT_AML_KYC = Y                                                                                                  |
      | N-4368_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT < 6 months |
      | N-4368_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT = 6 months |



