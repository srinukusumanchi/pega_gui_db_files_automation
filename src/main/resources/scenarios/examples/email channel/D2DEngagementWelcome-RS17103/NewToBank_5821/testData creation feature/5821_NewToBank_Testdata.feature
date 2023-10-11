@5821_TestDataCreation
Feature: Test data creation for D2D Engagement Welcome New to Bank

#  As part of D2D Early Engagement Program, this welcome message will target new and existing customers
#  to introduce them to their new D2D account / Scotiabank.
#  It also include a test of the target population who are NEW TO BANK based on Customer relationship date within the last 7 days

  @D2DEngagementWelcome @D2DEngagementWelcomeNTB_Base_TestData @Workstream-4 @5821 @EMAIL @RS17103
  Scenario Outline: D2D Engagement Welcome-NTB_RS17103_5821_EMAIL Create test data for Base test cases
    Given load data from "WelcomeNTB" excel sheet

    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write customer open date excluding today "<CUST_Open_Date>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    And write account odt excluding today "<ACCT_OPENED_DT>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table

    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases       | CUST_Open_Date | ACCT_OPENED_DT |
      | 5821_EML_BASE_01 | 90             | 9              |


  @D2DEngagementWelcome @D2DEngagementWelcomeNTB_Positive_TestData @Workstream-4 @5821 @EMAIL @RS17103 @D2DFeb2023HasCode_flg
  Scenario Outline: D2D Engagement Welcome-NTB_RS17103_5821_EMAIL Create test data for Positive test cases
    Given load data from "WelcomeNTB" excel sheet

    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write customer open date excluding today "<CUST_Open_Date>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    And write account odt excluding today "<ACCT_OPENED_DT>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table

    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                                                                     | CUST_Open_Date | ACCT_OPENED_DT |
#      | 5821_EML_LANG_CD_eq_fr                                                                         | 90             | 5              |
#      | 5821_EML_CUST_AGE_eq_16                                                                        | 90             | 5              |
#      | 5821_EML_DO_NOT_SOLICIT_F_eq_NULL                                                              | 90             | 5              |
#      | 5821_EML_NOT_AML_KYC_eq_NULL                                                                   | 90             | 5              |
#      | 5821_EML_CUST_OPND_DT_eq_120_days                                                              | 120            | 5              |
#      | 5821_EML_CC_VIP_IND_eq_NULL                                                                    | 90             | 5              |
#      | 5821_EML_MK_BK_INFO_ACCTS_EMAIL_eq_NULL                                                        | 90             | 5              |
#      | 5821_EML_UNSUBSCRIBED_F_eq_NULL                                                                | 90             | 5              |
#      | 5821_EML_HARDBOUNCE_EMAIL_F_eq_NULL                                                            | 90             | 5              |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_01_SRC_SYS_SUB_PRD_CD_eq_01                    | 90             | 5              |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_01_SRC_SYS_SUB_PRD_CD_eq_02_NTC                | 90             | 5              |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_01_SRC_SYS_SUB_PRD_CD_eq_03                    | 90             | 5              |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_01_SRC_SYS_SUB_PRD_CD_eq_04                    | 90             | 5              |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_02_SRC_SYS_SUB_PRD_CD_eq_01                    | 90             | 5              |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_02_SRC_SYS_SUB_PRD_CD_eq_02                    | 90             | 5              |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_02_SRC_SYS_SUB_PRD_CD_eq_03_NTC                | 90             | 5              |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_19_SRC_SYS_SUB_PRD_CD_eq_01                    | 90             | 5              |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_19_SRC_SYS_SUB_PRD_CD_eq_02                    | 90             | 5              |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_19_SRC_SYS_SUB_PRD_CD_eq_03                    | 90             | 5              |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_19_SRC_SYS_SUB_PRD_CD_eq_04_NTC                | 90             | 5              |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_19_SRC_SYS_SUB_PRD_CD_eq_07                    | 90             | 5              |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_19_SRC_SYS_SUB_PRD_CD_eq_08                    | 90             | 5              |
      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_01                    | 90             | 5              |
      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_03                    | 90             | 5              |
      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_07                    | 90             | 5              |
      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_08                    | 90             | 5              |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_07_SRC_SYS_SUB_PRD_CD_eq_11                    | 90             | 5              |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_07_SRC_SYS_SUB_PRD_CD_eq_12                    | 90             | 5              |
      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_01                    | 90             | 5              |
      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_23_SRC_SYS_SUB_PRD_CD_eq_03_NTC                | 90             | 5              |
#      | 5821_EML_BB_Account_ACCT_ODT_LT_10_days                                                        | 90             | 9              |
#      | 5821_EML_BB_Account_ACCT_ODT_Eq_10_days                                                        | 90             | 10             |
      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_13_SRC_SYS_SUB_PRD_CD_eq_01_NTC_Prioritization | 90             | 5              |
      | 5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_07_SRC_SYS_SUB_PRD_CD_eq_12_NTC_Prioritization | 90             | 5              |

    # #Added for Feb 18 Rls 2023
      | 5821_HAS_CLOSED_CHQ_F !=Y                                                                      | 90             | 5              |
      | 5821_HAS_CLOSED_CHQ_F =Y                                                                       | 90             | 5              |
      | 5821_HAS_CLOSED_CHQ_F =NULL                                                                    | 90             | 5              |



  @D2DEngagementWelcome @D2DEngagementWelcomeNTB_Negative_TestData @Workstream-4 @5821 @EMAIL @RS17103
  Scenario Outline: D2D Engagement Welcome-NTB_RS17103_5821_EMAIL Create test data for Negative test cases
    Given load data from "WelcomeNTB" excel sheet

    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write customer open date excluding today "<CUST_Open_Date>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table

    And write account odt excluding today "<ACCT_OPENED_DT>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table

    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Examples:
      | Test cases                                                                      | CUST_Open_Date | ACCT_OPENED_DT |
      | N_5821_EML_DECEASED_F_eq_Y                                                      | 90             | 5              |
      | N_5821_EML_DECEASED_F_eq_NULL                                                   | 90             | 5              |
      | N_5821_EML_CUST_TP_CD_ne_PSNL                                                   | 90             | 5              |
      | N_5821_EML_CUST_TP_CD_ne_NULL                                                   | 90             | 5              |
      | N_5821_EML_PRIM_CNTRY_CD_ne_CA                                                  | 90             | 5              |
      | N_5821_EML_PRIM_CNTRY_CD_eq_NULL                                                | 90             | 5              |
      | N_5821_EML_DO_NOT_SOLICIT_F_eq_Y                                                | 90             | 5              |
      | N_5821_EML_NOT_AML_KYC_eq_Y                                                     | 90             | 5              |
      | N_5821_EML_CUST_AGE_lt_16                                                       | 90             | 5              |
      | N_5821_EML_CUST_AGE_eq_NULL                                                     | 90             | 5              |
      | N_5821_EML_LANG_CD_eq_bn                                                        | 90             | 5              |
      | N_5821_EML_Lang_CD_eq_NULL                                                      | 90             | 5              |
      | N_5821_EML_CUST_OPND_DT_gt_120_days                                             | 121            | 5              |
      | N_5821_EML_CUST_OPND_DT_eq_NULL                                                 | NULL           | 5              |
      | N_5821_EML_CC_VIP_IND_eq_2                                                      | 90             | 5              |
      | N_5821_EML_CC_VIP_IND_eq_9                                                      | 90             | 5              |
      | N_5821_EML_MK_BK_INFO_ACCTS_EMAIL_eq_N                                          | 90             | 5              |
      | N_5821_EML_VLD_EMAIL_F_ne_Y                                                     | 90             | 5              |
      | N_5821_EML_VLD_EMAIL_F_eq_NULL                                                  | 90             | 5              |
      | N_5821_EML_PRIM_EMAIL_ADDR_eq_NULL                                              | 90             | 5              |
      | N_5821_EML_INDV_FRST_NM_eq_NULL                                                 | 90             | 5              |
      | N_5821_EML_UNSUBSCRIBED_F_eq_Y                                                  | 90             | 5              |
      | N_5821_EML_HARDBOUNCE_EMAIL_F_eq_Y                                              | 90             | 5              |
      | N_5821_EML_ACCT_SUBSYS_ID_ne_BB                                                 | 90             | 5              |
      | N_5821_EML_ACCT_SUBSYS_ID_eq_NULL                                               | 90             | 5              |
      | N_5821_EML_SRC_ACCT_STAT_CD_ne_A                                                | 90             | 5              |
      | N_5821_EML_SRC_ACCT_STAT_CD_eq_NULL                                             | 90             | 5              |
      | N_5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_01_SRC_SYS_SUB_PRD_CD_eq_07   | 90             | 5              |
      | N_5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_01_SRC_SYS_SUB_PRD_CD_eq_NULL | 90             | 5              |
      | N_5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_07_SRC_SYS_SUB_PRD_CD_eq_02   | 90             | 5              |
      | N_5821_EML_ACCT_SUBSYS_ID_eq_BB_SRC_SYS_PRD_CD_eq_NULL_SRC_SYS_SUB_PRD_CD_eq_02 | 90             | 5              |
      | N_5821_EML_PRIMARY_ACCT_HOLDER_FLAG_eq_N                                        | 90             | 5              |
      | N_5821_EML_PRIMARY_ACCT_HOLDER_FLAG_eq_NULL                                     | 90             | 5              |
      | N_5821_EML_ACCT_ODT_gt_10                                                       | 90             | 11             |
      | N_5821_EML_ACCT_ODT_eq_NULL                                                     | 90             | NULL           |



## Multiple Account Test Cases for AFIL
## Removed
#
#  @D2DEngagementWelcome @D2DEngagementWelcomeNTB_Multiple_Accounts_Positive_TestData @Workstream-4 @5821 @EMAIL @RS17103
#  Scenario Outline: D2D Engagement Welcome-NTB_RS17103_5821_EMAIL Create test data for Multiple Accounts Positive test cases
#    Given load data from "WelcomeNTB" excel sheet
#
#    Given write cid into "CUST_DIM" sheet for "<Test cases>"
#    And write customer open date excluding today "<CUST_Open_Date>" into "CUST_DIM" sheet for "<Test cases>"
#    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
#    Then insert customer information details in "CUST_DIM" table
#
#    And write Different account odt "<ACCT_OPENED_DT>""<ACCT_OPENED_DT_SL>" value into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
#    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
#    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts
#
#    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
#    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts
#
#    Examples:
#      | Test cases                                                                                               | Acct_Cnt | CUST_Open_Date | ACCT_OPENED_DT | ACCT_OPENED_DT_SL |
#      | 5821_EML_ACCT_SUBSYS_ID_ne_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_lt_180days_AFIL   | 2        | 90             | 5              | 100               |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_NULL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_lt_180days_AFIL | 2        | 90             | 5              | 100               |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_ne_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_lt_180days_AFIL   | 2        | 90             | 5              | 100               |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_NULL_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_lt_180days_AFIL     | 2        | 90             | 5              | 100               |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_ne_09_ACCT_ODT_lt_180days_AFIL   | 2        | 90             | 5              | 100               |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_NULL_ACCT_ODT_lt_180days_AFIL | 2        | 90             | 5              | 100               |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_gt_180days_AFIL   | 2        | 90             | 5              | 181               |
#      | 5821_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_eq_NULL_AFIL      | 2        | 90             | 5              | NULL              |
#
#
#  @D2DEngagementWelcome @D2DEngagementWelcomeNTB_Multiple_Accounts_Negative_TestData @Workstream-4 @5821 @EMAIL @RS17103
#  Scenario Outline: D2D Engagement Welcome-NTB_RS17103_5821_EMAIL Create test data for Multiple Accounts Negative test cases
#    Given load data from "WelcomeNTB" excel sheet
#
#    Given write cid into "CUST_DIM" sheet for "<Test cases>"
#    And write customer open date excluding today "<CUST_Open_Date>" into "CUST_DIM" sheet for "<Test cases>"
#    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
#    Then insert customer information details in "CUST_DIM" table
#
#    And write Different account odt "<ACCT_OPENED_DT>""<ACCT_OPENED_DT_SL>" value into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
#    When write account number into sheet "ACCT_DIM" for "<Test cases>" having "<Acct_Cnt>" accounts
#    Then insert customer account details in "ACCT_DIM" table having "<Acct_Cnt>" accounts
#
#    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "<Acct_Cnt>" accounts
#    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "<Acct_Cnt>" accounts
#
#    Examples:
#      | Test cases                                                                                               | Acct_Cnt | CUST_Open_Date | ACCT_OPENED_DT | ACCT_OPENED_DT_SL |
#      | N_5821_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_lt_180days_AFIL | 2        | 90             | 5              | 179               |
#      | N_5821_EML_ACCT_SUBSYS_ID_eq_SL_SRC_ACCT_STAT_CD_eq_Active_SRC_SYS_PRD_CD_eq_09_ACCT_ODT_eq_180days_AFIL | 2        | 90             | 5              | 180               |
