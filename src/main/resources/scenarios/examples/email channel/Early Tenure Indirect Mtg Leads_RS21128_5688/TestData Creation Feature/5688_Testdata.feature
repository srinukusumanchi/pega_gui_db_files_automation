@EarlyTenureIndirectMtgLeads_PosNeg_5688_EMAIL_TestDataLoad
Feature: Test data creation for Email EarlyTenureIndirectMtgLeads


  @EarlyTenureIndirectMtgLeads_Email_111 @EarlyTenureIndirectMtgLeads_Positive_TestData_5688_111 @5688 @EarlyTenureIndirectMtgLeadsEMAIL @RS21128 @111
  Scenario Outline: EarlyTenureIndirectMtgLeads_RS21128_5688_EMAIL Create test data for 111
    Given load data from "EarlyTenureIndirectMtgLeadsEmail" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And write Mortgage Funding Date "<MORT_FNDNG_DT>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                                                                                                                                   | MORT_FNDNG_DT |
#      | 5688_CUST_TP_CD=PSNL,5688_Primary Country Cd = CA,5688_MRKTBLE_F = Y,5688_Customer Not Decease                                                               | 35            |
#      | 5688_CUST_AGE >18                                                                                                                                            | 35            |
#      | 5688_CUST_AGE=18                                                                                                                                             | 35            |
#      | 5688_LANG_CD in small case_en                                                                                                                                | 35            |
#      | 5688_LANG_CD in small case_fr                                                                                                                                | 35            |
#      | 5688_NOT_AML_KYC = N                                                                                                                                         | 35            |
#      | 5688_NOT_AML_KYC = NULL                                                                                                                                      | 35            |
#      | 5688_DEDICATED_INVSTMNT_ADVISOR_F = N                                                                                                                        | 35            |
#      | 5688_DEDICATED_INVSTMNT_ADVISOR_F = NULL                                                                                                                     | 35            |
#      | 5688_DO_NOT_SOLICIT_F = NULL                                                                                                                                 | 35            |
#      | 5688_MAPP_TMRRW_LAST_SESS_DT = NULL                                                                                                                          | 35            |
#      | 5688_DO_NOT_EMAIL_F=N                                                                                                                                        | 35            |
#      | 5688_VLD_EML_F=Y                                                                                                                                             | 35            |
#      | 5688_PRIM_EMAIL_ADDRESS!=NULL                                                                                                                                | 35            |
#      | 5688_INDV_FRST_NM!=NULL/BLANK                                                                                                                                | 58            |
#      | 5688_ACCT_SUBSYS_ID = UO And SRC_ACCT_STAT_CD = Active And IP_AR_RELATN_TYPE_CD = SOL And MORT_COMM_TYPE = Residential And ACCT_SOURCE_ORIG_CHANNEL = BROKER | 31            |
#      | 5688_ACCT_SUBSYS_ID = UO And SRC_ACCT_STAT_CD = Active And IP_AR_RELATN_TYPE_CD = BOR And MORT_COMM_TYPE = Residential And ACCT_SOURCE_ORIG_CHANNEL = BROKER | 59            |
#      | 5688_ACCT_SUBSYS_ID = UO And SRC_ACCT_STAT_CD = Active And IP_AR_RELATN_TYPE_CD = COB And MORT_COMM_TYPE = Residential And ACCT_SOURCE_ORIG_CHANNEL = BROKER | 32            |
      | 5688_CURRENT DATE - MORT_FNDNG_DT<=90 and >=30                                                                                                               | 33            |
      | 5688_CURRENT DATE - MORT_FNDNG_DT = 90                                                                                                                       | 90            |
      | 5688_CURRENT DATE - MORT_FNDNG_DT = 30                                                                                                                       | 30            |
#      | 5688_MK_MORTGAGES_EMAIL_F = Y                                                                                                                                | 35            |
#      | 5688_MK_MORTGAGES_EMAIL_F = NULL                                                                                                                             | 35            |
#      | 5688_INDV_TTL_NM = NULL                                                                                                                                      | 35            |

  @EarlyTenureIndirectMtgLeads_Email_1111 @EarlyTenureIndirectMtgLeads_Positive_TestData_5688_1111 @5688 @EarlyTenureIndirectMtgLeadsEMAIL @RS21128 @1111
  Scenario Outline: EarlyTenureIndirectMtgLeads_RS21128_5688_EMAIL Create test data for 1111
    Given load data from "EarlyTenureIndirectMtgLeadsEmail" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And write Mortgage Funding Date "<MORT_FNDNG_DT>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write  Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>"
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table
    Examples:
      | Test cases                                                              | MORT_FNDNG_DT |
      | 5688_INSIGHT_CD = FLG_EMOB_INDIRECTMORTGAGE_RS21128 and CURR_VAL != 1   | 35            |
      | N-5688_INSIGHT_CD = FLG_EMOB_INDIRECTMORTGAGE_RS21128 and CURR_VAL = 1  | 35            |
      | 5688_INSIGHT_CD = FLG_RESL_CONTINUUM_RS21038_CONTROL and CURR_VAL != 1  | 35            |
      | N-5688_INSIGHT_CD = FLG_RESL_CONTINUUM_RS21038_CONTROL and CURR_VAL = 1 | 35            |

  @EarlyTenureIndirectMtgLeads_Email_111 @EarlyTenureIndirectMtgLeads_Negative_TestData_5688_111 @5688 @EarlyTenureIndirectMtgLeadsEMAIL @RS21128 @111
  Scenario Outline: EarlyTenureIndirectMtgLeads_RS21128_5688_EMAIL Create Negative test data for 111
    Given load data from "EarlyTenureIndirectMtgLeadsEmail" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And write Mortgage Funding Date "<MORT_FNDNG_DT>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                     | MORT_FNDNG_DT |
#      | N-5688_CUST_TP_CD != PSNL                      | 35            |
#      | N-5688_Primary Country Cd != CA                | 35            |
#      | N-5688_Primary Country Cd = NULL               | 35            |
#      | N-5688_CUST_AGE < 18                           | 35            |
#      | N-5688_CUST_AGE = NULL                         | 35            |
#      | N-5688_LANG_CD NOT in (en, fr)                 | 35            |
#      | N-5688_LANG_CD = NULL                          | 35            |
#      | N-5688_NOT_AML_KYC = Y                         | 35            |
#      | N-5688_DEDICATED_INVSTMNT_ADVISOR_F = Y        | 35            |
#      | N-5688_DO_NOT_SOLICIT_F = Y                    | 35            |
#      | N-5688_MRKTBLE_F = N                           | 35            |
#      | N-5688_MRKTBLE_F = NULL                        | 35            |
#      | N-5688_Customer Decease - Y                    | 35            |
#      | N-5688_Customer Decease - NULL                 | 35            |
#      | N-5688_DO_NOT_EMAIL_F=Y                        | 35            |
#      | N-5688_DO_NOT_EMAIL_F=NULL                     | 35            |
#      | N-5688_Valid Email Flag = N                    | 35            |
#      | N-5688_Valid Email Flag = NULL                 | 35            |
#      | N-5688_EMAIL Address = NULL                    | 35            |
#      | N-5688_First Name = NULL                       | 35            |
#      | N-5688_INDV_LAST_NM = NULL                     | 35            |
#      | N-5688_MK_MORTGAGES_EMAIL_F = N                | 35            |
#      | N-5688_ACCT_SUBSYS_ID != UO                    | 35            |
#      | N-5688_MAPP_TMRRW_LAST_SESS_DT != NULL         | 35            |
#      | N-5688_SRC_ACCT_STAT_CD =  A                   | 35            |
#      | N-5688_SRC_ACCT_STAT_CD = NULL                 | 35            |
#      | N-5688_IP_AR_RELATN_TYPE_CD NOT IN SOL_BOR_COB | 35            |
#      | N-5688_IP_AR_RELATN_TYPE_CD NOT = NULL         | 35            |
#      | N-5688_MORT_COMM_TYPE != Residential           | 35            |
#      | N-5688_MORT_COMM_TYPE = NULL                   | 35            |
#      | N-5688_ACCT_SOURCE_ORIG_CHANNEL != BROKER      | 35            |
#      | N-5688_ACCT_SOURCE_ORIG_CHANNEL = NULL         | 35            |
      | N-5688_CURRENT DATE - MORT_FNDNG_DT = 91       | 91            |
      | N-5688_CURRENT DATE - MORT_FNDNG_DT > 91       | 100            |
      | N-5688_CURRENT DATE - MORT_FNDNG_DT = 29       | 29            |
      | N-5688_CURRENT DATE - MORT_FNDNG_DT < 30       | 28            |
      | N-5688_CURRENT DATE - MORT_FNDNG_DT = NULL     | NULL          |

  @EarlyTenureIndirectMtgLeads_Email_144 @EarlyTenureIndirectMtgLeads_Negative_positive_TestData_5688_144 @5688 @EarlyTenureIndirectMtgLeadsEMAIL @RS21128 @144
  Scenario Outline: EarlyTenureIndirectMtgLeads_RS21128_5688_EMAIL Create Negative test data for 144
    Given load data from "EarlyTenureIndirectMtgLeadsEmail" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And write Mortgage Funding Date "<MORT_FNDNG_DT>" value into "ACCT_DIM" sheet for "<Test cases>" having "4" accounts
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "4" accounts
    Then insert customer account details in "ACCT_DIM" table having "4" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "4" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "4" accounts
    Examples:
      | Test cases                                                                                | MORT_FNDNG_DT |
      | N-5688_Product_Category_Credit Cards_Business Loans_High Interest Savings Accounts        | 35            |
      | N-5688_Product_Category_Credit Cards_Scotia Plan Loans_Cash Term Deposit                  | 35            |
      | N-5688_Product_Category_Credit Cards_Unsecured Lending_Cash Term Deposit                  | 35            |
      | N-5688_Product_Category_Day to Day_Secured Lines of Credit_High Interest Savings Accounts | 35            |
      | 5688_Product_Category_Credit Cards_Other Personal Loans_Auto Loans                        | 35            |
      | 5688_Product_Category_Day to Day_High Interest Savings Accounts_Cash Term Deposit         | 35            |
      | 5688_Product_Category_Day to Day_Scotia Plan Loans_Cash Demand Deposit                    | 35            |
      | 5688_Product_Category_Secured Lines of Credit_Cash Term Deposit_Lines of Credit           | 35            |

  @EarlyTenureIndirectMtgLeads_Email_155 @EarlyTenureIndirectMtgLeads_Negative_TestData_5688_155 @5688 @EarlyTenureIndirectMtgLeadsEMAIL @RS21128 @155
  Scenario Outline: EarlyTenureIndirectMtgLeads_RS21128_5688_EMAIL Create Negative test data for 155
    Given load data from "EarlyTenureIndirectMtgLeadsEmail" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And write Mortgage Funding Date "<MORT_FNDNG_DT>" value into "ACCT_DIM" sheet for "<Test cases>" having "5" accounts
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "5" accounts
    Then insert customer account details in "ACCT_DIM" table having "5" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "5" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "5" accounts
    Examples:
      | Test cases                                                                                       | MORT_FNDNG_DT |
      | N-5688_Product_Category_Day to Day_Other Personal Loans_Auto Loans_Cash Term Deposit             | 35            |
      | N-5688_Product_Category_Credit Cards_Day to Day_Mortgages_Cash Term Deposit                      | 35            |
      | N-5688_Product_Category_Credit Cards_Auto Loans_High Interest Savings Accounts_Cash Term Deposit | 35            |

  @EarlyTenureIndirectMtgLeads_Email_133 @EarlyTenureIndirectMtgLeads_Negative_TestData_5688_133 @5688 @EarlyTenureIndirectMtgLeadsEMAIL @RS21128 @133
  Scenario Outline: EarlyTenureIndirectMtgLeads_RS21128_5688_EMAIL Create Negative test data for 133
    Given load data from "EarlyTenureIndirectMtgLeadsEmail" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And write Mortgage Funding Date "<MORT_FNDNG_DT>" value into "ACCT_DIM" sheet for "<Test cases>" having "3" accounts
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
    Then insert customer account details in "ACCT_DIM" table having "3" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "3" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "3" accounts
    Examples:
      | Test cases                                                        | MORT_FNDNG_DT |
      | 5688_Product_Category_Credit Cards_High Interest Savings Accounts | 34            |
      | 5688_Multiple Eligible UO Accounts_Priority_Max_MORT_FNDNG_DT     | 33            |