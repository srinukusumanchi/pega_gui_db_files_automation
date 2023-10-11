Feature: Validation for ChannelAdoptionEngagementPromoteMobileDeposit

  
#  As part of D2D Early Engagement Program, this welcome message will target new and existing customers
#  to introduce them to their new D2D account / Scotiabank.
#  It also include a test of the target population who are NEW TO BANK based on Customer relationship date within the last 7 days
  @ChannelAdoptionEngagementPromoteMobileDeposit @ChannelAdoptionEngagementPromoteMobileDeposit_Positive_Validation @Workstream-4 @4272 @EMAIL @RS18016
  Scenario Outline: ChannelAdoptionEngagementPromoteMobileDeposit_RS18016_4272_EMAIL Validate offer details against IH for Positive test cases
    Given load data from "RDC" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate RDC offer details against IH
    Examples:
      | Test cases                                                                                  |
      | 4272_DO_NOT_SOLICIT_F=N                                                                     |
      | 4272_DO_NOT_SOLICIT_F=NULL                                                                  |
      | 4272_CUST.AGE_Greater than 18                                                               |
      | 4272_CUST.AGE_Equal to 18                                                                   |
      | 4272_CUST.AGE != NULL                                                                       |
      | 4272_Deceased_F=N                                                                           |
      | 4272_LANG_CD=E                                                                              |
      | 4272_LANG_CD=EN                                                                             |
      | 4272_LANG_CD=F                                                                              |
      | 4272_LANG_CD=FR                                                                             |
      | 4272_LANG_CD small case =e                                                                  |
      | 4272_LANG_CD small case =en                                                                 |
      | 4272_LANG_CD small case =f                                                                  |
      | 4272_LANG_CD small case =fr                                                                 |
      | 4272_MOB_LAST_LOGIN_DT is NULL and  DIGITAL_ACTVTN_F = N - (Creative 4272121702)            |
      | 4272_MOB_LAST_LOGIN_DT is NULL and  DIGITAL_ACTVTN_F = NULL -(Creative 4272121702)          |
      | 4272_CC_VIP_IND = NULL                                                                      |
      | 4272_MOB_LAST_LOGIN_DT within last 180 days and  DIGITAL_ACTVTN_F = Y (Creative 4272121701) |
      | 4272_CURR_VAL_UPDT_TMSTMP below 10 days and greater than 10 days                            |
      | 4272_CURR_VAL_UPDT_TMSTMP below 10 days and equal to 10 days                                |
      | 4272_CURR_VAL_UPDT_TMSTMP below 10 days and below 10 days                                   |
      | 4272_CURR_VAL Equal to 0  and CURR_VAL Equal to 1                                           |
      | 4272_CURR_VAL Equal to 2  and CURR_VAL Equal to 1                                           |

  @ChannelAdoptionEngagementPromoteMobileDeposit @ChannelAdoptionEngagementPromoteMobileDeposit_Negative_Validation @Workstream-4 @4272 @EMAIL @RS18016
  Scenario Outline: ChannelAdoptionEngagementPromoteMobileDeposit_RS18016_4272_EMAIL Validate offer details against IH for Negative test cases
    Given load data from "RDC" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then verify offer should not display
    Examples:
      | Test cases                                                                                                                   |
      | N-4272_PRIM_CNTRY_CD!=CA                                                                                                     |
      | N-4272_PRIM_CNTRY_CD=Null                                                                                                    |
      | N-4272_CUST_TP_CD != PSNL                                                                                                    |
      | N-4272_CUST_TP_CD =  Null                                                                                                    |
      | N-4272_DO_NOT_SOLICIT_F = Y                                                                                                  |
      | N-4272_CUST.AGE_Dt less than 18                                                                                              |
      | N-4272_CUST.AGE is NULL                                                                                                      |
      | N-4272_Deceased_F = Y                                                                                                        |
      | N-4272_Deceased_F=NULL                                                                                                       |
      | N-4272_Prv_Bnk_Ind=Y                                                                                                         |
      | N_4272_Prv_Bnk_Ind=NULL                                                                                                      |
      | N-4272_CC_VIP_IND should be 2                                                                                                |
      | N-4272_CC_VIP_IND should be 9                                                                                                |
      | N-4272_MRKTBLE_F=N                                                                                                           |
      | N-4272_MRKTBLE_F=NULL                                                                                                        |
      | N-4272_INSIGHT_CD != FLG_RDC                                                                                                 |
      | N-4272_CURR_VAL != 1                                                                                                         |
      | N-4272_CURR_VAL is NULL                                                                                                      |
      | N-4272_PRIM_EMAIL_ADDR = Null                                                                                                |
      | N-4272_INDV_FRST_NM =  Null                                                                                                  |
      | N-4272_INDV_LAST_NM = Null                                                                                                   |
      | N-4272_Do not Email Flag-Y                                                                                                   |
      | N_4272_Do not Email Flag=NULL                                                                                                |
      | N-4272_VLD_EMAIL_F -N                                                                                                        |
      | N-4272_VLD_EMAIL_F -Null                                                                                                     |
      | N-4272_LANG_CD = K                                                                                                           |
      | N-4272_LANG_CD = NE                                                                                                          |
      | N_4272_LANG_CD=Null                                                                                                          |
      | N-4272_MOB_LAST_LOGIN_DT is NULL and  DIGITAL_ACTVTN_F = Y Creative 4272121701 or 4272121702 not showed)                     |
      | N-4272_CURR_VAL_UPDT_TMSTMP Greater than 10 days                                                                             |
      | N-4272_CURR_VAL Equal to 0                                                                                                   |
      | N-4272_CURR_VAL Equal to 2                                                                                                   |
      | N-4272_CURR_VAL_UPDT_TMSTMP greater than 10 days and greater than 10 days                                                    |
      | N-4272_CURR_VAL Equal to 2  and CURR_VAL Equal to -1                                                                         |
      | N-4272_MOB_LAST_LOGIN_DT not in last 180 days and DIGITAL_ACTVTN_F = Y Creative 4272121701 or 4272121702 not showed)         |
      | N-4272_MOB_LAST_LOGIN_DT not within last 180 days and  DIGITAL_ACTVTN_F = N Creative 4272121701 or 4272121702 not showed)    |
      | N-4272_MOB_LAST_LOGIN_DT not within last 180 days and  DIGITAL_ACTVTN_F = NULL Creative 4272121701 or 4272121702 not showed) |
      | N-4272_MOB_LAST_LOGIN_DT within last 180 days and  DIGITAL_ACTVTN_F = N Creative 4272121701 or 4272121702 not showed)        |
      | N-4272_MOB_LAST_LOGIN_DT within last 180 days and  DIGITAL_ACTVTN_F = NULL Creative 4272121701 or 4272121702 not showed)     |