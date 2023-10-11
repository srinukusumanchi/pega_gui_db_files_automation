@BillPaymentTxn_5616
Feature: Test data creation for EMAIL  for Bill Payment Txn Campaign

  @5616_Positive
  Scenario Outline: Bill Payment Txn_RS21133_5616_EMAIL Create test data "<Test cases>" for positive scenarios
    Given load data from "BillPaymentTxn" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write MOB_LAST_LOGIN_DT "<MOB_LOGIN>" value into sheet "CUST_DIM" for "<Test cases>"
    And write SOL_LAST_LOGIN_DT "<SOL_LOGIN>" value into sheet "CUST_DIM" for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write account number into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write  Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>"
    And write Event data "<EVENT_DATE>" into "CUST_INSIGHTS" sheet for "<Test cases>"
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table
    Examples:
      | Test cases                                                  | EVENT_DATE | Acct_Odt | MOB_LOGIN | SOL_LOGIN |
      | 5616_CUST_TP_CD=PSNL                                        | 1          | 100      | 89        | 89        |
      | 5616_Primary Country Cd = CA(KS Acc_<90 days)               | 1          | 89       | 89        | 91        |
      | 5616_CUST_AGE =18(AC Acc_<90 days)                          | 1          | 88       | 91        | 89        |
      | 5616_CUST_AGE >18(KS Acc_ODT>90 days)                       | 1          | 91       | 90        | 90        |
      | 5616_LANG_CD in Capital Letter =E(AC Acc_ODT>90 days)       | 1          | 92       | 90        | 91        |
      | 5616_LANG_CD in Capital Letter =EN                          | 1          | 95       | 90        | 89        |
      | 5616_LANG_CD in Capital Letter =F                           | 1          | 95       | 91        | 90        |
      | 5616_LANG_CD in Capital Letter =FR                          | 1          | 92       | 89        | 90        |
      | 5616_LANG_CD in Small Letter = e                            | 1          | 91       | 89        | 89        |
      | 5616_LANG_CD in Small Letter = en                           | 1          | 92       | 90        | 90        |
      | 5616_LANG_CD in Small Letter = f                            | 1          | 93       | 91        | 91        |
      | 5616_LANG_CD in Small Letter = fr                           | 1          | 94       | 92        | 92        |
      | 5616_DO_NOT_SOLICIT_F = N                                   | 1          | 100      | 92        | NULL      |
      | 5616_DO_NOT_SOLICIT_F = NULL                                | 1          | 100      | NULL      | 92        |
      | 5616_MRKTBLE_F = Y                                          | 1          | 100      | 89        | NULL      |
      | 5616_DECEASED_F=N                                           | 1          | 100      | NULL      | 89        |
      | 5616_MOB_LAST_LOGIN_DT = 90 days                            | 1          | 100      | 90        | NULL      |
      | 5616_SOL_LAST_LOGIN_DT = 90 days                            | 1          | 100      | NULL      | 90        |
      | 5616_MOB_LAST_LOGIN_DT < 90 days                            | 1          | 100      | 89        | NULL      |
      | 5616_SOL_LAST_LOGIN_DT < 90 days                            | 1          | 100      | NULL      | 89        |
      | 5616_MOB_LAST_LOGIN_DT > 90 days                            | 1          | 100      | 91        | NULL      |
      | 5616_SOL_LAST_LOGIN_DT > 90 days                            | 1          | 100      | NULL      | 91        |
      | 5616_MOB_SOL_LAST_LOGIN_DT = NULL                           | 1          | 100      | NULL      | NULL      |
      | 5616_MOB_SOL_LAST_LOGIN_DT > 90 days                        | 1          | 100      | 91        | 91        |
      | 5616_MK_BK_INFO_ACCTS_EMAIL_F = Y                           | 0          | 100      | 88        | 88        |
      | 5616_MK_BK_INFO_ACCTS_EMAIL_F = NULL                        | 1          | 100      | 88        | NULL      |
      | 5616_DO_NOT_EMAIL_F=N                                       | 2          | 100      | NULL      | 88        |
      | 5616_VLD_EMAIL_F=Y                                          | 3          | 100      | 25        | NULL      |
      | 5616_PRIM_EMAIL_ADDRESS != NULL                             | 4          | 100      | NULL      | 25        |
      | 5616_ACCT_ODT = NULL                                        | 5          | NULL     | 25        | NULL      |
      | 5616_CUST_INSIGHTS.INSIGHT_CD = FLG_Bill_Payment_Prediction | 6          | 100      | 25        | NULL      |
      | 5616_CUST_INSIGHTS.CURR_VAL = 1                             | 7          | 100      | 25        | NULL      |
      | 5616_EVENT_DATE - Current Date =7 days                      | 7          | 100      | 25        | NULL      |
      | 5616_EVENT_DATE - Current Date < 7 days                     | 1          | 100      | 25        | NULL      |
      | 5616_ACCT_ODT < 90_Inactive                                 | 1          | 80       | 25        | NULL      |

  @5616_Negative
  Scenario Outline: Bill Payment Txn_RS21133_5616_EMAIL Create test data "<Test cases>" for negative scenarios
    Given load data from "BillPaymentTxn" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write account number into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write  Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>"
    And write Event data "<EVENT_DATE>" into "CUST_INSIGHTS" sheet for "<Test cases>"
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table
    Examples:
      | Test cases                                                     | EVENT_DATE | Acct_Odt |
      | N_5616_CUST_TP_CD!=PSNL                                        | 2          | 100      |
      | N_5616_Primary Country Cd! = CA                                | 2          | 100      |
      | N_5616_Primary Country Cd = NULL                               | 2          | 100      |
      | N_5616_CUST_AGE =17                                            | 2          | 100      |
      | N_5616_CUST_AGE = NULL                                         | 2          | 100      |
      | N_5616_LANG_CD in Capital Letter = K                           | 2          | 100      |
      | N_5616_LANG_CD in Capital Letter = NE                          | 2          | 100      |
      | N_5616_LANG_CD in Capital Letter = NULL                        | 2          | 100      |
      | N_5616_DO_NOT_SOLICIT_F = Y                                    | 2          | 100      |
      | N_5616_MRKTBLE_F = N                                           | 2          | 100      |
      | N_5616_MRKTBLE_F = NULL                                        | 2          | 100      |
      | N_5616_INDV_FRST_NM = NULL                                     | 2          | 100      |
      | N_5616_DO_NOT_EMAIL_F= Y                                       | 2          | 100      |
      | N_5616_DO_NOT_EMAIL_F=NULL                                     | 2          | 100      |
      | N_5616_VLD_EMAIL_F=N                                           | 2          | 100      |
      | N_5616_VLD_EMAIL_F=NULL                                        | 2          | 100      |
      | N_5616_PRIM_EMAIL_ADDRESS = NULL                               | 2          | 100      |
      | N_5616_DECEASED_F= Y                                           | 2          | 100      |
      | N_5616_DECEASED_F= NULL                                        | 2          | 100      |
      | N_5616_MK_BK_INFO_ACCTS_EMAIL_F = N                            | 2          | 100      |
      | N_5616_PRD_CD=01,SUB_PRD_CD=01_ACCT_ODT<=90 days               | 2          | 90       |
      | N_5616_PRD_CD=01,SUB_PRD_CD=02_ACCT_ODT<=90 days               | 2          | 89       |
      | N_5616_PRD_CD=01,SUB_PRD_CD=03_ACCT_ODT<=90 days               | 2          | 88       |
      | N_5616_PRD_CD=01,SUB_PRD_CD=04_ACCT_ODT<=90 days               | 2          | 87       |
      | N_5616_PRD_CD=02,SUB_PRD_CD=01_ACCT_ODT<=90 days               | 2          | 20       |
      | N_5616_PRD_CD=02,SUB_PRD_CD=02_ACCT_ODT<=90 days               | 2          | 20       |
      | N_5616_PRD_CD=02,SUB_PRD_CD=03_ACCT_ODT<=90 days               | 2          | 20       |
      | N_5616_PRD_CD=19,SUB_PRD_CD=01_ACCT_ODT<=90 days               | 2          | 20       |
      | N_5616_PRD_CD=19,SUB_PRD_CD=02_ACCT_ODT<=90 days               | 2          | 20       |
      | N_5616_PRD_CD=19,SUB_PRD_CD=03_ACCT_ODT<=90 days               | 2          | 20       |
      | N_5616_PRD_CD=19,SUB_PRD_CD=04_ACCT_ODT<=90 days               | 2          | 20       |
      | N_5616_PRD_CD=19,SUB_PRD_CD=07_ACCT_ODT<=90 days               | 2          | 20       |
      | N_5616_PRD_CD=19,SUB_PRD_CD=08_ACCT_ODT<=90 days               | 2          | 20       |
      | N_5616_PRD_CD=13,SUB_PRD_CD=01_ACCT_ODT<=90 days               | 2          | 20       |
      | N_5616_PRD_CD=13,SUB_PRD_CD=03_ACCT_ODT<=90 days               | 2          | 20       |
      | N_5616_PRD_CD=13,SUB_PRD_CD=07_ACCT_ODT<=90 days               | 2          | 20       |
      | N_5616_PRD_CD=13,SUB_PRD_CD=08_ACCT_ODT<=90 days               | 2          | 20       |
      | N_5616_PRD_CD=07,SUB_PRD_CD=11_ACCT_ODT<=90 days               | 2          | 20       |
      | N_5616_PRD_CD=07,SUB_PRD_CD=12_ACCT_ODT<=90 days               | 2          | 20       |
      | N_5616_PRD_CD=23,SUB_PRD_CD=01_ACCT_ODT<=90 days               | 2          | 20       |
      | N_5616_PRD_CD=23,SUB_PRD_CD=03_ACCT_ODT<=90 days               | 2          | 20       |
      | N_5616_PRIMARY_ACCT_HOLDER_FLAG = N                            | 2          | 100      |
      | N_5616_PRIMARY_ACCT_HOLDER_FLAG = NULL                         | 2          | 100      |
      | N_5616_CUST_INSIGHTS.INSIGHT_CD! = FLG_Bill_Payment_Prediction | 2          | 100      |
      | N_5616_CUST_INSIGHTS.CURR_VAL! = 1                             | 2          | 100      |
      | N_5616_EVENT_DATE - Current Date > days                        | 8          | 100      |
