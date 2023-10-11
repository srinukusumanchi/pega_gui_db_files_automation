Feature: Validation for Cross Sell BBP, BBA - 4894

  
#  Name:	D2D Early Engagement – Cross-Sell
#  Code:	RS19067
#  Data Specs:	https://confluence.agile.bns/display/CIMCAMP/Customer+Interaction+Ecosystem+-+Workstream+4
#  Ultimate (store  Cell Group 1 on IH)

#  SBAP (store  Cell Group 5 on IH)
#  Credit Card = N, AND	4894	                                     4894111901	Credit Card
#  Customer Relationship < 6 months, AND
#  Customer Age between 18 and 24


  @CrossSell @CrossSell_Positive_Validation @Workstream-4 @4894 @EMAIL @RS19067
  Scenario Outline: Cross sell SBAP 4894_RS19067_EMAIL Validate offer details against IH for Positive test cases
    Given load data from "D2DCrossSell" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate offer details against IH
    Examples:
      | Test cases                                                                                                           |
      | 4894_DO_NOT_SOLICIT_F=NULL                                                                                           |
      | 4894_INDV_BRTH_DT_Equal to 18                                                                                        |
      | 4894_LANG_CD=E                                                                                                       |
      | 4894_LANG_CD=EN                                                                                                      |
      | 4894_LANG_CD=F                                                                                                       |
      | 4894_LANG_CD=FR                                                                                                      |
      | 4894_LANG_CD_LowerCase=e                                                                                             |
      | 4894_LANG_CD_LowerCase=en                                                                                            |
      | 4894_LANG_CD_LowerCase=f                                                                                             |
      | 4894_LANG_CD_LowerCase=fr                                                                                            |
      | 4894_EMPLOYEE_STAFF_F=NULL                                                                                           |
      | 4894_Account Open Date equal to 28 days                                                                              |
      | 4894_Account Open Date equal to 33 days                                                                              |
      | 4894_BANKRUPTCY_DT-NULL                                                                                              |
      | 4894_4894111901_CreditCard-N And CUST_OPND_DT<6 months And CUST_AGE >18 < 24 And PRD CD-07, SUB PRD CD-11            |
      | 4894_4894111901_CreditCard-N And CUST_OPND_DT<6 months And CUST_AGE >18 < 24 And PRD CD-07, SUB PRD CD-12            |
      | 4894_4894111901_CreditCard-N And CUST_OPND_DT=6 month last Day  And  CUST_AGE >18 < 24  And PRD CD-07, SUB PRD CD-11 |
      | 4894_4894111901_CreditCard-N And CUST_OPND_DT=6 month last Day  And  CUST_AGE >18 < 24  And PRD CD-07, SUB PRD CD-12 |
      | 4894_4894111901_CreditCard-N And CUST_OPND_DT<6 months And CUST_AGE =18 And PRD CD-07, SUB PRD CD-11                 |
      | 4894_4894111901_CreditCard-N And CUST_OPND_DT<6 months And CUST_AGE=24 And PRD CD-07, SUB PRD CD-11                  |
      | 4894_4894111901_CreditCard-N And CUST_OPND_DT<6 months And CUST_AGE =18 And PRD CD-07, SUB PRD CD-12                 |
      | 4894_4894111901_CreditCard-N And CUST_OPND_DT<6 months And CUST_AGE=24 And PRD CD-07, SUB PRD CD-12                  |

  @CrossSell @CrossSell_Negative_Validation @4894 @Workstream-4 @EMAIL @RS19067
  Scenario Outline: Cross sell SBAP 4894_RS19067_EMAIL Validate offer details are not displayed against IH for Negative test cases
    Given load data from "D2DCrossSell" excel sheet
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
      | Test cases                                                                       |
      | N-4894_PRIM_CNTRY_CD!=CA Eg:- AC                                                 |
      | N-4894_PRIM_CNTRY_CD=Null                                                        |
      | N-4894_CUST_TP_CD != PSNL (Eg:- Non_PSNL)                                        |
      | N-4894_CUST_TP_CD = Null                                                         |
      | N-4894_DO_NOT_SOLICIT_F= Y                                                       |
      | N-4894_Indv_Brth_Dt Equal to 17                                                  |
      | N-4894_Indv_Brth_Dt Equal to Null                                                |
      | N-4894_Indv_Brth_Dt with in range (1-16)                                         |
      | N-4894_PRD CD- 01, SUB PRD CD -08                                                |
      | N-4894_PRD CD- 02, SUB PRD CD -04                                                |
      | N-4894_PRD CD- 07, SUB PRD CD -08                                                |
      | N-4894_PRD CD- 13, SUB PRD CD -12                                                |
      | N-4894_PRD CD- 18, SUB PRD CD -02                                                |
      | N-4894_PRD CD- 19, SUB PRD CD -11                                                |
      | N-4894_PRD CD-23, SUB PRD CD -02                                                 |
      | N-4894_SRC_ACCT_STAT_CD-B                                                        |
      | N-4894_SRC_ACCT_STAT_CD-Null                                                     |
      | N-4894_Account Open Date greater than 33 days                                    |
      | N-4894_Account Open Date equal to Null                                           |
      | N-4894_Account Open Date less than 28                                            |
      | N-4894_Account Open Date equal to 27                                             |
      | N-4894_Account Open Date equal to 34                                             |
      | N-4894_Deceased_F=Y                                                              |
      | N-4894_Deceased_F=Null                                                           |
      | N-4894_LANG_CD=K                                                                 |
      | N-4894_LANG_CD=NE                                                                |
      | N-4894_LANG_CD=Null                                                              |
      | N-4894_EMPLOYEE_STAFF_F=Y                                                        |
      | N-4894_ACCT_SUBSYS_ID_KS                                                         |
      | N-4894_Prv_Bnk_Ind=Null                                                          |
      | N-4894_Prv_Bnk_Ind=Y                                                             |
      | N-4894_MRKTBLE_F = N                                                             |
      | N-4894_MRKTBLE_F = NULL                                                          |
      | N-4894_Do Not Email Flag=Y                                                       |
      | N-4894_INDV_FRST_NM != Null                                                      |
      | N-4894_INDV_LAST_NM != Null                                                      |
      | N-4894_VLD_EMAIL_F = N                                                           |
      | N-4894_PRIM_EMAIL_ADDR  = BLANK                                                  |
      | N-4894_PRIM_EMAIL_ADDR  = NULL                                                   |
      | N-4894_Primary_Acct_Holder_Flag = N                                              |
      | N-4894_4894111901_CC-N And CUST_OPND_DT> 6 months AND CUST_Age Between 18 and 24 |
      | N-4894_CreditCard-N And CUST_OPND_DT<6 months And CustomerAge <18                |
      | N-4894_CreditCard-N And CUST_OPND_DT<6 months And CustomerAge >24                |
