@ODPRightSizing_BATCH_VALIDATION
Feature: Validation of Batch file Smoke scenarios for all channels

  ##########################EMAIL#############################

  @EMAIL @ODPRightSizing @5614 @ODPRightSizing_5614_BATCH_POSITIVE @RS21131 @AUTOTESTTOTAL#64
  Scenario Outline: ODP Right Sizing Email channel Validate batch file details against database and pega for Positive test cases
    Given load data from "ODPRightSizing" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    When read cust Insights information details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    And read ODP Right Sizing "ODPRightSize" extract file with Preference customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate the ODP Right Sizing offer details in batch file against database and pega
    Examples:
      | Test cases                                    |
      | 5614_NOVA_Customer Not Deceased               |
      | 5614_NOVA_CUST_AGE=18                         |
      | 5614_NOVA_LANG_CD=E                           |
      | 5614_NOVA_LANG_CD=EN                          |
      | 5614_NOVA_LANG_CD=F                           |
      | 5614_NOVA_LANG_CD=FR                          |
      | 5614_NOVA_LANG_CD=LowerCase_e                 |
      | 5614_NOVA_LANG_CD=LowerCase_en                |
      | 5614_NOVA_LANG_CD=LowerCase_f                 |
      | 5614_NOVA_LANG_CD=LowerCase_fr                |
      | 5614_NOVA_DO_NOT_SOLICIT_F=NULL               |
      | 5614_NOVA_PRIM_PROV_CD!=QC                    |
      | 5614_NOVA_Segment_1_Sole                      |
      | 5614_NOVA_01_01_Sole                          |
      | 5614_NOVA_01_02_Sole                          |
      | 5614_NOVA_01_03_Sole                          |
      | 5614_NOVA_01_04_Sole                          |
      | 5614_NOVA_02_01_Sole                          |
      | 5614_NOVA_02_02_Sole                          |
      | 5614_NOVA_02_03_Sole                          |
      | 5614_NOVA_19_01_Sole                          |
      | 5614_NOVA_19_02_Sole                          |
      | 5614_NOVA_19_03_Sole                          |
      | 5614_NOVA_19_04_Sole                          |
      | 5614_NOVA_19_07_Sole                          |
      | 5614_NOVA_19_08_Sole                          |
      | 5614_NOVA_13_01_Sole                          |
      | 5614_NOVA_13_03_Sole                          |
      | 5614_NOVA_13_07_Sole                          |
      | 5614_NOVA_13_08_Sole                          |
      | 5614_NOVA_07_11_Sole                          |
      | 5614_NOVA_07_12_Sole                          |
      | 5614_NOVA_Segment_1_Joint                     |
      | 5614_NOVA_01_01_Joint                         |
      | 5614_NOVA_01_02_Joint                         |
      | 5614_NOVA_01_03_Joint                         |
      | 5614_NOVA_01_04_Joint                         |
      | 5614_NOVA_02_01_Joint                         |
      | 5614_NOVA_02_02_Joint                         |
      | 5614_NOVA_02_03_Joint                         |
      | 5614_NOVA_19_01_Joint                         |
      | 5614_NOVA_19_02_Joint                         |
      | 5614_NOVA_19_03_Joint                         |
      | 5614_NOVA_19_04_Joint                         |
      | 5614_NOVA_19_07_Joint                         |
      | 5614_NOVA_19_08_Joint                         |
      | 5614_NOVA_13_01_Joint                         |
      | 5614_NOVA_13_03_Joint                         |
      | 5614_NOVA_13_07_Joint                         |
      | 5614_NOVA_13_08_Joint                         |
      | 5614_NOVA_07_11_Joint                         |
      | 5614_NOVA_07_12_Joint                         |
      | 5614_NOVA_DO_NOT_EMAIL_F=N                    |
      | 5614_NOVA_Valid_Email_Flag=Y                  |
      | 5614_NOVA_MK_BK_INFO_ACCTS_EMAIL_F=NULL       |
      | 5614_NOVA_23_01_SRC_ACCT_STAT_CD!=A           |
      | 5614_NOVA_ACCT_SUBSYS_ID!=BB                  |
      | 5614_NOVA_SRC_ACCT_STAT_CD!=A                 |
      | 5614_NOVA_SRC_PRD_CD=01 and SRC_SUB_PRD_CD=05 |
      | 5614_NOVA_SRC_PRD_CD=02 and SRC_SUB_PRD_CD=04 |
      | 5614_NOVA_SRC_PRD_CD=19 and SRC_SUB_PRD_CD=05 |
      | 5614_NOVA_SRC_PRD_CD=13 and SRC_SUB_PRD_CD=02 |
      | 5614_NOVA_SRC_PRD_CD=07 and SRC_SUB_PRD_CD=01 |
      | 5614_NOVA_PRIM_PROV_CD=NULL                   |


  @EMAIL @ODPRightSizing @5614 @ODPRightSizing_5614_BATCH_NEGATIVE @RS21131 @AUTOTESTTOTAL#26
  Scenario Outline: ODP Right Sizing Email channel Validate batch file details against database and pega for Negative test cases
    Given load data from "ODPRightSizing" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read ODP Right Sizing "ODPRightSize" extract file with Preference customer offer details
    Then validate the latest offer details should not display in batch file
    Examples:
      | Test cases                                      |
      | N-5614_NOVA_DO_NOT_EMAIL_F=Y                    |
      | N-5614_NOVA_DO_NOT_EMAIL_F=NULL                 |
      | N-5614_NOVA_Valid_Email_Flag=N                  |
      | N-5614_NOVA_Valid_Email_Flag=NULL               |
      | N-5614_NOVA_INDV_FRST_NM=NULL                   |
      | N-5614_NOVA_INDV_LAST_NM=NULL                   |
      | N-5614_NOVA_MK_BK_INFO_ACCTS_EMAIL_F=N          |
      | N-5614_NOVA_Deceased=Y                          |
      | N-5614_NOVA_Deceased=NULL                       |
      | N-5614_NOVA_CUST_TP_CD!=PSNL                    |
      | N-5614_NOVA_PRIM_CNTRY_CD!=CA                   |
      | N-5614_NOVA_PRIM_CNTRY_CD=NULL                  |
      | N-5614_NOVA_CUST_AGE=NULL                       |
      | N-5614_NOVA_CUST_AGE<18                         |
      | N-5614_NOVA_LANG_CD=G                           |
      | N-5614_NOVA_LANG_CD=NULL                        |
      | N-5614_NOVA_DO_NOT_SOLICIT_F=Y                  |
      | N-5614_NOVA_MRKTBLE_F=N                         |
      | N-5614_NOVA_MRKTBLE_F=NULL                      |
      | N-5614_NOVA_PRIM_PROV_CD=QC                     |
      | N-5614_NOVA_INSIGHT_CD != IND_ODP_USAGE         |
      | N-5614_NOVA_CURR_VAL != 1 or 2                  |
      | N-5614_NOVA_EVENT_DATE GT 30 days               |
      | N-5614_NOVA_SRC_PRD_CD=23 and SRC_SUB_PRD_CD=01 |
      | N-5614_NOVA_SRC_PRD_CD=23 and SRC_SUB_PRD_CD=03 |