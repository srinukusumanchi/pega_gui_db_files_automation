@ULOCInsurance_Email_TestDataCreation
Feature: Test data creation for D2D Engagement VisaDebit
#  As part of D2D Early Engagement Program, this welcome message will target new and existing customers
#  to introduce them to their new D2D account / Scotiabank.
#  It also include a test of the target population who are NEW TO BANK based on Customer relationship date within the last 7 days
  @PAULOCInsurance @ULOCInsurance_Email_Positive_TestData @Workstream-5 @5762 @EMAIL @RS22065
  Scenario Outline: PAULOCInsurance_RS22065_5762_EMAIL Create test data for positive test cases
    Given load data from "ULOCIns" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When write "ACCT_ODT" for "<Acct_Odt>" into "ACCT_DIM" sheet for "<Test cases>" for decrement in days
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write  Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write "EVENT_DATE" for "<event_dt>" into "CUST_INSIGHTS" sheet for "<Test cases>" for decrement in days
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table
    Examples:
      | Test cases                                                                                       | Acct_Odt | event_dt |
      | 5762_DECEASED_F = N                                                                              | 51       | 1        |
      | 5762_CUST_TP_CD=PSNL                                                                             | 52       | 1        |
      | 5762_and PRIM_CNTRY_CD = CA                                                                      | 53       | 1        |
      | 5762_EMPLOYEE_STAFF_F=N                                                                          | 54       | 1        |
      | 5762_EMPLOYEE_STAFF_F=Null                                                                       | 55       | 1        |
      | 5762_MRKTBLE_F = Y                                                                               | 56       | 1        |
      | 5762_DO_NOT_SOLICIT_F = NULL                                                                     | 51       | 1        |
      | 5762_DO_NOT_SOLICIT_F != Y                                                                       | 51       | 1        |
      | 5762_CUST_AGE is 18 years                                                                        | 51       | 1        |
      | 5762_CUST_AGE is 64 years                                                                        | 51       | 1        |
      | 5762_CUST_AGE is between 18-64                                                                   | 51       | 1        |
      | 5762_LANG_CD = en                                                                                | 51       | 1        |
      | 5762_LANG_CD = fr                                                                                | 51       | 1        |
      | 5762_DO_NOT_EMAIL_F = N                                                                          | 51       | 1        |
      | 5762_VLD_EMAIL_F = Y                                                                             | 51       | 1        |
      | 5762_PRIM_EMAIL_ADDR is NOT NULL                                                                 | 51       | 1        |
      | 5762_INDV_FRST_NM is NOT NULL                                                                    | 51       | 1        |
      | 5762_MK_INSURANCE_EMAIL_F ! = N                                                                  | 51       | 1        |
      | 5762_MK_INSURANCE_EMAIL_F  = NULL                                                                | 51       | 1        |
      | 5762_ACCT_SUBSYS_ID = KS                                                                         | 51       | 1        |
      | 5762_SRC_ACCT_STAT_CD = Open                                                                     | 51       | 1        |
      | 5762_PRD CD = VIC AND SUB PRD CD = RG                                                            | 51       | 1        |
      | 5762_PRD CD = VIC AND SUB PRD CD = RS                                                            | 51       | 1        |
      | 5762_PRD CD = SCL AND SUB PRD CD = CS                                                            | 51       | 1        |
      | 5762_PRD CD = SCL AND SUB PRD CD = INE                                                           | 51       | 1        |
      | 5762_PRD CD = SCL AND SUB PRD CD = RS                                                            | 51       | 1        |
      | 5762_PRD CD = SCL AND SUB PRD CD = RL                                                            | 51       | 1        |
      | 5762_PRD CD = SSL AND SUB PRD CD = SP                                                            | 51       | 1        |
      | 5762_PRD CD = SSL AND SUB PRD CD = LI                                                            | 51       | 1        |
      | 5762_CR_CRD_LMT_AMT <50000                                                                       | 51       | 1        |
      | 5762_CR_CRD_LMT_AMT =50000                                                                       | 51       | 1        |
      | 5762_CR_CRD_LMT_AMT >0                                                                           | 51       | 1        |
      | 5762_CRNT_BAL_AMT < (1.2 x CR_CRD_LMT_AMT) and CRNT_BAL_AMT >0                                   | 51       | 1        |
      | 5762_CRNT_BAL_AMT = (1.2 x CR_CRD_LMT_AMT) and CRNT_BAL_AMT >0                                   | 51       | 1        |
      | 5762_Current Date- ACCT_ODT=50                                                                   | 50       | 1        |
      | 5762_Current Date- ACCT_ODT>50                                                                   | 51       | 1        |
      | 5762_PRIMARY_ACCT_HOLDER_FLAG = Y                                                                | 51       | 1        |
      | 5762_INS_STATUS_DESC = Waived                                                                    | 51       | 1        |
      | 5762_INS_STATUS_DESC = Life Only                                                                 | 51       | 1        |
      | 5762_INS_STATUS_DESC = Disability                                                                | 51       | 0        |
      | 5762_INS_STATUS_DESC = Disability and Life                                                       | 51       | 1        |
      | 5762_INS_STATUS_DESC = Disability, Job Loss                                                      | 51       | 2        |
      | 5762_INS_STATUS_DESC = Disability, Life and Critical Illness                                     | 51       | 3        |
      | 5762_INS_STATUS_DESC = Life and CI                                                               | 51       | 4        |
      | 5762_INS_STATUS_DESC = Life, Disability and Job Loss                                             | 51       | 5        |
      | 5762_INSIGHT_CD = FLG_LOC_INS_ABANDON_APP && CURR_VAL = 1 && Current date - EVENT_DATE <  7 days | 51       | 6        |
      | 5762_INSIGHT_CD = FLG_LOC_INS_ABANDON_APP && CURR_VAL = 1 && Current date - EVENT_DATE =  7 days | 51       | 7        |

  @PAULOCInsurance @ULOCInsurance_Negative_TestData @Workstream-5 @5762 @EMAIL @RS22065
  Scenario Outline: PAULOCInsurance_RS22065_5762_EMAIL Create test data for negative test cases
    Given load data from "ULOCIns" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When write "ACCT_ODT" for "<Acct_Odt>" into "ACCT_DIM" sheet for "<Test cases>" for decrement in days
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write  Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write "EVENT_DATE" for "<event_dt>" into "CUST_INSIGHTS" sheet for "<Test cases>" for decrement in days
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table
    Examples:
      | Test cases                                                                                                                                                                                                | Acct_Odt | event_dt |
      | N_5762_DECEASED_F = Y                                                                                                                                                                                     | 51       | 1        |
      | N_5762_DECEASED_F = NULL                                                                                                                                                                                  | 51       | 1        |
      | N_5762_CUST_TP_CD != PSNL                                                                                                                                                                                 | 51       | 1        |
      | N_5762_CUST_TP_CD = NULL                                                                                                                                                                                  | 51       | 1        |
      | N_5762_PRIM_CNTRY_CD != CA                                                                                                                                                                                | 51       | 1        |
      | N_5762_PRIM_CNTRY_CD NULL                                                                                                                                                                                 | 51       | 1        |
      | N_5762_EMPLOYEE_STAFF_F = Y                                                                                                                                                                               | 51       | 1        |
      | N_5762_MRKTBLE_F = N                                                                                                                                                                                      | 51       | 1        |
      | N_5762_MRKTBLE_F = NULL                                                                                                                                                                                   | 51       | 1        |
      | N_5762_DO_NOT_SOLICIT_F = Y                                                                                                                                                                               | 51       | 1        |
      | N_5762_CUST_AGE is 17 years                                                                                                                                                                               | 51       | 1        |
      | N_5762_CUST_AGE is 65 years                                                                                                                                                                               | 51       | 1        |
      | N_5762_CUST_AGE is NULL                                                                                                                                                                                   | 51       | 1        |
      | N_5762_LANG_CD NOT IN (en,fr)                                                                                                                                                                             | 51       | 1        |
      | N_5762_LANG_CD = NULL                                                                                                                                                                                     | 51       | 1        |
      | N_5762_DO_NOT_EMAIL_F = Y                                                                                                                                                                                 | 51       | 1        |
      | N_5762_DO_NOT_EMAIL_F = NULL                                                                                                                                                                              | 51       | 1        |
      | N_5762_VLD_EMAIL_F = N                                                                                                                                                                                    | 51       | 1        |
      | N_5762_VLD_EMAIL_F = NULL                                                                                                                                                                                 | 51       | 1        |
      | N_5762_PRIM_EMAIL_ADDR is NULL                                                                                                                                                                            | 51       | 1        |
      | N_5762_INDV_FRST_NM is NULL                                                                                                                                                                               | 51       | 1        |
      | N_5762_MK_INSURANCE_EMAIL_F = N                                                                                                                                                                           | 51       | 1        |
      | N_5762_ACCT_SUBSYS_ID != KS                                                                                                                                                                               | 51       | 1        |
      | N_5762_ACCT_SUBSYS_ID = NULL                                                                                                                                                                              | 51       | 1        |
      | N_5762_SRC_ACCT_STAT_CD != Open                                                                                                                                                                           | 51       | 1        |
      | N_5762_SRC_ACCT_STAT_CD = NULL                                                                                                                                                                            | 51       | 1        |
      | N_5762_PRD CD != VIC AND SUB PRD CD = RG or RS                                                                                                                                                            | 51       | 1        |
      | N_5762_PRD CD = VIC AND SUB PRD CD != RS or RG                                                                                                                                                            | 51       | 1        |
      | N_5762_PRD CD != SCL AND SUB PRD CD = CS or INE or RS or RL                                                                                                                                               | 51       | 1        |
      | N_5762_PRD CD = SCL AND SUB PRD CD != CS or INE or RS or RL                                                                                                                                               | 51       | 1        |
      | N_5762_PRD CD != SSL AND SUB PRD CD = SP or LI                                                                                                                                                            | 51       | 1        |
      | N_5762_PRD CD = SSL AND SUB PRD CD != SP or LI                                                                                                                                                            | 51       | 1        |
      | N_5762_PRD CD = Null                                                                                                                                                                                      | 51       | 1        |
      | N_5762_SUB PRD CD = NULL                                                                                                                                                                                  | 51       | 1        |
      | N_5762_CR_CRD_LMT_AMT > 50000                                                                                                                                                                             | 51       | 1        |
      | N_5762_CR_CRD_LMT_AMT = 0                                                                                                                                                                                 | 51       | 1        |
      | N_5762_CR_CRD_LMT_AMT = NULL                                                                                                                                                                              | 51       | 1        |
      | N_5762_CRNT_BAL_AMT > (1.2 x CR_CRD_LMT_AMT) and CRNT_BAL_AMT >0                                                                                                                                          | 51       | 1        |
      | N_5762_CRNT_BAL_AMT > (1.2 x CR_CRD_LMT_AMT) and CRNT_BAL_AMT >0                                                                                                                                          | 51       | 1        |
      | N_5762_CRNT_BAL_AMT = 0                                                                                                                                                                                   | 51       | 1        |
      | N_5762_CRNT_BAL_AMT = NULL                                                                                                                                                                                | 51       | 1        |
      | N_5762_Current Date- ACCT_ODT < 50                                                                                                                                                                        | 49       | 1        |
      | N_5762_Current Date- ACCT_ODT = NULL                                                                                                                                                                      | NULL     | 1        |
      | N_5762_PRIMARY_ACCT_HOLDER_FLAG = N                                                                                                                                                                       | 51       | 1        |
      | N_5762_PRIMARY_ACCT_HOLDER_FLAG = NULL                                                                                                                                                                    | 51       | 1        |
      | N_5762_INS_STATUS_DESC not in (Waived or Life Only or Disability or Disability and Life or Disability, Job Loss or Disability, Life and Critical Illness or Life and CI or Life, Disability and Job Loss) | 51       | 1        |
      | N_5762_INS_STATUS_DESC = NULL                                                                                                                                                                             | 51       | 1        |
      | N_5762_INSIGHT_CD != FLG_LOC_INS_ABANDON_APP && CURR_VAL = 1 && Current date - EVENT_DATE <  7 days                                                                                                       | 51       | 1        |
      | N_5762_INSIGHT_CD = FLG_LOC_INS_ABANDON_APP && CURR_VAL != 1 && Current date - EVENT_DATE =  7 days                                                                                                       | 51       | 7        |
      | N_5762_INSIGHT_CD = FLG_LOC_INS_ABANDON_APP && CURR_VAL = 1 && Current date - EVENT_DATE >  7 days                                                                                                        | 51       | 8        |
      | N_5762_INSIGHT_CD = FLG_LOC_INS_ABANDON_APP && CURR_VAL = NULL && Current date - EVENT_DATE <  7 days                                                                                                     | 51       | 1        |
      | N_5762_INSIGHT_CD = FLG_LOC_INS_ABANDON_APP && CURR_VAL = 1 && Current date - EVENT_DATE =NULL                                                                                                            | 51       | NULL     |


  @PAULOCInsurance @ULOCInsurance_Positive_Negative_Exclusion_TestData @Workstream-5 @5762 @EMAIL @RS22065
  Scenario Outline: PAULOCInsurance_RS22065_5762_EMAIL Create test data for positive and negative test cases of exclusion criteria
    Given load data from "ULOCIns" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When write "ACCT_ODT" for "<Acct_Odt>" into "ACCT_DIM" sheet for "<Test cases>" for decrement in days
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "<Insight_cnt>" accounts
    Then write Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>" having "2" accounts
    When write "EVENT_DATE" for "<event_dt>" into "CUST_INSIGHTS" sheet for "<Test cases>" for decrement in days
    Then insert customer details in "CUST_INSIGHTS" table having "<Insight_cnt>" accounts
    Examples:
      | Test cases                                                                                                                                                   | Acct_Odt | event_dt | Insight_cnt |
      | N_5762_INSIGHT_CD = FLAG_LOC_INS_EXCL_1M && CURR_VAL = 1                                                                                                     | 51       | 1        | 2           |
      | 5762_(INSIGHT_CD = FLG_LOC_INS_ABANDON_APP && CURR_VAL = 1 && Current date - EVENT_DATE =  7 days) && (INSIGHT_CD = FLAG_LOC_INS_EXCL_1M && CURR_VAL != 1)   | 51       | 1        | 2           |
      | 5762_(INSIGHT_CD = FLG_LOC_INS_ABANDON_APP && CURR_VAL = 1 && Current date - EVENT_DATE =  7 days) && (INSIGHT_CD = FLAG_LOC_INS_EXCL_1M && CURR_VAL = NULL) | 51       | 1        | 2           |


  @PAULOCInsurance @ULOCInsurance_Email_Prioritisation_TestData @Workstream-5 @5762 @EMAIL @RS22065
  Scenario Outline: PAULOCInsurance_RS22065_5762_EMAIL Create test data for positive test cases
    Given load data from "ULOCIns" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts
    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write  Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write "EVENT_DATE" for "<event_dt>" into "CUST_INSIGHTS" sheet for "<Test cases>" for decrement in days
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table
    Examples:
      | Test cases                                              | Acct_Odt | event_dt | Acct_Cnt |
      | 5762_ONE ACCT_VIC_RG_DUAL ACCT_SCL_CS_Same CRNT_BAL_AMT | 60       | 1        | 2        |
      | 5762_ONE ACCT_VIC_RG_DUAL ACCT_SCL_CS_Diff CRNT_BAL_AMT | 60       | 1        | 2        |


