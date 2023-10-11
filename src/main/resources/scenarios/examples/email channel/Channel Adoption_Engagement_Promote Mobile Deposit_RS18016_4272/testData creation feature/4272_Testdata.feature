@4272_TestDataCreation
Feature: Test data creation for ChannelAdoptionEngagementPromoteMobileDeposit


#  As part of D2D Early Engagement Program, this Digital Adoption message will target new and existing customers
#  to introduce them to their new D2D account / Scotiabank.
#  It also include a test of the target population who are NEW TO BANK based on Customer relationship date within the last 7 days
  @ChannelAdoptionEngagementPromoteMobileDeposit @ChannelAdoptionEngagementPromoteMobileDeposit_Positive_TestData @Workstream-4 @4272 @RDCEMAIL @RS18016
  Scenario Outline: Channel Adoption Engagement Promote Mobile Deposit_RS18016_4272_EMAIL Create test data for positive test cases
    Given load data from "RDC" excel sheet
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
    And write "<CURR_VAL_UPDT_TMSTMP>" into "CUST_INSIGHTS" sheet for "<Test cases>"
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table
    Examples:
      | Test cases                                                                         | CURR_VAL_UPDT_TMSTMP |
      | 4272_DO_NOT_SOLICIT_F=N                                                            | -1                   |
      | 4272_DO_NOT_SOLICIT_F=NULL                                                         | -2                   |
      | 4272_CUST.AGE_Greater than 18                                                      | -3                   |
      | 4272_CUST.AGE_Equal to 18                                                          | -1                   |
      | 4272_CUST.AGE != NULL                                                              | -2                   |
      | 4272_Deceased_F=N                                                                  | -3                   |
      | 4272_LANG_CD=E                                                                     | -1                   |
      | 4272_LANG_CD=EN                                                                    | -2                   |
      | 4272_LANG_CD=F                                                                     | -3                   |
      | 4272_LANG_CD=FR                                                                    | -1                   |
      | 4272_LANG_CD small case =e                                                         | -2                   |
      | 4272_LANG_CD small case =en                                                        | -3                   |
      | 4272_LANG_CD small case =f                                                         | -1                   |
      | 4272_LANG_CD small case =fr                                                        | -2                   |
      | 4272_MOB_LAST_LOGIN_DT is NULL and  DIGITAL_ACTVTN_F = N - (Creative 4272121702)   | -3                   |
      | 4272_MOB_LAST_LOGIN_DT is NULL and  DIGITAL_ACTVTN_F = NULL -(Creative 4272121702) | -1                   |
      | 4272_CC_VIP_IND = NULL                                                             | -3                   |

  @ChannelAdoptionEngagementPromoteMobileDeposit @ChannelAdoptionEngagementPromoteMobileDeposit_MOB_Active_Positive_TestData @Workstream-4 @4272 @RDCEMAIL @RS18016
  Scenario Outline: Channel Adoption Engagement Promote Mobile Deposit_RS18016_4272_EMAIL Create test data for positive test cases
    Given load data from "RDC" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write mobile last login date "<MOB_LAST_LOGIN_DT>" into "CUST_DIM" sheet for "<Test cases>"
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
    And write "<CURR_VAL_UPDT_TMSTMP>" into "CUST_INSIGHTS" sheet for "<Test cases>"
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table
    Examples:
      | Test cases                                                                                                                   | CURR_VAL_UPDT_TMSTMP | MOB_LAST_LOGIN_DT |
      | 4272_MOB_LAST_LOGIN_DT within last 180 days and  DIGITAL_ACTVTN_F = Y (Creative 4272121701)                                  | -2                   | 150               |
      | N-4272_MOB_LAST_LOGIN_DT not in last 180 days and DIGITAL_ACTVTN_F = Y Creative 4272121701 or 4272121702 not showed)         | -1                   | 190               |
      | N-4272_MOB_LAST_LOGIN_DT not within last 180 days and  DIGITAL_ACTVTN_F = N Creative 4272121701 or 4272121702 not showed)    | -2                   | 200               |
      | N-4272_MOB_LAST_LOGIN_DT not within last 180 days and  DIGITAL_ACTVTN_F = NULL Creative 4272121701 or 4272121702 not showed) | -3                   | 210               |
      | N-4272_MOB_LAST_LOGIN_DT within last 180 days and  DIGITAL_ACTVTN_F = N Creative 4272121701 or 4272121702 not showed)        | -2                   | 120               |
      | N-4272_MOB_LAST_LOGIN_DT within last 180 days and  DIGITAL_ACTVTN_F = NULL Creative 4272121701 or 4272121702 not showed)     | -1                   | 110               |

  @ChannelAdoptionEngagementPromoteMobileDeposit @ChannelAdoptionEngagementPromoteMobileDeposit_Negative_TestData @Workstream-4 @4272 @RDCEMAIL @RS18016
  Scenario Outline: Channel Adoption Engagement Promote Mobile Deposit_RS18016_4272_EMAIL Create test data for negative test cases
    Given load data from "RDC" excel sheet
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
    And write "<CURR_VAL_UPDT_TMSTMP>" into "CUST_INSIGHTS" sheet for "<Test cases>"
    When read customer details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table
    Examples:
      | Test cases                                                                                               | CURR_VAL_UPDT_TMSTMP |
      | N-4272_PRIM_CNTRY_CD!=CA                                                                                 | -1                   |
      | N-4272_PRIM_CNTRY_CD=Null                                                                                | -1                   |
      | N-4272_CUST_TP_CD != PSNL                                                                                | -2                   |
      | N-4272_CUST_TP_CD =  Null                                                                                | -2                   |
      | N-4272_DO_NOT_SOLICIT_F = Y                                                                              | -3                   |
      | N-4272_CUST.AGE_Dt less than 18                                                                          | -3                   |
      | N-4272_CUST.AGE is NULL                                                                                  | -3                   |
      | N-4272_Deceased_F = Y                                                                                    | -3                   |
      | N-4272_Deceased_F=NULL                                                                                   | -3                   |
      | N-4272_Prv_Bnk_Ind=Y                                                                                     | -2                   |
      | N_4272_Prv_Bnk_Ind=NULL                                                                                  | 0                    |
      | N-4272_CC_VIP_IND should be 2                                                                            | -1                   |
      | N-4272_CC_VIP_IND should be 9                                                                            | -2                   |
      | N-4272_MRKTBLE_F=N                                                                                       | -3                   |
      | N-4272_MRKTBLE_F=NULL                                                                                    | -1                   |
      | N-4272_INSIGHT_CD != FLG_RDC                                                                             | -2                   |
      | N-4272_CURR_VAL != 1                                                                                     | -3                   |
      | N-4272_CURR_VAL is NULL                                                                                  | -1                   |
      | N-4272_PRIM_EMAIL_ADDR = Null                                                                            | 0                    |
      | N-4272_INDV_FRST_NM =  Null                                                                              | -1                   |
      | N-4272_INDV_LAST_NM = Null                                                                               | -2                   |
      | N-4272_Do not Email Flag-Y                                                                               | -3                   |
      | N_4272_Do not Email Flag=NULL                                                                            | -1                   |
      | N-4272_VLD_EMAIL_F -N                                                                                    | -2                   |
      | N-4272_VLD_EMAIL_F -Null                                                                                 | -3                   |
      | N-4272_LANG_CD = K                                                                                       | -1                   |
      | N-4272_LANG_CD = NE                                                                                      | -2                   |
      | N_4272_LANG_CD=Null                                                                                      | -3                   |
      | N-4272_MOB_LAST_LOGIN_DT is NULL and  DIGITAL_ACTVTN_F = Y Creative 4272121701 or 4272121702 not showed) | 0                    |
      | N-4272_CURR_VAL_UPDT_TMSTMP Greater than 10 days                                                         | -4                   |
      | N-4272_CURR_VAL Equal to 0                                                                               | 0                    |
      | N-4272_CURR_VAL Equal to 2                                                                               | -1                   |


  @ChannelAdoptionEngagementPromoteMobileDeposit @ChannelAdoptionEngagementPromoteMobileDeposit_Positive_Dual_TestData @Workstream-4 @4272 @RDCEMAIL @RS18016
  Scenario Outline: Channel Adoption Engagement Promote Mobile Deposit_RS18016_4272_EMAIL Create dual accounts test data for positive test cases
    Given load data from "RDC" excel sheet
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
    When write cid into "CUST_INSIGHTS" sheet for "<Test cases>"  having "2" accounts
    And write "<CURR_VAL_UPDT_TMSTMP>" into "CUST_INSIGHTS" sheet for "<Test cases>"
    And write "<CURR_VAL_UPDT_TMSTMP_Dual_Account>" for dual accounts into "CUST_INSIGHTS" sheet for "<Test cases>"
    Then insert customer details in "CUST_INSIGHTS" table having "2" accounts
    Examples:
      | Test cases                                                                | CURR_VAL_UPDT_TMSTMP | CURR_VAL_UPDT_TMSTMP_Dual_Account |
      | 4272_CURR_VAL_UPDT_TMSTMP below 10 days and greater than 10 days          | -3                   | -4                                |
      | 4272_CURR_VAL_UPDT_TMSTMP below 10 days and equal to 10 days              | -2                   | -3                                |
      | 4272_CURR_VAL_UPDT_TMSTMP below 10 days and below 10 days                 | -1                   | -2                                |
      | 4272_CURR_VAL Equal to 0  and CURR_VAL Equal to 1                         | -3                   | -2                                |
      | 4272_CURR_VAL Equal to 2  and CURR_VAL Equal to 1                         | -2                   | -1                                |
      | N-4272_CURR_VAL_UPDT_TMSTMP greater than 10 days and greater than 10 days | -4                   | -5                                |
      | N-4272_CURR_VAL Equal to 2  and CURR_VAL Equal to -1                      | -1                   | -3                                |
