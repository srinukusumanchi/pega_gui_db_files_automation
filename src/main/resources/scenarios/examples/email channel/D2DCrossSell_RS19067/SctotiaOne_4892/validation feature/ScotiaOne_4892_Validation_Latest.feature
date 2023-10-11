Feature: Validation for Cross Sell ScotiaOne - 4892


#  Name:	D2D Early Engagement – Cross-Sell
#  Code:	RS19067
#  Data Specs:	https://confluence.agile.bns/display/CIMCAMP/Customer+Interaction+Ecosystem+-+Workstream+4
#  Ultimate (store  Cell Group 1 on IH)

#  Eligible Credit Card = N, AND	4891	                          4891111901	Credit Card + GIC/iTrade MPSA = N
#  Customer Relationship < 6 months, AND, MPSA +
#  Bankruptcy = null), AND
#
#  (Eligible Credit Card = N, AND		                              4891111902	Credit Card + GIC/iTrade
#  Customer Relationship < 6 months, AND,
#  Bankruptcy = null), AND MPSA = Y
#
#  [Eligible Credit Card = Y, OR		                              4891111903	MPSA + GIC/iTrade
#  (Eligible Credit Card = N, AND
#  Customer Relationship > 6 months)], AND MPSA = N
#
#  [Eligible Credit Card = Y, OR		                               4891111904	GIC/iTrade
#  (Eligible Credit Card = N, AND
#  Customer Relationship > 6 months)], AND MPSA = Y


  @CrossSell_Email_4892_4892111901_SingleAcc_PositiveTCs_IH_Validation
  Scenario Outline: CASL Flag Change Cross sell Ultimate 4892_RS19067_EMAIL Validate offer details against IH for Positive test cases
    Given load data from "D2DCrossSellLatest" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
#    And the user navigates to pega url
#    When the user enters user name, password and click on login in pega Login screen
#    And click on interaction History by customer link
#    And click on actions and run in interactions history By customer screen
#    When click on period link and clear today value
#    And enter customer id in ih by customer screen and get IH table data
    Then validate offer details against IH
    Examples:
      | Test cases                          |
#      | 4892_NTP_CUST_OPND_DT >120                                                  |
#      | 4892_NTP_CASL_CONSENT_F = Y                                                 |
#      | 4892_NTP_HARDBOUNCE_EMAIL_F !=Y                                             |
#      | 4892_NTP_UNSUBSCRIBED_F !=Y                                                 |
#      | 4892_NTB_CUST_OPND_DT < 120                                                 |
#      | 4892_NTB_CUST_OPND_DT = 120                                                 |
#      | 4892_NTB_CASL_CONSENT_F = Y                                                 |
#      | 4892_NTB_CASL_CONSENT_F = N                                                 |
#      | 4892_NTB_UNSUBSCRIBED_F !=Y                                                 |
#      | 4892_NTB_HARDBOUNCE_EMAIL_F !=Y                                             |
#      | 4892_NTC Creative_NTP_CUST_OPND_DT >120                                     |
#      | 4892_NTC Creative_NTP_CASL_CONSENT_F = Y                                    |
#      | 4892_NTC Creative_NTP_HARDBOUNCE_EMAIL_F !=Y                                |
#      | 4892_NTC Creative_NTP_UNSUBSCRIBED_F !=Y                                    |
#      | 4892_NTC Creative_NTB_CUST_OPND_DT < 120                                    |
#      | 4892_NTC Creative_NTB_CUST_OPND_DT = 120                                    |
#      | 4892_NTC Creative_NTB_CASL_CONSENT_F = Y                                    |
#      | 4892_NTC Creative_NTB_CASL_CONSENT_F = N                                    |
#      | 4892_NTC Creative_NTB_UNSUBSCRIBED_F !=Y                                    |
#      | 4892_NTC Creative_NTB_HARDBOUNCE_EMAIL_F !=Y                                |
## Added by Sujoy on 2022-03-26
#      | 4892_NTP_UNSUBSCRIBED_F =NULL                                               |
#      | 4892_NTP_HARDBOUNCE_EMAIL_F =NULL                                           |
#      | 4892_NTB_UNSUBSCRIBED_F =NULL                                               |
#      | 4892_NTB_HARDBOUNCE_EMAIL_F =NULL                                           |
#      | 4892_NTC Creative_NTP_HARDBOUNCE_EMAIL_F =NULL                              |
#      | 4892_NTC Creative_NTP_UNSUBSCRIBED_F =NULL                                  |
#      | 4892_NTC Creative_NTB_UNSUBSCRIBED_F =NULL                                  |
#      | 4892_NTC Creative_NTB_HARDBOUNCE_EMAIL_F =NULL                              |


      # OLD
#      | 4892_ISSUE = CrossSell and Group = Investment                               |
#      | 4892_DO_NOT_SOLICIT_F= Null                                                 |
#      | 4892_INDV_BRTH_DT_Equal to 18                                               |
#      | 4892_LANG_CD=E                                                              |
#      | 4892_LANG_CD=EN                                                             |
#      | 4892_LANG_CD=F                                                              |
#      | 4892_LANG_CD=FR                                                             |
#      | 4892_LANG_CD_LowerCase=e                                                    |
#      | 4892_LANG_CD_LowerCase=en                                                   |
#      | 4892_LANG_CD_LowerCase=f                                                    |
#      | 4892_LANG_CD_LowerCase=fr                                                   |
#      | 4892_PRD CD- 13, SUB PRD CD -01                                             |
#      | 4892_PRD CD- 13, SUB PRD CD -03                                             |
#      | 4892_PRD CD- 13, SUB PRD CD -07                                             |
#      | 4892_PRD CD- 13, SUB PRD CD -08                                             |
#      | 4892_Account Open Date equal to 28 days                                     |
#      | 4892_Account Open Date equal to 33 days                                     |
#      | 4892_MPSA_Prod_CD_BBB_ScotiaOneAcc_1301_4892111901                          |
#      | 4892_MPSA_SubSysId_AB_ScotiaOneAcc_1301_4892111901                          |
#      | 4892_MPSA_Status_InActive_ScotiaOneAcc_1301_4892111901                      |
#      | 4892_MPSA_Prod_CD_BBB_ScotiaOneAcc_1303_4892111901                          |
#      | 4892_MPSA_SubSysId_AB_ScotiaOneAcc_1303_4892111901                          |
#      | 4892_MPSA_Status_InActive_ScotiaOneAcc_1303_4892111901                      |
#      | 4892_MPSA_Prod_CD_BBB_ScotiaOneAcc_1307_4892111901                          |
#      | 4892_MPSA_SubSysId_AB_ScotiaOneAcc_1307_4892111901                          |
#      | 4892_MPSA_Status_InActive_ScotiaOneAcc_1307_4892111901                      |
#      | 4892_MPSA_Prod_CD_BBB_ScotiaOneAcc_1308_4892111901                          |
#      | 4892_MPSA_SubSysId_AB_ScotiaOneAcc_1308_4892111901                          |
#      | 4892_MPSA_Status_InActive_ScotiaOneAcc_1308_4892111901                      |
#      | 4892_NTC_MCB=Y_Arrival Date within 3 years_PRD CD=13_SUB PRD CD=01          |
#      | 4892_N-NTC_MCB=N_Arrival Date within 3 years_PRD CD=13_SUB PRD CD=01        |
#      | 4892_N-NTC_MCB=N_Arrival Date greater than 3 years_PRD CD=13_SUB PRD CD=03  |
#      | 4892_NTC_MCB=Y_Arrival Date within 3 years_PRD CD=13_SUB PRD CD=03          |
#      | 4892_N-NTC_MCB=N_Arrival Date within 3 years_PRD CD=13_SUB PRD CD=07        |
#      | 4892_N-NTC_MCB=Y_Arrival Date  greater than 3 years_PRD CD=13_SUB PRD CD=07 |
#      | 4892_NTC_MCB=Y_Arrival Date within 3 years_PRD CD=13_SUB PRD CD=08          |
#      | 4892_N-NTC_MCB=N_Arrival Date within 3 years_PRD CD=13_SUB PRD CD=08        |
#      | N-4892_ARRV_DT = 3 years                                                    |
#      | N-4892_MCB_IND = NULL                                                       |
#      | N-4892_Account>1                                                            |
#      | N-4892_MultipleAccounts_Active_Non-Active                                   |
#      | 4892_NTP_CUST_OPND_DT >120                                                  |
#      | 4892_NTP_CASL_CONSENT_F = Y                                                 |
#      | 4892_NTP_HARDBOUNCE_EMAIL_F !=Y                                             |
#      | 4892_NTP_UNSUBSCRIBED_F !=Y                                                 |
#      | 4892_NTB_CUST_OPND_DT < 120                                                 |
#      | 4892_NTB_CUST_OPND_DT = 120                                                 |
#      | 4892_NTB_CASL_CONSENT_F = Y                                                 |
#      | 4892_NTB_CASL_CONSENT_F = N                                                 |
#      | 4892_NTB_UNSUBSCRIBED_F !=Y                                                 |
#      | 4892_NTB_HARDBOUNCE_EMAIL_F !=Y                                             |
#      | 4892_NTC Creative_NTP_CUST_OPND_DT >120                                     |
#      | 4892_NTC Creative_NTP_CASL_CONSENT_F = Y                                    |
#      | 4892_NTC Creative_NTP_HARDBOUNCE_EMAIL_F !=Y                                |
#      | 4892_NTC Creative_NTP_UNSUBSCRIBED_F !=Y                                    |
#      | 4892_NTC Creative_NTB_CUST_OPND_DT < 120                                    |
#      | 4892_NTC Creative_NTB_CUST_OPND_DT = 120                                    |
#      | 4892_NTC Creative_NTB_CASL_CONSENT_F = Y                                    |
#      | 4892_NTC Creative_NTB_CASL_CONSENT_F = N                                    |
#      | 4892_NTC Creative_NTB_UNSUBSCRIBED_F !=Y                                    |
#      | 4892_NTC Creative_NTB_HARDBOUNCE_EMAIL_F !=Y                                |

#      | 44892_NTC Creative_ARRV_DT_eq_5years           |
      | 4892_NTC Creative_ARRV_DT_gt_5years |
#      | 4892_NTC Creative_ARRV_DT_eq_NULL             |


  @CrossSell_Email_4892_4892111901_SingleAcc_NegativeTCs_IH_Validation
  Scenario Outline: CASL Flag Change Cross sell Ultimate 4892_RS19067_EMAIL Validate offer details are not displayed against IH for Negative test cases
    Given load data from "D2DCrossSellLatest" excel sheet
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
      | Test cases                                     |
      | N-4892_Do Not Email Flag=Y                     |
      | N-4892_INDV_FRST_NM = Null                     |
      | N-4892_INDV_LAST_NM = Null                     |
      | N-4892_VLD_EMAIL_F = N                         |
      | N-4892_PRIM_EMAIL_ADDR  = BLANK                |
      | N-4892_PRIM_EMAIL_ADDR  = NULL                 |
      | N_4892_NTP_CASL_CONSENT_F = N                  |
      | N_4892_NTP_HARDBOUNCE_EMAIL_F = Y              |
      | N_4892_NTP_UNSUBSCRIBED_F =Y                   |
      | N_4892_NTB_UNSUBSCRIBED_F =Y                   |
      | N_4892_NTB_HARDBOUNCE_EMAIL_F = Y              |
      | N_4892_NTB_CUST_OPND_DT > 120                  |
      | N_4892_CUST_OPND_DT = NULL                     |
      | N_4892_NTC Creative_NTP_CASL_CONSENT_F = N     |
      | N_4892_NTC Creative_NTP_HARDBOUNCE_EMAIL_F = Y |
      | N_4892_NTC Creative_NTP_UNSUBSCRIBED_F =Y      |
      | N_4892_NTC Creative_NTB_UNSUBSCRIBED_F =Y      |
      | N_4892_NTC Creative_NTB_HARDBOUNCE_EMAIL_F = Y |
      | N_4892_NTC Creative_NTB_CUST_OPND_DT > 120     |
      | N_4892_NTC Creative_CUST_OPND_DT = NULL        |
# Added by Sujoy on 2022-03-26
      | N-4892_VLD_EMAIL_F = NULL                      |
      | N-4892_Do Not Email Flag=NULL                  |


      # OLD
#      | N-4892_PRIM_CNTRY_CD!= CA                      |
#      | N-4892_PRIM_CNTRY_CD= Null                     |
#      | N-4892_CUST_TP_CD != PSNL                      |
#      | N-4892_CUST_TP_CD =  Null                      |
#      | N-4892_DO_NOT_SOLICIT_F= Y                     |
#      | N-4892_Indv_Brth_Dt Equal to 17                |
#      | N-4892_Indv_Brth_Dt Equal to Null              |
#      | N-4892_Indv_Brth_Dt with in range (1-16)       |
#      | N-4892_PRD CD- 01, SUB PRD CD -08              |
#      | N-4892_PRD CD-02, SUB PRD CD -04               |
#      | N-4892_PRD CD- 07, SUB PRD CD -08              |
#      | N-4892_PRD CD-13, SUB PRD CD -12               |
#      | N-4892_PRD CD- 18, SUB PRD CD -02              |
#      | N-4892_PRD CD-19, SUB PRD CD -11               |
#      | N-4892_PRD CD-23, SUB PRD CD -02               |
#      | N-4892_SRC_ACCT_STAT_CD- B                     |
#      | N-4892_SRC_ACCT_STAT_CD-Null                   |
#      | N-4892_Account Open Date greater than 33 days  |
#      | N-4892_Account Open Date equal to Null         |
#      | N-4892_Account Open Date less than 28          |
#      | N-4892_Account Open Date equals to 27          |
#      | N-4892_Account Open Date equals to 34          |
#      | N-4892_Deceased_F= Y                           |
#      | N-4892_Deceased_F= Null                        |
#      | N-4892_LANG_CD= K                              |
#      | N-4892_LANG_CD= NE                             |
#      | N-4892_LANG_CD= Null                           |
#      | N-4892_EMPLOYEE_STAFF_F= Y                     |
#      | N-4892_ACCT_SUBSYS_ID_KS                       |
#      | N-4892_Prv_Bnk_Ind= Null                       |
#      | N-4892_Prv_Bnk_Ind= Y                          |
#      | N-4892_MRKTBLE_F = N                           |
#      | N-4892_MRKTBLE_F = NULL                        |
#      | N-4892_Do Not Email Flag=Y                     |
#      | N-4892_INDV_FRST_NM = Null                     |
#      | N-4892_INDV_LAST_NM = Null                     |
#      | N-4892_VLD_EMAIL_F = N                         |
#      | N-4892_PRIM_EMAIL_ADDR  = BLANK                |
#      | N-4892_PRIM_EMAIL_ADDR  = NULL                 |
#      | N-4892_Primary_Acct_Holder_Flag = N            |
#      | N-4892_MPSA_Y_ScotiaOneAcc_1301_4892111901     |
#      | N-4892_MPSA_Y_ScotiaOneAcc_1303_4892111901     |
#      | N-4892_MPSA_Y_ScotiaOneAcc_1307_4892111901     |
#      | N-4892_MPSA_Y_ScotiaOneAcc_1308_4892111901     |
#      | N_4892_NTP_CASL_CONSENT_F = N                  |
#      | N_4892_NTP_CASL_CONSENT_F = NULL               |
#      | N_4892_NTP_HARDBOUNCE_EMAIL_F = Y              |
#      | N_4892_NTP_UNSUBSCRIBED_F =Y                   |
#      | N_4892_NTB_UNSUBSCRIBED_F =Y                   |
#      | N_4892_NTB_HARDBOUNCE_EMAIL_F = Y              |
#      | N_4892_NTB_CUST_OPND_DT > 120                  |
#      | N_4892_CUST_OPND_DT = NULL                     |
#      | N_4892_NTC Creative_NTP_CASL_CONSENT_F = N     |
#      | N_4892_NTC Creative_NTP_CASL_CONSENT_F = NULL  |
#      | N_4892_NTC Creative_NTP_HARDBOUNCE_EMAIL_F = Y |
#      | N_4892_NTC Creative_NTP_UNSUBSCRIBED_F =Y      |
#      | N_4892_NTC Creative_NTB_UNSUBSCRIBED_F =Y      |
#      | N_4892_NTC Creative_NTB_HARDBOUNCE_EMAIL_F = Y |
#      | N_4892_NTC Creative_NTB_CUST_OPND_DT > 120     |
#      | N_4892_NTC Creative_CUST_OPND_DT = NULL        |


# July 20th 2023 Release  - External Table Exclusion
# Positive Scenarios
  @CrossSell_Email_4892_External_Table_Exclusion_Positive_TCs_IH_Validation
  Scenario Outline: Cross sell Ultimate 4892_RS19067_EMAIL Validate offer details against IH for External Table Exclusion Positive test cases
    Given load data from "D2DCrossSellLatest" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then validate offer details against IH
    Examples:
      | Test cases                                                       |
      | 4892_EML_Seg_01_Trig_02_ExtTable_CAMPAIGN_CELL_CODE_FLAG_ne_N    |
      | 4892_EML_Seg_01_Trig_02_ExtTable_CAMPAIGN_CELL_CODE_FLAG_eq_NULL |
      | 4892_EML_Seg_01_Trig_02_ExtTable_VALID_END_DATE_lt_Curr_Dt       |
      | 4892_EML_Seg_01_Trig_02_ExtTable_VALID_START_DATE_gt_Curr_Dt     |


# Negative Scenarios:
  @CrossSell_Email_4892_External_Table_Exclusion_Negative_TCs_IH_Validation
  Scenario Outline: Cross sell Ultimate 4892_RS19067_EMAIL Validate offer details against IH for External Table Exclusion Negative test cases
    Given load data from "D2DCrossSellLatest" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then verify offer should not display
    Examples:
      | Test cases                                                     |
      | N-4892_EML_Seg_01_Trig_02_ExtTable_VALID_END_DATE_gt_Curr_Dt   |
      | N-4892_EML_Seg_01_Trig_02_ExtTable_VALID_END_DATE_eq_Curr_Dt   |
      | N-4892_EML_Seg_01_Trig_02_ExtTable_VALID_START_DATE_lt_Curr_Dt |
      | N-4892_EML_Seg_01_Trig_02_ExtTable_VALID_START_DATE_eq_Curr_Dt |
