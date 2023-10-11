Feature: Validation for D2D Engagement  FundAccount

  
#  As part of D2D Early Engagement Program, this welcome message will target new and existing customers
#  to introduce them to their new D2D account / Scotiabank.
#  It also include a test of the target population who are NEW TO BANK based on Customer relationship date within the last 7 days
  @D2DEngagementFundAccount @D2DEngagementFundAccount_Positive_Validation @Workstream-4 @4315 @EMAIL @RS18022
  Scenario Outline: CASL Flag Change D2D Engagement FundAccount_RS18022_4315_EMAIL Validate D2D Engagement FundAccount offer details against IH for Positive test cases
    Given load data from "FundAccount" excel sheet
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
      | Test cases                                                                                                                |
      | 4315_DO_NOT_SOLICIT_F=NULL              |
      | 4315_CUST_AGE_Equal to 16               |
      | 4315_LANG_CD=E                          |
      | 4315_LANG_CD_Small Case=e               |
      | 4315_LANG_CD=EN                         |
      | 4315_LANG_CD_Small Case =en             |
      | 4315_LANG_CD=F                          |
      | 4315_LANG_CD_Small Case =f              |
      | 4315_LANG_CD=FR                         |
      | 4315_LANG_CD_Small Case =fr             |
      | 4315_PRIM_EMAIL_ADDR=NOT NULL           |
      | 4315_PRD CD- 01, SUB PRD CD -01         |
      | 4315_PRD CD- 01, SUB PRD CD -02         |
      | 4315_PRD CD- 01, SUB PRD CD -03         |
      | 4315_PRD CD- 01, SUB PRD CD -04         |
      | 4315_PRD CD-02, SUB PRD CD -01          |
      | 4315_PRD CD-02, SUB PRD CD -02          |
      | 4315_PRD CD-02, SUB PRD CD -03          |
      | 4315_PRD CD-13, SUB PRD CD -01          |
      | 4315_PRD CD-13, SUB PRD CD -03          |
      | 4315_PRD CD-13, SUB PRD CD -07          |
      | 4315_PRD CD-13, SUB PRD CD -08          |
      | 4315_PRD CD-07, SUB PRD CD -11          |
      | 4315_PRD CD-07, SUB PRD CD -12          |
      | 4315_PRD CD-19, SUB PRD CD -01          |
      | 4315_PRD CD-19, SUB PRD CD -02          |
      | 4315_PRD CD-19, SUB PRD CD -03          |
      | 4315_PRD CD-19, SUB PRD CD -04          |
      | 4315_PRD CD-19, SUB PRD CD -07          |
      | 4315_PRD CD-19, SUB PRD CD -08          |
      | 4315_PRD CD-23, SUB PRD CD -01          |
      | 4315_PRD CD-23, SUB PRD CD -03          |
      | 4315_Account Open Date equal to 16 days |
      | 4315_Account Open Date equal to 20days  |
      | 4315_CC_VIP_IND=NULL                    |
      | 4315_CRNT_BAL_AMT equal to zero         |
      | 4315_CRNT_BAL_AMT greater than zero     |
      | 4315_CRNT_BAL_AMT less than zero        |
      | 4315_NTP_CUST_OPND_DT >120              |
      | 4315_NTP_CASL_CONSENT_F = Y             |
      | 4315_NTP_HARDBOUNCE_EMAIL_F !=Y         |
      | 4315_NTP_UNSUBSCRIBED_F !=Y             |
      | 4315_NTB_CUST_OPND_DT < 120             |
      | 4315_NTB_CUST_OPND_DT = 120             |
      | 4315_NTB_CASL_CONSENT_F = Y             |
      | 4315_NTB_CASL_CONSENT_F = N             |
      | 4315_NTB_UNSUBSCRIBED_F !=Y             |
      | 4315_NTB_HARDBOUNCE_EMAIL_F !=Y         |
      | 4315_Prv_Bnk_Ind=N                                                                                                        |
      | 4315_EMPLOYEE_STAFF_F=NULL                                                                                                |
      | 4315_Prv_Bnk_Ind=Null                                                                                                     |
      | 4315_Prv_Bnk_Ind=Y                                                                                                        |
      | 4315_EMPLOYEE_STAFF_F=Y                                                                                                   |
      | 4315_EMPLOYEE_STAFF_F=N                                                                                                   |
      | 4315_NOT_AML_KYC !=Y                                                                                                      |
      | 4315_NOT_AML_KYC = NULL                                                                                                   |
      | 4315_ACCT_SUBSYS_ID != SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT <= 6 months   |
      | 4315_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD != Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT <= 6 months   |
      | 4315_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = NULL and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT <= 6 months      |
      | 4315_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD != 9  and Current Date - ACCT_ODT <= 6 months   |
      | 4315_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = NULL  and Current Date - ACCT_ODT <= 6 months |
      | 4315_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT > 6 months     |
      | 4315_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT = NULL         |


  @D2DEngagementFundAccount @D2DEngagementFundAccount_Negative_Validation @Workstream-4 @4315 @EMAIL @RS18022
  Scenario Outline: CASL Flag Change D2D Engagement FundAccount_RS18022_4315_EMAIL Verify D2D Engagement FundAccount offer details are not displayed in IH for Negative test cases
    Given load data from "FundAccount" excel sheet
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
      | N_4315_PRIM_CNTRY_CD!=CA Eg:- AC              |
      | N_4315_PRIM_CNTRY_CD=Null                     |
      | N_4315_CUST_TP_CD != PSNL (Eg:- Non_PSNL)     |
      | N_4315_CUST_TP_CD = Null                      |
      | N_4315_DO_NOT_SOLICIT_F= Y                    |
      | N_4315_CUST_AGE Equal to 15                   |
      | N_4315_CUST_AGE Equal to Null                 |
      | N_4315_CUST_AGE with in range (1-14)          |
      | N_4315_DO_NOT_EMAIL_F=Y                       |
      | N_4315_DO_NOT_EMAIL_F=NULL                    |
      | N_4315_INDV_FRST_NM=                          |
      | N_4315_INDV_FRST_NM=NULL                      |
      | N_4315_VLD_EMAIL_F =N                         |
      | N_4315_INDV_LST_NM=                           |
      | N_4315_INDV_LST_NM=NULL                       |
      | N_4315_Deceased_F=Y                           |
      | N_4315_Deceased_F=Null                        |
      | N_4315_PRD CD- 01, SUB PRD CD -11             |
      | N_4315_PRD CD- 02, SUB PRD CD -04             |
      | N_4315_PRD CD- 07, SUB PRD CD -08             |
      | N_4315_PRD CD- 13, SUB PRD CD -12             |
      | N_4315_PRD CD- 18, SUB PRD CD -01             |
      | N_4315_PRD CD- 18, SUB PRD CD -07             |
      | N_4315_PRD CD- 18, SUB PRD CD -03             |
      | N_4315_PRD CD- 19, SUB PRD CD -11             |
      | N_4315_PRD CD-23, SUB PRD CD -02              |
      | N_4315_SRC_ACCT_STAT_CD!=A                    |
      | N_4315_SRC_ACCT_STAT_CD-Null                  |
      | N_4315_Account Open Date greater than 20 days |
      | N_4315_Account Open Date equal to Null        |
      | N_4315_Account Open Date less than 16         |
      | N_4315_LANG_CD=K                              |
      | N_4315_LANG_CD=NE                             |
      | N_4315_LANG_CD=Null                           |
      | N_4315_ACCT_SUBSYS_ID_KS                      |
      | N_4315_PRIM_EMAIL_ADDR=NULL                   |
      | N_4315_Primary_Acct_Holder_Flag =N            |
      | N_4315_CC_VIP_IND=2                           |
      | N_4315_CC_VIP_IND=9                           |
      | N_4315_NTP_CASL_CONSENT_F = N                 |
      | N_4315_NTP_HARDBOUNCE_EMAIL_F = Y             |
      | N_4315_NTP_UNSUBSCRIBED_F =Y                  |
      | N_4315_NTB_UNSUBSCRIBED_F =Y                  |
      | N_4315_NTB_HARDBOUNCE_EMAIL_F = Y             |
      | N_4315_NTB_CUST_OPND_DT > 120                 |
      | N_4315_CUST_OPND_DT = NULL                    |
      | N-4315_NOT_AML_KYC = Y                                                                                                  |
      | N-4315_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT < 6 months |
      | N-4315_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT = 6 months |

