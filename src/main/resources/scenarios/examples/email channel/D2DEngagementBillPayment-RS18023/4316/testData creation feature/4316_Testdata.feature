@TestData_4316
Feature: Test data creation for D2D Engagement PAD Payment


  @D2DEngagementPADPayment @D2DEngagementPADPayment_Positive_TestData_4316 @Workstream-4 @4316 @EMAIL @RS18023 @D2DFeb2023HasCode_flg_done
  Scenario Outline: D2D Engagement PAD Payment_RS18023_4316_EMAIL Create test data for positive test cases
    Given load data from "BillPayment" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
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
    Examples:
      | Test cases                 | Acct_Odt |
#      | 4316_ISSUE = Engagement and Group = D2D | 23       |
#      | 4316_PRIM_CNTRY_CD= CA                  | 23       |
#      | 4316_CUST_TP_CD=PSNL                    | 23       |
#      | 4316_DO_NOT_SOLICIT_F=N                 | 23       |
#      | 4316_DO_NOT_SOLICIT_F= Null             | 23       |
      | 4316_LANG_CD=E                          | 23       |
#      | 4316_LANG_CD=EN                         | 23       |
#      | 4316_LANG_CD=F                          | 23       |
      | 4316_LANG_CD=FR                         | 23       |
#      | 4316_LANG_CD small case =e              | 23       |
#      | 4316_LANG_CD small case =en             | 23       |
#      | 4316_LANG_CD small case =f              | 23       |
#      | 4316_LANG_CD small case =fr             | 23       |
#      | 4316_CUST_AGE_Greater than 16           | 23       |
#      | 4316_CUST_AGE_Equal to 16               | 23       |
#      | 4316_Do not Email Flag=N                | 23       |
#      | 4316_INDV_FRST_NM Is NOT NULL           | 23       |
#      | 4316_INDV_FRST_NM!=NULL                 | 23       |
#      | 4316_INDV_LAST_NM Is NOT NULL           | 23       |
#      | 4316_INDV_LAST_NM!=NULL                 | 23       |
#      | 4316_VLD_EMAIL_F=Y                      | 23       |
#      | 4316_Deceased_F=N                       | 23       |
#      | 4316_PRD CD- 01, SUB PRD CD -01         | 23       |
#      | 4316_PRD CD- 01, SUB PRD CD -02         | 23       |
#      | 4316_PRD CD- 01, SUB PRD CD -03         | 23       |
#      | 4316_PRD CD- 01, SUB PRD CD -04         | 23       |
#      | 4316_PRD CD-02, SUB PRD CD -01          | 23       |
#      | 4316_PRD CD-02, SUB PRD CD -02          | 23       |
#      | 4316_PRD CD-02, SUB PRD CD -03          | 23       |
      | 4316_PRD CD-13, SUB PRD CD -01          | 23       |
      | 4316_PRD CD-13, SUB PRD CD -03          | 23       |
      | 4316_PRD CD-13, SUB PRD CD -07          | 23       |
      | 4316_PRD CD-13, SUB PRD CD -08          | 23       |
#      | 4316_PRD CD-07, SUB PRD CD -11          | 23       |
#      | 4316_PRD CD-07, SUB PRD CD -12          | 23       |
#      | 4316_PRD CD-19, SUB PRD CD -01          | 23       |
#      | 4316_PRD CD-19, SUB PRD CD -02          | 23       |
#      | 4316_PRD CD-19, SUB PRD CD -03          | 23       |
#      | 4316_PRD CD-19, SUB PRD CD -04          | 23       |
#      | 4316_PRD CD-19, SUB PRD CD -07          | 23       |
#      | 4316_PRD CD-19, SUB PRD CD -08          | 23       |
      | 4316_PRD CD-23, SUB PRD CD -01          | 23       |
      | 4316_PRD CD-23, SUB PRD CD -03          | 23       |
#      | 4316_SRC_ACCT_STAT_CD-A                 | 23       |
#      | 4316_ACCT_SUBSYS_ID=BB                  | 23       |
#      | 4316_PRIM_EMAIL_ADDR !=NULL             | 23       |
#      | 4316_Account Open Date equal to 25 days | 25       |
#      | 4316_Account Open Date equal to 23 days | 23       |
#      | 4316_Account Open Date equal to 24 days | 24       |
#      | 4316_LAST_BILL_PAYMENT =2020-10-10      | 23       |
#      | 4316_PAC_PAD_F !=1                      | 23       |
#      | 4316_PAC_PAD_F !=2                      | 23       |
#      | 4316_CC_VIP_IND !=2,9                   | 23       |
#      | 4316_CC_VIP_IND =NULL                   | 23       |
#      | 4316_Primary_Acct_Holder_Flag=Y         | 23       |
#      | 4316_Prv_Bnk_Ind=N         | 23       |
#      | 4316_EMPLOYEE_STAFF_F=N    | 23       |
#      | 4316_EMPLOYEE_STAFF_F=Null | 23       |
#      | 4316_EMPLOYEE_STAFF_F=Y    | 23       |
#      | 4316_Prv_Bnk_Ind=Null      | 23       |
#      | 4316_Prv_Bnk_Ind=Y         | 23       |
#      | 4316_NOT_AML_KYC !=Y       | 23       |
#      | 4316_NOT_AML_KYC = NULL    | 23       |
#      | N-4316_NOT_AML_KYC = Y     | 23       |
      #Added for Feb 18 Rls 2023
      | 4316_HAS_CLOSED_CHQ_F !=Y      | 23       |
      | 4316_HAS_CLOSED_CHQ_F =Y       | 23       |
      | 4316_HAS_CLOSED_CHQ_F =NULL    | 23       |


  @D2DEngagementPADPayment @D2DEngagementPADPayment_NegativeTestData_4316 @Workstream-4 @4316 @EMAIL @RS18023
  Scenario Outline: D2D Engagement PAD Payment_RS18023_4316_EMAIL Create test data for negative testcases
    Given load data from "BillPayment" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
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
    Examples:
      | Test cases | Acct_Odt |
#      | N_4316_PRIM_CNTRY_CD!=CA Eg:- AC              | 23       |
#      | N_4316_PRIM_CNTRY_CD=Null                     | 23       |
#      | N_4316_CUST_TP_CD != PSNL                     | 23       |
#      | N_4316_CUST_TP_CD =  Null                     | 23       |
#      | N_4316_DO_NOT_SOLICIT_F= Y                    | 23       |
#      | N_4316_Cust_AGE=15                            | 23       |
#      | N_4316_CUST_AGE=Null                          | 23       |
#      | N_4316_CUSTAGE in Range 1-14                  | 23       |
#      | N_4316_PRD CD- 01, SUB PRD CD -08             | 23       |
#      | N_4316_PRD CD- 02, SUB PRD CD -04             | 23       |
#      | N_4316_PRD CD- 07, SUB PRD CD -08             | 23       |
#      | N_4316_PRD CD- 13, SUB PRD CD -12             | 23       |
#      | N_4316_PRD CD-18, SUB PRD CD -01              | 23       |
#      | N_4316_PRD CD-18, SUB PRD CD -07              | 23       |
#      | N_4316_PRD CD-18, SUB PRD CD -03              | 23       |
#      | N_4316_PRD CD- 18, SUB PRD CD -02             | 23       |
#      | N_4316_PRD CD- 19, SUB PRD CD -11             | 23       |
#      | N_4316_PRD CD-23, SUB PRD CD -02              | 23       |
#      | N_4316_SRC_ACCT_STAT_CD!=A                    | 23       |
#      | N_4316_SRC_ACCT_STAT_CD-Null                  | 23       |
#      | N_4316_Account Open Date greater than 25 days | 28       |
#      | N_4316_Account Open Date equal to Null        | NULL     |
#      | N_4316_Account Open Date less than 23         | 20       |
#      | N_4316_Deceased_F=Y                           | 23       |
#      | N_4316_Deceased_F=Null                        | 23       |
#      | N_4316_LANG_CD=K                              | 23       |
#      | N_4316_LANG_CD=NE                             | 23       |
#      | N_4316_LANG_CD=Null                           | 23       |
#      | N_4316_LAST_BILL_PAYMENT=NULL                 | 23       |
#      | N_4316_PAC_PAD_F=1                            | 23       |
#      | N_4316_PAC_PAD_F=2                            | 23       |
#      | N_4316_ACCT_SUBSYS_ID_KS                      | 23       |
#      | N_4316_Do not Email Flag=Y                    | 23       |
#      | N_4316_INDV_FRST_NM=Blank                     | 23       |
#      | N_4316_INDV_FRST_NM=NULL                      | 23       |
#      | N_4316_INDV_LAST_NM=Blank                     | 23       |
#      | N_4316_INDV_LAST_NM=NULL                      | 23       |
#      | N_4316_VLD_EMAIL_F=N                          | 23       |
#      | N_4316_PRIM_EMAIL_ADDR =NULL                  | 23       |
#      | N_4316_CC_VIP_IND = 2                         | 23       |
#      | N_4316_CC_VIP_IND = 9                         | 23       |
#      | N_4316_Primary_Acct_Holder_Flag=N             | 23       |
#      | N_4316_Primary_Acct_Holder_Flag=NULL          | 23       |

  @D2DEngagementBillPayment @D2DEngagementBillPayment_PosNeg_AFIL @Workstream-4 @4316 @EMAIL @RS18023
  Scenario Outline: D2D Engagement PAD Payment_RS18023_4316_EMAIL Create test data for AFIL exclusion test cases
    Given load data from "BillPayment" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    And  write Dual account odt "<Acct_Odt>""<Dual_Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Examples:
      | Test cases                                                                                                                | Acct_Odt | Dual_Acct_Odt |
      | 4316_ACCT_SUBSYS_ID != SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT <= 6 months   | 23       | 170           |
      | 4316_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD != Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT <= 6 months   | 23       | 170           |
      | 4316_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = NULL and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT <= 6 months      | 23       | 170           |
      | 4316_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD != 9  and Current Date - ACCT_ODT <= 6 months   | 23       | 170           |
      | 4316_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = NULL  and Current Date - ACCT_ODT <= 6 months | 23       | 170           |
      | 4316_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT > 6 months     | 23       | 181           |
      | 4316_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT = NULL         | 23       | NULL          |
      | N-4316_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT < 6 months   | 23       | 179           |
      | N-4316_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT = 6 months   | 23       | 180           |
