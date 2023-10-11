@4315_FundAccount_TestDataCreation
Feature: Test data creation for D2D Engagement FundAccount

  
#  As part of D2D Early Engagement Program, this welcome message will target new and existing customers
#  to introduce them to their new D2D account / Scotiabank.
#  It also include a test of the target population who are NEW TO BANK based on Customer relationship date within the last 7 days
  @D2DEngagementFundAccount @D2DEngagementFundAccount_Positive_TestData_4315 @Workstream-4 @4315 @EMAIL @RS18022
  Scenario Outline: D2D Engagement FundAccount_RS18022_4315_EMAIL Create test data for positive test cases
    Given load data from "FundAccount" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write customer open date excluding today "<CUST_OPND_DT>" into "CUST_DIM" sheet for "<Test cases>"
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
#    When write customer id into "PURL_CUST_PROFILE" sheet for "<Test cases>"
#    And write account number into "PURL_CUST_PROFILE" sheet for "<Test cases>"
#    And write account odt into "PURL_CUST_PROFILE" sheet for "<Test cases>"
#    And write purl key into "PURL_CUST_PROFILE" sheet for "<Test cases>"
#    And write hash key into "PURL_CUST_PROFILE" sheet for "<Test cases>"
#    And write last sequence id into "PURL_CUST_PROFILE" sheet for "<Test cases>"
#    When read customer purl profile information details from excel sheet "PURL_CUST_PROFILE" for "<Test cases>"
#    Then insert customer in "PURL_CUST_PROFILE" table
    Examples:
      | Test cases                 | Acct_Odt | CUST_OPND_DT |
      | 4315_DO_NOT_SOLICIT_F=NULL              | 16       | 125          |
      | 4315_CUST_AGE_Equal to 16               | 16       | 125          |
      | 4315_LANG_CD=E                          | 16       | 125          |
      | 4315_LANG_CD_Small Case=e               | 16       | 125          |
      | 4315_LANG_CD=EN                         | 16       | 125          |
      | 4315_LANG_CD_Small Case =en             | 16       | 125          |
      | 4315_LANG_CD=F                          | 16       | 125          |
      | 4315_LANG_CD_Small Case =f              | 17       | 125          |
      | 4315_LANG_CD=FR                         | 17       | 125          |
      | 4315_LANG_CD_Small Case =fr             | 17       | 125          |
      | 4315_PRIM_EMAIL_ADDR=NOT NULL           | 17       | 125          |
      | 4315_PRD CD- 01, SUB PRD CD -01         | 17       | 125          |
      | 4315_PRD CD- 01, SUB PRD CD -02         | 18       | 125          |
      | 4315_PRD CD- 01, SUB PRD CD -03         | 18       | 125          |
      | 4315_PRD CD- 01, SUB PRD CD -04         | 18       | 125          |
      | 4315_PRD CD-02, SUB PRD CD -01          | 18       | 125          |
      | 4315_PRD CD-02, SUB PRD CD -02          | 18       | 125          |
      | 4315_PRD CD-02, SUB PRD CD -03          | 18       | 125          |
      | 4315_PRD CD-13, SUB PRD CD -01          | 18       | 125          |
      | 4315_PRD CD-13, SUB PRD CD -03          | 18       | 125          |
      | 4315_PRD CD-13, SUB PRD CD -07          | 19       | 125          |
      | 4315_PRD CD-13, SUB PRD CD -08          | 19       | 125          |
      | 4315_PRD CD-07, SUB PRD CD -11          | 19       | 125          |
      | 4315_PRD CD-07, SUB PRD CD -12          | 19       | 125          |
      | 4315_PRD CD-19, SUB PRD CD -01          | 19       | 125          |
      | 4315_PRD CD-19, SUB PRD CD -02          | 19       | 125          |
      | 4315_PRD CD-19, SUB PRD CD -03          | 19       | 125          |
      | 4315_PRD CD-19, SUB PRD CD -04          | 20       | 125          |
      | 4315_PRD CD-19, SUB PRD CD -07          | 20       | 125          |
      | 4315_PRD CD-19, SUB PRD CD -08          | 20       | 125          |
      | 4315_PRD CD-23, SUB PRD CD -01          | 20       | 125          |
      | 4315_PRD CD-23, SUB PRD CD -03          | 20       | 125          |
      | 4315_Account Open Date equal to 16 days | 16       | 125          |
      | 4315_Account Open Date equal to 20days  | 20       | 125          |
      | 4315_CC_VIP_IND=NULL                    | 16       | 125          |
      | 4315_CRNT_BAL_AMT equal to zero         | 16       | 125          |
      | 4315_CRNT_BAL_AMT greater than zero     | 16       | 125          |
      | 4315_CRNT_BAL_AMT less than zero        | 16       | 125          |
      | 4315_NTP_CUST_OPND_DT >120              | 16       | 121          |
      | 4315_NTP_CASL_CONSENT_F = Y             | 16       | 125          |
      | 4315_NTP_HARDBOUNCE_EMAIL_F !=Y         | 16       | 125          |
      | 4315_NTP_UNSUBSCRIBED_F !=Y             | 16       | 125          |
      | 4315_NTB_CUST_OPND_DT < 120             | 16       | 119          |
      | 4315_NTB_CUST_OPND_DT = 120             | 16       | 120          |
      | 4315_NTB_CASL_CONSENT_F = Y             | 16       | 110          |
      | 4315_NTB_CASL_CONSENT_F = N             | 16       | 10           |
      | 4315_NTB_CASL_CONSENT_F = NULL          | 16       | 10           |
      | 4315_NTB_UNSUBSCRIBED_F !=Y             | 16       | 10           |
      | 4315_NTB_HARDBOUNCE_EMAIL_F !=Y         | 16       | 10           |
      | 4315_Prv_Bnk_Ind=N         | 17       | 125          |
      | 4315_EMPLOYEE_STAFF_F=NULL | 17       | 125          |
      | 4315_Prv_Bnk_Ind=Null      | 18       | 125          |
      | 4315_Prv_Bnk_Ind=Y         | 18       | 125          |
      | 4315_EMPLOYEE_STAFF_F=Y    | 18       | 125          |
      | 4315_EMPLOYEE_STAFF_F=N    | 16       | 125          |
#      to be added
      | 4315_NOT_AML_KYC !=Y       | 16       | 125          |
      | 4315_NOT_AML_KYC = NULL    | 16       | 125          |
      | N-4315_NOT_AML_KYC = Y     | 16       | 125          |

    #Added for Feb 18 Rls 2023
      | 4315_HAS_CLOSED_CHQ_F !=Y   | 18       | 125          |
      | 4315_HAS_CLOSED_CHQ_F =Y    | 18       | 125          |
      | 4315_HAS_CLOSED_CHQ_F =NULL | 18       | 125          |


  @D2DEngagementFundAccount_NegativeTestData @D2DEngagementFundAccountNegativeTestData_4315 @Workstream-4 @4315 @EMAIL @RS18022
  Scenario Outline: D2D Engagement FundAccount_RS18022_4315_EMAIL Create test data for negative testcases
    Given load data from "FundAccount" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write customer open date excluding today "<CUST_OPND_DT>" into "CUST_DIM" sheet for "<Test cases>"
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
#    When write customer id into "PURL_CUST_PROFILE" sheet for "<Test cases>"
#    And write account number into "PURL_CUST_PROFILE" sheet for "<Test cases>"
#    And write account odt into "PURL_CUST_PROFILE" sheet for "<Test cases>"
#    And write purl key into "PURL_CUST_PROFILE" sheet for "<Test cases>"
#    And write hash key into "PURL_CUST_PROFILE" sheet for "<Test cases>"
#    And write last sequence id into "PURL_CUST_PROFILE" sheet for "<Test cases>"
#    When read customer purl profile information details from excel sheet "PURL_CUST_PROFILE" for "<Test cases>"
#    Then insert customer in "PURL_CUST_PROFILE" table

    Examples:
      | Test cases | Acct_Odt | CUST_OPND_DT |
#      | N_4315_PRIM_CNTRY_CD!=CA Eg:- AC              | 16       | 125          |
#      | N_4315_PRIM_CNTRY_CD=Null                     | 16       | 125          |
#      | N_4315_CUST_TP_CD != PSNL (Eg:- Non_PSNL)     | 16       | 125          |
#      | N_4315_CUST_TP_CD = Null                      | 16       | 125          |
#      | N_4315_DO_NOT_SOLICIT_F= Y                    | 16       | 125          |
#      | N_4315_CUST_AGE Equal to 15                   | 16       | 125          |
#      | N_4315_CUST_AGE Equal to Null                 | 17       | 125          |
#      | N_4315_CUST_AGE with in range (1-14)          | 17       | 125          |
# Start
#      | N_4315_DO_NOT_EMAIL_F=Y                       | 17       | 125          |
#      | N_4315_DO_NOT_EMAIL_F=NULL                    | 17       | 125          |
#      | N_4315_INDV_FRST_NM=                          | 17       | 125          |
#      | N_4315_INDV_FRST_NM=NULL                      | 17       | 125          |
#      | N_4315_VLD_EMAIL_F =N                         | 17       | 125          |
#      | N_4315_VLD_EMAIL_F =NULL                      | 17       | 125          |
# End

#      | N_4315_INDV_LST_NM=                           | 17       | 125          |
#      | N_4315_INDV_LST_NM=NULL                       | 17       | 125          |
#      | N_4315_Deceased_F=Y                           | 18       | 125          |
#      | N_4315_Deceased_F=Null                        | 18       | 125          |
#      | N_4315_PRD CD- 01, SUB PRD CD -11             | 18       | 125          |
#      | N_4315_PRD CD- 02, SUB PRD CD -04             | 18       | 125          |
#      | N_4315_PRD CD- 07, SUB PRD CD -08             | 18       | 125          |
#      | N_4315_PRD CD- 13, SUB PRD CD -12             | 18       | 125          |
#      | N_4315_PRD CD- 18, SUB PRD CD -01             | 18       | 125          |
#      | N_4315_PRD CD- 18, SUB PRD CD -07             | 19       | 125          |
#      | N_4315_PRD CD- 18, SUB PRD CD -03             | 19       | 125          |
#      | N_4315_PRD CD- 19, SUB PRD CD -11             | 19       | 125          |
#      | N_4315_PRD CD-23, SUB PRD CD -02              | 19       | 125          |
#      | N_4315_SRC_ACCT_STAT_CD!=A                    | 19       | 125          |
#      | N_4315_SRC_ACCT_STAT_CD-Null                  | 19       | 125          |
#      | N_4315_Account Open Date greater than 20 days | 21       | 125          |
#      | N_4315_Account Open Date equal to Null        | NULL     | 125          |
#      | N_4315_Account Open Date less than 16         | 15       | 125          |
#      | N_4315_LANG_CD=K                              | 16       | 125          |
#      | N_4315_LANG_CD=NE                             | 16       | 125          |
#      | N_4315_LANG_CD=Null                           | 16       | 125          |
#      | N_4315_ACCT_SUBSYS_ID_KS                      | 16       | 125          |

# Start
#      | N_4315_PRIM_EMAIL_ADDR=NULL                   | 17       | 125          |
# End

#      | N_4315_Primary_Acct_Holder_Flag =N            | 17       | 125          |
#      | N_4315_CC_VIP_IND=2                           | 17       | 125          |
#      | N_4315_CC_VIP_IND=9                           | 17       | 125          |

# Start
#      | N_4315_NTP_CASL_CONSENT_F = N                 | 16       | 121          |
# End

#      | N_4315_NTP_CASL_CONSENT_F = NULL              | 16       | 125          |

# Start
#      | N_4315_NTP_HARDBOUNCE_EMAIL_F = Y             | 16       | 125          |
#      | N_4315_NTP_UNSUBSCRIBED_F =Y                  | 16       | 125          |
#      | N_4315_NTB_UNSUBSCRIBED_F =Y                  | 16       | 110          |
#      | N_4315_NTB_HARDBOUNCE_EMAIL_F = Y             | 16       | 110          |
#      | N_4315_NTB_CUST_OPND_DT > 120                 | 16       | 121          |
#      | N_4315_CUST_OPND_DT = NULL                    | 17       | 125          |

  @D2DEngagementFundAccount @D2DEngagementFundAccount_PosNeg_AFIL @Workstream-4 @4315 @EMAIL @RS18022
  Scenario Outline: D2D Engagement FundAccount_RS18022_4315_EMAIL Create test data for positive test cases
    Given load data from "FundAccount" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write customer open date excluding today "<CUST_OPND_DT>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    And  write Dual account odt "<Acct_Odt>""<Dual_Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    Examples:
      | Test cases                                                                                                                | Acct_Odt | CUST_OPND_DT | Dual_Acct_Odt |
      | 4315_ACCT_SUBSYS_ID != SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT <= 6 months   | 16       | 125          | 170          |
      | 4315_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD != Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT <= 6 months   | 16       | 125          | 170           |
      | 4315_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = NULL and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT <= 6 months      | 16       | 125          | 170           |
      | 4315_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD != 9  and Current Date - ACCT_ODT <= 6 months   | 16       | 125          | 170           |
      | 4315_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = NULL  and Current Date - ACCT_ODT <= 6 months | 16       | 125          | 170           |
      | 4315_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT > 6 months     | 16       | 125          | 181           |
      | 4315_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT = NULL         | 16       | 125          | NULL           |
      | N-4315_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT < 6 months   | 16       | 125          | 179           |
      | N-4315_ACCT_SUBSYS_ID = SL and SRC_ACCT_STAT_CD = Active and SRC_SYS_PRD_CD = 9  and Current Date - ACCT_ODT = 6 months   | 16       | 125          | 180           |


