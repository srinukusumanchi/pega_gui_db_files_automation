Feature: Validation for Cross Sell SBAP - 4894


#  Name:	D2D Early Engagement – Cross-Sell
#  Code:	RS19067
#  Data Specs:	https://confluence.agile.bns/display/CIMCAMP/Customer+Interaction+Ecosystem+-+Workstream+4
#  Ultimate (store  Cell Group 1 on IH)




  @CrossSell_Email_4894_4894111901_SingleAcc_PositiveTCs_IH_Validation
  Scenario Outline: CASL Flag Change Cross sell SBAP 4894_RS19067_EMAIL Validate offer details against IH for Positive test cases
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
#      | 4894_NTP_CUST_OPND_DT >120                                                 |
#      | 4894_NTP_CASL_CONSENT_F = Y                                                |
#      | 4894_NTP_HARDBOUNCE_EMAIL_F !=Y                                            |
#      | 4894_NTP_UNSUBSCRIBED_F !=Y                                                |
#      | 4894_NTB_CUST_OPND_DT < 120                                                |
#      | 4894_NTB_CUST_OPND_DT = 120                                                |
#      | 4894_NTB_CASL_CONSENT_F = Y                                                |
#      | 4894_NTB_CASL_CONSENT_F = N                                                |
#      | 4894_NTB_UNSUBSCRIBED_F !=Y                                                |
#      | 4894_NTB_HARDBOUNCE_EMAIL_F !=Y                                            |
#      | 4894_NTC Creative_NTP_CUST_OPND_DT >120                                    |
#      | 4894_NTC Creative_NTP_CASL_CONSENT_F = Y                                   |
#      | 4894_NTC Creative_NTP_HARDBOUNCE_EMAIL_F !=Y                               |
#      | 4894_NTC Creative_NTP_UNSUBSCRIBED_F !=Y                                   |
#      | 4894_NTC Creative_NTB_CUST_OPND_DT < 120                                   |
#      | 4894_NTC Creative_NTB_CUST_OPND_DT = 120                                   |
#      | 4894_NTC Creative_NTB_CASL_CONSENT_F = Y                                   |
#      | 4894_NTC Creative_NTB_CASL_CONSENT_F = N                                   |
#      | 4894_NTC Creative_NTB_UNSUBSCRIBED_F !=Y                                   |
#      | 4894_NTC Creative_NTB_HARDBOUNCE_EMAIL_F !=Y                               |
## Added by Sujoy on 2022-03-26
#      | 4894_NTP_UNSUBSCRIBED_F =NULL                                                |
#      | 4894_NTP_HARDBOUNCE_EMAIL_F =NULL                                            |
#      | 4894_NTB_UNSUBSCRIBED_F =NULL                                                |
#      | 4894_NTB_HARDBOUNCE_EMAIL_F =NULL                                            |
#      | 4894_NTC Creative_NTP_UNSUBSCRIBED_F =NULL                                   |
#      | 4894_NTC Creative_NTP_HARDBOUNCE_EMAIL_F =NULL                               |
#      | 4894_NTC Creative_NTB_UNSUBSCRIBED_F =NULL                                   |
#      | 4894_NTC Creative_NTB_HARDBOUNCE_EMAIL_F =NULL                               |



      # OLD
#      | 4894_ISSUE = CrossSell and Group = Investment                              |
#      | 4894_DO_NOT_SOLICIT_F= Null                                                |
#      | 4894_INDV_BRTH_DT_Equal to 18                                              |
#      | 4894_LANG_CD=E                                                             |
#      | 4894_LANG_CD=EN                                                            |
#      | 4894_LANG_CD=F                                                             |
#      | 4894_LANG_CD=FR                                                            |
#      | 4894_LANG_CD_LowerCase=e                                                   |
#      | 4894_LANG_CD_LowerCase=en                                                  |
#      | 4894_LANG_CD_LowerCase=f                                                   |
#      | 4894_LANG_CD_LowerCase=fr                                                  |
#      | 4894_PRD CD- 07, SUB PRD CD -11                                            |
#      | 4894_PRD CD- 07, SUB PRD CD -12                                            |
#      | 4894_Account Open Date equal to 28 days                                    |
#      | 4894_Account Open Date equal to 33 days                                    |
#      | 4894_MPSA_Prod_CD_BBB_SBAPAcc_0711_4894111901                              |
#      | 4894_MPSA_SubSysId_AB_SBAPAcc_0711_4894111901                              |
#      | 4894_MPSA_Status_InActive_SBAPAcc_0711_4894111901                          |
#      | 4894_MPSA_Prod_CD_BBB_SBAPAcc_0712_4894111901                              |
#      | 4894_MPSA_SubSysId_AB_SBAPAcc_0712_4894111901                              |
#      | 4894_MPSA_Status_InActive_SBAPAcc_0712_4894111901                          |
#      | 4894_NTC_MCB=Y_Arrival Date within 3 years_PRD CD=07_SUB PRD CD=11         |
#      | 4894_N-NTC_MCB=N_Arrival Date within 3 years_PRD CD=07_SUB PRD CD=11       |
#      | 4894_N-NTC_MCB=Y_Arrival Date greater than 3 years_PRD CD=07_SUB PRD CD=12 |
#      | 4894_NTC_MCB=Y_Arrival Date within 3 years_PRD CD=07_SUB PRD CD=12         |
#      | N-4894_ARRV_DT = 3 years                                                   |
#      | N-4894_MCB_IND = NULL                                                      |
##      | N-4894_Account>1                                                           |
##      | N-4894_MultipleAccounts_Active_Non-Active                                  |
#      | 4894_NTP_CUST_OPND_DT >120                                                 |
#      | 4894_NTP_CASL_CONSENT_F = Y                                                |
#      | 4894_NTP_HARDBOUNCE_EMAIL_F !=Y                                            |
#      | 4894_NTP_UNSUBSCRIBED_F !=Y                                                |
#      | 4894_NTB_CUST_OPND_DT < 120                                                |
#      | 4894_NTB_CUST_OPND_DT = 120                                                |
#      | 4894_NTB_CASL_CONSENT_F = Y                                                |
#      | 4894_NTB_CASL_CONSENT_F = N                                                |
#      | 4894_NTB_UNSUBSCRIBED_F !=Y                                                |
#      | 4894_NTB_HARDBOUNCE_EMAIL_F !=Y                                            |
#      | 4894_NTC Creative_NTP_CUST_OPND_DT >120                                    |
#      | 4894_NTC Creative_NTP_CASL_CONSENT_F = Y                                   |
#      | 4894_NTC Creative_NTP_HARDBOUNCE_EMAIL_F !=Y                               |
#      | 4894_NTC Creative_NTP_UNSUBSCRIBED_F !=Y                                   |
#      | 4894_NTC Creative_NTB_CUST_OPND_DT < 120                                   |
#      | 4894_NTC Creative_NTB_CUST_OPND_DT = 120                                   |
#      | 4894_NTC Creative_NTB_CASL_CONSENT_F = Y                                   |
#      | 4894_NTC Creative_NTB_CASL_CONSENT_F = N                                   |
#      | 4894_NTC Creative_NTB_UNSUBSCRIBED_F !=Y                                   |
#      | 4894_NTC Creative_NTB_HARDBOUNCE_EMAIL_F !=Y                               |

#      | 4894_NTC Creative_ARRV_DT_eq_5years           |
      | 4894_NTC Creative_ARRV_DT_gt_5years |
#      | 4894_NTC Creative_ARRV_DT_eq_NULL             |


  @CrossSell_Email_4894_4894111901_SingleAcc_NegativeTCs_IH_Validation
  Scenario Outline: CASL Flag Change Cross sell SBAP 4894_RS19067_EMAIL Validate offer details are not displayed against IH for Negative test cases
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
      | N-4894_Do Not Email Flag=Y                     |
      | N-4894_INDV_FRST_NM = Null                     |
      | N-4894_INDV_LAST_NM = Null                     |
      | N-4894_VLD_EMAIL_F = N                         |
      | N-4894_PRIM_EMAIL_ADDR  = BLANK                |
      | N-4894_PRIM_EMAIL_ADDR  = NULL                 |
      | N_4894_NTP_CASL_CONSENT_F = N                  |
      | N_4894_NTP_HARDBOUNCE_EMAIL_F = Y              |
      | N_4894_NTP_UNSUBSCRIBED_F =Y                   |
      | N_4894_NTB_UNSUBSCRIBED_F =Y                   |
      | N_4894_NTB_HARDBOUNCE_EMAIL_F = Y              |
      | N_4894_NTB_CUST_OPND_DT > 120                  |
      | N_4894_CUST_OPND_DT = NULL                     |
      | N_4894_NTC Creative_NTP_CASL_CONSENT_F = N     |
      | N_4894_NTC Creative_NTP_HARDBOUNCE_EMAIL_F = Y |
      | N_4894_NTC Creative_NTP_UNSUBSCRIBED_F =Y      |
      | N_4894_NTC Creative_NTB_UNSUBSCRIBED_F =Y      |
      | N_4894_NTC Creative_NTB_HARDBOUNCE_EMAIL_F = Y |
      | N_4894_NTC Creative_NTB_CUST_OPND_DT > 120     |
      | N_4894_NTC Creative_CUST_OPND_DT = NULL        |
# Added by Sujoy on 2022-03-26
      | N-4894_Do Not Email Flag=NULL                  |
      | N-4894_VLD_EMAIL_F = NULL                      |


      # OLD
#      | N-4894_MPSA_Y_SBAPAcc_0711_4894111901          |
#      | N-4894_MPSA_Y_SBAPAcc_0712_4894111901          |
#      | N-4894_PRIM_CNTRY_CD!= CA                      |
#      | N-4894_PRIM_CNTRY_CD= Null                     |
#      | N-4894_CUST_TP_CD != PSNL                      |
#      | N-4894_CUST_TP_CD =  Null                      |
#      | N-4894_DO_NOT_SOLICIT_F= Y                     |
#      | N-4894_Indv_Brth_Dt Equal to 17                |
#      | N-4894_Indv_Brth_Dt Equal to Null              |
#      | N-4894_Indv_Brth_Dt with in range (1-16)       |
#      | N-4894_PRD CD- 01, SUB PRD CD -08              |
#      | N-4894_PRD CD-02, SUB PRD CD -04               |
#      | N-4894_PRD CD- 07, SUB PRD CD -08              |
#      | N-4894_PRD CD-13, SUB PRD CD -12               |
#      | N-4894_PRD CD- 18, SUB PRD CD -02              |
#      | N-4894_PRD CD-19, SUB PRD CD -11               |
#      | N-4894_PRD CD-23, SUB PRD CD -02               |
#      | N-4894_SRC_ACCT_STAT_CD- B                     |
#      | N-4894_SRC_ACCT_STAT_CD-Null                   |
#      | N-4894_Account Open Date greater than 33 days  |
#      | N-4894_Account Open Date equal to Null         |
#      | N-4894_Account Open Date less than 28          |
#      | N-4894_Account Open Date equals to 27          |
#      | N-4894_Account Open Date equals to 34          |
#      | N-4894_Deceased_F= Y                           |
#      | N-4894_Deceased_F= Null                        |
#      | N-4894_LANG_CD= K                              |
#      | N-4894_LANG_CD= NE                             |
#      | N-4894_LANG_CD= Null                           |
#      | N-4894_EMPLOYEE_STAFF_F= Y                     |
#      | N-4894_ACCT_SUBSYS_ID_KS                       |
#      | N-4894_Prv_Bnk_Ind= Null                       |
#      | N-4894_Prv_Bnk_Ind= Y                          |
#      | N-4894_MRKTBLE_F = N                           |
#      | N-4894_MRKTBLE_F = NULL                        |
#      | N-4894_Do Not Email Flag=Y                     |
#      | N-4894_INDV_FRST_NM = Null                     |
#      | N-4894_INDV_LAST_NM = Null                     |
#      | N-4894_VLD_EMAIL_F = N                         |
#      | N-4894_PRIM_EMAIL_ADDR  = BLANK                |
#      | N-4894_PRIM_EMAIL_ADDR  = NULL                 |
#      | N-4894_Primary_Acct_Holder_Flag = N            |
#      | N_4894_NTP_CASL_CONSENT_F = N                  |
#      | N_4894_NTP_CASL_CONSENT_F = NULL               |
#      | N_4894_NTP_HARDBOUNCE_EMAIL_F = Y              |
#      | N_4894_NTP_UNSUBSCRIBED_F =Y                   |
#      | N_4894_NTB_UNSUBSCRIBED_F =Y                   |
#      | N_4894_NTB_HARDBOUNCE_EMAIL_F = Y              |
#      | N_4894_NTB_CUST_OPND_DT > 120                  |
#      | N_4894_CUST_OPND_DT = NULL                     |
#      | N_4894_NTC Creative_NTP_CASL_CONSENT_F = N     |
#      | N_4894_NTC Creative_NTP_CASL_CONSENT_F = NULL  |
#      | N_4894_NTC Creative_NTP_HARDBOUNCE_EMAIL_F = Y |
#      | N_4894_NTC Creative_NTP_UNSUBSCRIBED_F =Y      |
#      | N_4894_NTC Creative_NTB_UNSUBSCRIBED_F =Y      |
#      | N_4894_NTC Creative_NTB_HARDBOUNCE_EMAIL_F = Y |
#      | N_4894_NTC Creative_NTB_CUST_OPND_DT > 120     |
#      | N_4894_NTC Creative_CUST_OPND_DT = NULL        |




# July 20th 2023 Release  - External Table Exclusion
# Positive Scenarios
  @CrossSell_Email_4894_External_Table_Exclusion_Positive_TCs_IH_Validation
  Scenario Outline: Cross sell Ultimate 4894_RS19067_EMAIL Validate offer details against IH for External Table Exclusion Positive test cases
    Given load data from "D2DCrossSellLatest" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then validate offer details against IH
    Examples:
      | Test cases                                                       |
      | 4894_EML_Seg_01_Trig_02_ExtTable_CAMPAIGN_CELL_CODE_FLAG_ne_N    |
      | 4894_EML_Seg_01_Trig_02_ExtTable_CAMPAIGN_CELL_CODE_FLAG_eq_NULL |
      | 4894_EML_Seg_01_Trig_02_ExtTable_VALID_END_DATE_lt_Curr_Dt       |
      | 4894_EML_Seg_01_Trig_02_ExtTable_VALID_START_DATE_gt_Curr_Dt     |


# Negative Scenarios
  @CrossSell_Email_4894_External_Table_Exclusion_Negative_TCs_IH_Validation
  Scenario Outline: Cross sell Ultimate 4894_RS19067_EMAIL Validate offer details against IH for External Table Exclusion Negative test cases
    Given load data from "D2DCrossSellLatest" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then verify offer should not display
    Examples:
      | Test cases                                                     |
      | N-4894_EML_Seg_01_Trig_02_ExtTable_VALID_END_DATE_gt_Curr_Dt   |
      | N-4894_EML_Seg_01_Trig_02_ExtTable_VALID_END_DATE_eq_Curr_Dt   |
      | N-4894_EML_Seg_01_Trig_02_ExtTable_VALID_START_DATE_lt_Curr_Dt |
      | N-4894_EML_Seg_01_Trig_02_ExtTable_VALID_START_DATE_eq_Curr_Dt |

