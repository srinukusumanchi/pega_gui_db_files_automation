@VisaDebit_TestDataCreation
Feature: Test data creation for D2D Engagement VisaDebit
#  As part of D2D Early Engagement Program, this welcome message will target new and existing customers
#  to introduce them to their new D2D account / Scotiabank.
#  It also include a test of the target population who are NEW TO BANK based on Customer relationship date within the last 7 days
  @D2DEngagementVisaDebit @D2DEngagementVisaDebit_Positive_TestData @Workstream-4 @4368 @EMAIL @RS18040
  Scenario Outline: D2D Engagement VisaDebit_RS18040_4368_EMAIL Create test data for positive test cases
    Given load data from "VisaDebit" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts

    Examples:
      | Test cases                 | Acct_Odt |
#      | 4368_ISSUE=EngagementandGroup=D2D         | 56       |
#      | 4368_CUST_TP_CD=PSNL                      | 56       |
#      | 4368_PRIM_CNTRY_CD=CA                     | 56       |
#      | 4368_DO_NOT_SOLICIT_F=N                   | 56       |
#      | 4368_DO_NOT_SOLICIT_F=NULL                | 56       |
#      | 4368_CUST_AGE_Greater than 16             | 56       |
#      | 4368_CUST_AGE_Equal to 16                 | 56       |
#      | 4368_DO_NOT_EMAIL_F=N                     | 56       |
#      | 4368_INDV_FRST_NM=NOT NULL                | 56       |
#      | 4368_INDV_FRST_NM!=NULL                   | 56       |
#      | 4368_INDV_LST_NM=NOT NULL                 | 56       |
#      | 4368_INDV_LST_NM!=NULL                    | 56       |
#      | 4368_VLD_EMAIL_F =Y                       | 56       |
#      | 4368_Deceased_F=N                         | 56       |
#      | 4368_LANG_CD=E                            | 56       |
#      | 4368_LANG_CD_Small Case=e                 | 56       |
#      | 4368_LANG_CD=EN                           | 56       |
#      | 4368_LANG_CD_Small Case=en                | 56       |
#      | 4368_LANG_CD=F                            | 56       |
#      | 4368_LANG_CD_Small Case=f                 | 56       |
#      | 4368_LANG_CD=FR                           | 56       |
#      | 4368_LANG_CD_Small Case=fr                | 56       |
#      | 4368_CUST_AGE!=NULL                       | 56       |
#      | 4368_SRC_ACCT_STAT_CD=A                   | 56       |
#      | 4368_PRIM_EMAIL_ADDR=NOT NULL             | 56       |
#      | 4368_ACCT_SUBSYS_ID=BB                    | 56       |
#      | 4368_PRD CD- 01, SUB PRD CD -01           | 56       |
#      | 4368_PRD CD- 01, SUB PRD CD -02           | 56       |
#      | 4368_PRD CD- 01, SUB PRD CD -03           | 56       |
#      | 4368_PRD CD- 01, SUB PRD CD -04           | 56       |
#      | 4368_PRD CD-02, SUB PRD CD -01            | 56       |
#      | 4368_PRD CD-02, SUB PRD CD -02            | 56       |
#      | 4368_PRD CD-02, SUB PRD CD -03            | 56       |
#      | 4368_PRD CD-13, SUB PRD CD -01            | 56       |
#      | 4368_PRD CD-13, SUB PRD CD -03            | 56       |
#      | 4368_PRD CD-13, SUB PRD CD -07            | 56       |
#      | 4368_PRD CD-13, SUB PRD CD -08            | 56       |
#      | 4368_PRD CD-07, SUB PRD CD -11            | 56       |
#      | 4368_PRD CD-07, SUB PRD CD -12            | 56       |
#      | 4368_PRD CD-19, SUB PRD CD -01            | 56       |
#      | 4368_PRD CD-19, SUB PRD CD -02            | 56       |
#      | 4368_PRD CD-19, SUB PRD CD -03            | 56       |
#      | 4368_PRD CD-19, SUB PRD CD -04            | 56       |
#      | 4368_PRD CD-19, SUB PRD CD -07            | 56       |
#      | 4368_PRD CD-19, SUB PRD CD -08            | 56       |
#      | 4368_PRD CD-23, SUB PRD CD -01            | 56       |
#      | 4368_PRD CD-23, SUB PRD CD -03            | 56       |
#      | 4368_Account Open Date equal to 56 days   | 56       |
#      | 4368_Account Open Date equal to 60days    | 60       |
#      | 4368_Account Open Date >=56 and <=60 days | 59       |
#      | 4368_LAST_VD_VPOS_TXN_TMSTMP = Null       | 56       |
#      | 4368_LAST_VD_OPOS_TXN_TMSTMP = Null       | 56       |
#      | 4368_Primary_Acct_Holder_Flag =Y          | 56       |
#      | 4368_CC_VIP_IND!= 2and 9                  | 56       |
#      | 4368_CC_VIP_IND=NULL                      | 56       |
      | 4368_Prv_Bnk_Ind=N         | 56       |
      | 4368_EMPLOYEE_STAFF_F=N    | 56       |
      | 4368_EMPLOYEE_STAFF_F=NULL | 56       |
      | 4368_EMPLOYEE_STAFF_F=Y    | 56       |
      | 4368_Prv_Bnk_Ind=Null      | 56       |
      | 4368_Prv_Bnk_Ind=Y         | 56       |
      | 4368_NOT_AML_KYC !=Y       | 56       |
      | 4368_NOT_AML_KYC = NULL    | 56       |
      | N-4368_NOT_AML_KYC = Y     | 56       |


  @D2DEngagementVisaDebit @D2DEngagementVisaDebit_NegativeTestData_4368 @Workstream-4 @4368 @EMAIL @RS18040
  Scenario Outline: D2D Engagement VisaDebit_RS18040_4368_EMAIL Create test data for negative testcases
    Given load data from "VisaDebit" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Examples:
      | Test cases | Acct_Odt |
#      | N_4368_PRIM_CNTRY_CD!=CA Eg:- AC              | 56       |
#      | N_4368_PRIM_CNTRY_CD=Null                     | 56       |
#      | N_4368_CUST_TP_CD != PSNL (Eg:- Non_PSNL)     | 56       |
#      | N_4368_CUST_TP_CD =  Null                     | 56       |
#      | N_4368_DO_NOT_SOLICIT_F= Y                    | 56       |
#      | N_4368_CUST_AGE Equal to 15                   | 56       |
#      | N_4368_CUST_AGE Equal to Null                 | 56       |
#      | N_4368_CUST_AGE with in range (1-14)          | 56       |
#      | N_4368_DO_NOT_EMAIL_F=Y                       | 56       |
#      | N_4368_INDV_FRST_NM=                          | 56       |
#      | N_4368_INDV_FRST_NM=NULL                      | 56       |
#      | N_4368_VLD_EMAIL_F =N                         | 56       |
#      | N_4368_INDV_LST_NM=                           | 56       |
#      | N_4368_INDV_LST_NM=NULL                       | 56       |
#      | N_4368_Deceased_F=Y                           | 56       |
#      | N_4368_Deceased_F=Null                        | 56       |
#      | N_4368_PRD CD- 01, SUB PRD CD -11             | 56       |
#      | N_4368_PRD CD- 02, SUB PRD CD -04             | 56       |
#      | N_4368_PRD CD- 07, SUB PRD CD -08             | 56       |
#      | N_4368_PRD CD- 13, SUB PRD CD -12             | 56       |
#      | N_4368_PRD CD-18, SUB PRD CD -01              | 56       |
#      | N_4368_PRD CD-18, SUB PRD CD -07              | 56       |
#      | N_4368_PRD CD-18, SUB PRD CD -03              | 56       |
#      | N_4368_PRD CD- 19, SUB PRD CD -11             | 56       |
#      | N_4368_PRD CD-23, SUB PRD CD -02              | 56       |
#      | N_4368_SRC_ACCT_STAT_CD!=A                    | 56       |
#      | N_4368_SRC_ACCT_STAT_CD-Null                  | 56       |
#      | N_4368_Account Open Date greater than 60 days | 64       |
#      | N_4368_Account Open Date equal to Null        | NULL     |
#      | N_4368_Account Open Date less than 56         | 54       |
#      | N_4368_LANG_CD=K                              | 56       |
#      | N_4368_LANG_CD=NE                             | 56       |
#      | N_4368_LANG_CD=Null                           | 56       |
#      | N_4368_ACCT_SUBSYS_ID=KS                      | 56       |
#      | N_4368_PRIM_EMAIL_ADDR=NULL                   | 56       |
#      | N_4368_LAST_VD_VPOS_TXN_TMSTMP != Null        | 56       |
#      | N_4368_LAST_VD_OPOS_TXN_TMSTMP! = Null        | 56       |
#      | N_4368_Primary_Acct_Holder_Flag =N            | 56       |
#      | N_4368_CC_VIP_IND=2                           | 56       |
#      | N_4368_CC_VIP_IND=9                           | 56       |

  @D2DEngagementVisaDebit @D2DEngagementVisaDebit_PosNeg_AFIL @Workstream-4 @4368 @EMAIL @RS18040
  Scenario Outline: D2D Engagement VisaDebit_RS18040_4368_EMAIL Create test data for positive test cases
    Given load data from "VisaDebit" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
    And  write Dual account odt "<Acct_Odt>""<Dual_Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
    Then insert customer account details in "ACCT_DIM" table having "3" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "3" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "3" accounts
    Examples:
      | Test cases                                                                                                                | Acct_Odt | Dual_Acct_Odt |
      | 4368_ACCT_SUBSYS_ID != SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT <= 6 months   | 56       | 170           |
      | 4368_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD != Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT <= 6 months   | 56       | 170           |
      | 4368_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = NULL and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT <= 6 months      | 56       | 170           |
      | 4368_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD != 9  and Current Date - ACCT_ODT <= 6 months   | 56       | 170           |
      | 4368_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = NULL  and Current Date - ACCT_ODT <= 6 months | 56       | 170           |
      | 4368_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT > 6 months     | 56       | 181           |
      | 4368_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT = NULL         | 56       | NULL          |
      | N-4368_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT < 6 months   | 56       | 179           |
      | N-4368_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT = 6 months   | 56       | 180           |
