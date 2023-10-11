@ODPRightSizing_5614_Email
Feature: Test data creation for Email ODP Right Sizing


  @ODPRightSizing_Email_5614_1111
  Scenario Outline: ODP Right Sizing_RS21131_5614_EMAIL Create test data for 1111
    Given load data from "ODPRightSizing" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    Given write customer id into "CUST_INSIGHTS" sheet for "<Test cases>"
    When write  Current Val Update Timestamp into "CUST_INSIGHTS" sheet for "<Test cases>"
    And  write Event Date "<Event_Date>" value into sheet "CUST_INSIGHTS" for "<Test cases>"
    When write account number into "CUST_INSIGHTS" sheet for "<Test cases>"
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table

    Examples:
      | Test cases                                      | Event_Date |
      | 5614_NOVA_Customer Not Deceased                 | 4          |
#      | 5614_NOVA_CUST_AGE=18                           | 5          |
#      | 5614_NOVA_LANG_CD=E                             | 6          |
#      | 5614_NOVA_LANG_CD=EN                            | 7          |
#      | 5614_NOVA_LANG_CD=F                             | 8          |
#      | 5614_NOVA_LANG_CD=FR                            | 9          |
#      | 5614_NOVA_LANG_CD=LowerCase_e                   | 10         |
#      | 5614_NOVA_LANG_CD=LowerCase_en                  | 11         |
#      | 5614_NOVA_LANG_CD=LowerCase_f                   | 12         |
#      | 5614_NOVA_LANG_CD=LowerCase_fr                  | 13         |
#      | 5614_NOVA_DO_NOT_SOLICIT_F=NULL                 | 14         |
#      | 5614_NOVA_PRIM_PROV_CD!=QC                      | 15         |
#      | 5614_NOVA_Segment_1_Sole                        | 16         |
#      | 5614_NOVA_01_01_Sole                            | 4          |
#      | 5614_NOVA_01_02_Sole                            | 4          |
#      | 5614_NOVA_01_03_Sole                            | 4          |
#      | 5614_NOVA_01_04_Sole                            | 4          |
#      | 5614_NOVA_02_01_Sole                            | 4          |
#      | 5614_NOVA_02_02_Sole                            | 4          |
#      | 5614_NOVA_02_03_Sole                            | 4          |
#      | 5614_NOVA_19_01_Sole                            | 4          |
#      | 5614_NOVA_19_02_Sole                            | 4          |
#      | 5614_NOVA_19_03_Sole                            | 4          |
#      | 5614_NOVA_19_04_Sole                            | 4          |
#      | 5614_NOVA_19_07_Sole                            | 4          |
#      | 5614_NOVA_19_08_Sole                            | 4          |
#      | 5614_NOVA_13_01_Sole                            | 4          |
#      | 5614_NOVA_13_03_Sole                            | 4          |
#      | 5614_NOVA_13_07_Sole                            | 4          |
#      | 5614_NOVA_13_08_Sole                            | 4          |
#      | 5614_NOVA_07_11_Sole                            | 4          |
#      | 5614_NOVA_07_12_Sole                            | 4          |
#      | 5614_NOVA_Segment_1_Joint                       | 4          |
#      | 5614_NOVA_01_01_Joint                           | 4          |
#      | 5614_NOVA_01_02_Joint                           | 4          |
#      | 5614_NOVA_01_03_Joint                           | 4          |
#      | 5614_NOVA_01_04_Joint                           | 4          |
#      | 5614_NOVA_02_01_Joint                           | 4          |
#      | 5614_NOVA_02_02_Joint                           | 4          |
#      | 5614_NOVA_02_03_Joint                           | 4          |
#      | 5614_NOVA_19_01_Joint                           | 4          |
#      | 5614_NOVA_19_02_Joint                           | 4          |
#      | 5614_NOVA_19_03_Joint                           | 4          |
#      | 5614_NOVA_19_04_Joint                           | 4          |
#      | 5614_NOVA_19_07_Joint                           | 4          |
#      | 5614_NOVA_19_08_Joint                           | 4          |
#      | 5614_NOVA_13_01_Joint                           | 4          |
#      | 5614_NOVA_13_03_Joint                           | 4          |
#      | 5614_NOVA_13_07_Joint                           | 4          |
#      | 5614_NOVA_13_08_Joint                           | 4          |
#      | 5614_NOVA_07_11_Joint                           | 4          |
#      | 5614_NOVA_07_12_Joint                           | 4          |
#      | 5614_NOVA_DO_NOT_EMAIL_F=N                      | 4          |
#      | 5614_NOVA_Valid_Email_Flag=Y                    | 4          |
#      | 5614_NOVA_MK_BK_INFO_ACCTS_EMAIL_F=NULL         | 4          |
#      | N-5614_NOVA_DO_NOT_EMAIL_F=Y                    | 4          |
#      | N-5614_NOVA_DO_NOT_EMAIL_F=NULL                 | 4          |
#      | N-5614_NOVA_Valid_Email_Flag=N                  | 4          |
#      | N-5614_NOVA_Valid_Email_Flag=NULL               | 4          |
#      | N-5614_NOVA_INDV_FRST_NM=NULL                   | 4          |
#      | N-5614_NOVA_INDV_LAST_NM=NULL                   | 4          |
#      | N-5614_NOVA_MK_BK_INFO_ACCTS_EMAIL_F=N          | 4          |
#      | N-5614_NOVA_Deceased=Y                          | 4          |
#      | N-5614_NOVA_Deceased=NULL                       | 4          |
#      | N-5614_NOVA_CUST_TP_CD!=PSNL                    | 4          |
#      | N-5614_NOVA_CUST_TP_CD=NULL                     | 4          |
#      | N-5614_NOVA_PRIM_CNTRY_CD!=CA                   | 4          |
#      | N-5614_NOVA_PRIM_CNTRY_CD=NULL                  | 4          |
#      | N-5614_NOVA_CUST_AGE=NULL                       | 4          |
#      | N-5614_NOVA_CUST_AGE<18                         | 4          |
#      | N-5614_NOVA_LANG_CD=G                           | 4          |
#      | N-5614_NOVA_LANG_CD=NULL                        | 4          |
#      | N-5614_NOVA_DO_NOT_SOLICIT_F=Y                  | 4          |
#      | N-5614_NOVA_MRKTBLE_F=N                         | 4          |
#      | N-5614_NOVA_MRKTBLE_F=NULL                      | 4          |
#      | N-5614_NOVA_PRIM_PROV_CD=QC                     | 4          |
#      | 5614_NOVA_PRIM_PROV_CD=NULL                     | 4          |
#      | N-5614_NOVA_INSIGHT_CD != IND_ODP_USAGE         | 4          |
#      | N-5614_NOVA_CURR_VAL != 1 or 2                  | 4          |
#      | N-5614_NOVA_EVENT_DATE GT 30 days               | 31         |
#      | N-5614_NOVA_SRC_PRD_CD=23 and SRC_SUB_PRD_CD=01 | 4          |
#      | N-5614_NOVA_SRC_PRD_CD=23 and SRC_SUB_PRD_CD=03 | 4          |
#      | 5614_NOVA_ACCT_SUBSYS_ID!=BB                    | 4          |
#      | 5614_NOVA_SRC_ACCT_STAT_CD!=A                   | 4          |
#      | 5614_NOVA_SRC_PRD_CD=01 and SRC_SUB_PRD_CD=05   | 4          |
#      | 5614_NOVA_SRC_PRD_CD=02 and SRC_SUB_PRD_CD=04   | 4          |
#      | 5614_NOVA_SRC_PRD_CD=19 and SRC_SUB_PRD_CD=05   | 4          |
#      | 5614_NOVA_SRC_PRD_CD=13 and SRC_SUB_PRD_CD=02   | 4          |
#      | 5614_NOVA_SRC_PRD_CD=07 and SRC_SUB_PRD_CD=01   | 4          |
#      | 5614_NOVA_23_01_SRC_ACCT_STAT_CD!=A             | 4          |