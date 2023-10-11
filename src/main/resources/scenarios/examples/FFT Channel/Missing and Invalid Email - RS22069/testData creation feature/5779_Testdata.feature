@MissingAndInvalidEmail_5779_FFT_ccfile
Feature: Test data creation for FFT Missing Email CIE5779

  @MissingAndInvalidEmail @MissingEmail_Base_TestData_FFT @5779 @MissingEMAIL_FFT @RS22069
  Scenario Outline: Missing Email_RS22069_5779_FFT Create test data for Base test cases
    Given load data from "MissingEmail_FFT" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"

#    And write Scotia Card number into "<string>" sheet for "<string>"
    And write Generic Date in "MOB_LAST_LOGIN_DT" field with "<MOB_lastlogin_dt>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Generic Date in "SOL_LAST_LOGIN_DT" field with "<SOL_Lastlogin_dt>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records

    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table

    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table


    Examples:

      | Test cases                | MOB_lastlogin_dt | SOL_Lastlogin_dt |
      | 5779_FFT_BASE_Creative_01 | 120              | 120              |

  @MissingAndInvalidEmail @MissingEmail_Positive_TestData @5779 @MissingEMAIL_FFT @RS22069
  Scenario Outline: Missing Email_RS22069_5779_FFT Create test data for Positive test cases
    Given load data from "MissingEmail_FFT" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"

#    And write Scotia Card number into "<string>" sheet for "<string>"
    And write Generic Date in "MOB_LAST_LOGIN_DT" field with "<MOB_lastlogin_dt>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Generic Date in "SOL_LAST_LOGIN_DT" field with "<SOL_Lastlogin_dt>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records

    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table

    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table

    Examples:
      | Test cases                                                          | MOB_lastlogin_dt | SOL_Lastlogin_dt |
      | 5779_FFT_LANG_CD_eq_fr                                              | 120              | 120              |
      | 5779_FFT_UNSUBSCRIBED_F_eq_NULL                                     | 120              | 120              |
      | 5779_FFT_SOL_LAST_LOGIN_DT_eq_blank_AND_MOB_LAST_LOGIN_DT_eq_blank  | NULL             | NULL             |
      | 5779_FFT_SOL_LAST_LOGIN_DT_eq_blank_AND_MOB_LAST_LOGIN_DT_gt_90days | 91               | NULL             |
      | 5779_FFT_SOL_LAST_LOGIN_DT_gt_90days_AND_MOB_LAST_LOGIN_DT_eq_blank | NULL             | 91               |
      | 5779_FFT_GIVEN_NAME_eq_NULL                                         | 120              | 120              |
      | 5779_FFT_DO_NOT_SOLICIT_F_eq_NULL                                   | 120              | 120              |
      | 5779_FFT_CUST_AGE_eq_18                                             | 120              | 120              |
      | 5779_FFT_CUST_AGE_eq_74                                             | 120              | 120              |


  @MissingAndInvalidEmail @MissingEmail_Negative_TestData @5779 @MissingEMAIL_FFT @RS22069
  Scenario Outline: Missing Email_RS22069_5779_FFT Create test data for Negative test cases
    Given load data from "MissingEmail_FFT" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"

#    And write Scotia Card number into "<string>" sheet for "<string>"
    And write Generic Date in "MOB_LAST_LOGIN_DT" field with "<MOB_lastlogin_dt>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Generic Date in "SOL_LAST_LOGIN_DT" field with "<SOL_Lastlogin_dt>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records

    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table

    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table

    Examples:
      | Test cases                                                                                 | MOB_lastlogin_dt | SOL_Lastlogin_dt |
      | N_5779_FFT_ASSIGNED_FA_TRANSIT_eq_NULL_RESP_TRNST_NUM_eq_NULL_AND_CLOSEST_TRANSIT_NUM_NULL | 120              | 120              |
      | N_5779_FFT_ASSIGNED_FA_TRANSIT_eq_NULL_RESP_TRNST_NUM_ne_NULL_AND_CLOSEST_TRANSIT_NUM_NULL | 120              | 120              |
      | N_5779_FFT_DECEASED_F_eq_Y                                                                 | 120              | 120              |
      | N_5779_FFT_DECEASED_F_eq_NULL                                                              | 120              | 120              |
      | N_5779_FFT_PRIM_CNTRY_CD_ne_CA                                                             | 120              | 120              |
      | N_5779_FFT_PRIM_CNTRY_CD_eq_NULL                                                           | 120              | 120              |
      | N_5779_FFT_LANG_CD_ne_en                                                                   | 120              | 120              |
      | N_5779_FFT_LANG_CD_ne_fr                                                                   | 120              | 120              |
      | N_5779_FFT_LANG_CD_ne_e                                                                    | 120              | 120              |
      | N_5779_FFT_LANG_CD_ne_f                                                                    | 120              | 120              |
      | N_5779_FFT_LANG_CD_eq_NULL                                                                 | 120              | 120              |
      | N_5779_FFT_UNSUBSCRIBED_F_eq_Y                                                             | 120              | 120              |
      | N_5779_FFT_SOL_LAST_LOGIN_DT_lt_90days                                                     | 120              | 89               |
      | N_5779_FFT_MOB_LAST_LOGIN_DT_lt_90days                                                     | 89               | 120              |
      | N_5779_FFT_INDV_FRST_NM_eq_NULL                                                            | 120              | 120              |
      | N_5779_FFT_INDV_LAST_NM_eq_NULL                                                            | 120              | 120              |
      | N_5779_FFT_LANG_CD_eq_NULL                                                                 | 120              | 120              |
      | N_5779_FFT_PRIM_ADDR_LINE_1_eq_NULL                                                        | 120              | 120              |
      | N_5779_FFT_PRIM_CITY_NM_eq_NULL                                                            | 120              | 120              |
      | N_5779_FFT_PRIM_PROV_CD_eq_NULL                                                            | 120              | 120              |
      | N_5779_FFT_PRIM_POST_CD_eq_NULL                                                            | 120              | 120              |
      | N_5779_FFT_ACCT_SUBSYS_ID_ne_AC                                                            | 120              | 120              |
      | N_5779_FFT_ACCT_SUBSYS_ID_eq_NULL                                                          | 120              | 120              |
      | N_5779_FFT_EDW_ACCT_STAT_CD_ne_A                                                           | 120              | 120              |
      | N_5779_FFT_EDW_ACCT_STAT_CD_eq_NULL                                                        | 120              | 120              |
      | N_5779_FFT_SCD_NUM_eq_NULL                                                                 | 120              | 120              |
      | N_5779_FFT_CUST_TP_CD_ne_PSNL                                                              | 120              | 120              |
      | N_5779_FFT_DO_NOT_SOLICIT_F_eq_Y                                                           | 120              | 120              |
      | N_5779_FFT_SOL_LAST_LOGIN_DT_eq_90days                                                     | 120              | 90               |
      | N_5779_FFT_MOB_LAST_LOGIN_DT_eq_90days                                                     | 90               | 120              |
      | N-5779_FFT_PRIM_EMAIL_ADDR_ne_NULL                                                         | 120              | 120              |
      | N_5779_FFT_CUST_AGE_lt_18                                                                  | 120              | 120              |
      | N_5779_FFT_CUST_AGE_gt_74                                                                  | 120              | 120              |
      | N_5779_FFT_CUST_AGE_eq_NULL                                                                | 120              | 120              |


# Added for July 6th 2023 Release - Can be deactivated later
  @MissingAndInvalidEmail @MissingEmail_Positive_TestData_FFT_July_6th_2023_Release @5779 @MissingEMAIL_FFT @RS22069
  Scenario Outline: Missing Email_RS22069_5779_FFT Create test data for Positive test cases for July 6th 2023 Release
    Given load data from "MissingEmail_FFT" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"

    And write Generic Date in "MOB_LAST_LOGIN_DT" field with "<MOB_lastlogin_dt>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records
    And write Generic Date in "SOL_LAST_LOGIN_DT" field with "<SOL_Lastlogin_dt>" duration from current date into "CUST_DIM" sheet for "<Test cases>" having "1" records

    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table

    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table

    Examples:

      | Test cases                      | MOB_lastlogin_dt | SOL_Lastlogin_dt |
      | 5779_FFT_DO_NOT_EMAIL_F_eq_Y    | 120              | 120              |
      | 5779_FFT_DO_NOT_EMAIL_F_eq_NULL | 120              | 120              |
      | 5779_FFT_DO_NOT_EMAIL_F_eq_N    | 120              | 120              |


