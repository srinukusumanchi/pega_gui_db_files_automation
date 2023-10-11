Feature: Validation for Cross Sell BBA_BBP - 4893


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


  @CrossSell_Email_4893_4893111901_SingleAcc_PositiveTCs_IH_Validation
  Scenario Outline: CASL Flag Change Cross sell Ultimate 4893_RS19067_EMAIL Validate offer details against IH for Positive test cases
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
    Then validate offer details against IH
    Examples:
      | Test cases                                       |
      | 4893_ISSUE = CrossSell and Group = Investment    |
      | 4893_DO_NOT_SOLICIT_F= Null                      |
      | 4893_INDV_BRTH_DT_Equal to 18                    |
      | 4893_LANG_CD=E                                   |
      | 4893_LANG_CD=EN                                  |
      | 4893_LANG_CD=F                                   |
      | 4893_LANG_CD=FR                                  |
      | 4893_LANG_CD_LowerCase=e                         |
      | 4893_LANG_CD_LowerCase=en                        |
      | 4893_LANG_CD_LowerCase=f                         |
      | 4893_LANG_CD_LowerCase=fr                        |
      | 4893_PRD CD- 01, SUB PRD CD -01                  |
      | 4893_PRD CD- 01, SUB PRD CD -02                  |
      | 4893_PRD CD- 01, SUB PRD CD -03                  |
      | 4893_PRD CD- 01, SUB PRD CD -04                  |
      | 4893_PRD CD- 02, SUB PRD CD -01                  |
      | 4893_PRD CD- 02, SUB PRD CD -02                  |
      | 4893_PRD CD- 02, SUB PRD CD -03                  |
      | 4893_PRD CD- 19, SUB PRD CD -01                  |
      | 4893_PRD CD- 19, SUB PRD CD -02                  |
      | 4893_PRD CD- 19, SUB PRD CD -03                  |
      | 4893_PRD CD- 19, SUB PRD CD -04                  |
      | 4893_PRD CD- 19, SUB PRD CD -07                  |
      | 4893_PRD CD- 19, SUB PRD CD -08                  |
      | 4893_Account Open Date equal to 28 days          |
      | 4893_Account Open Date equal to 33 days          |
      | 4893_MPSA_Prod_CD_BBB_BBAAcc_0101_4893111901     |
      | 4893_MPSA_SubSysId_AB_BBAAcc_0101_4893111901     |
      | 4893_MPSA_Status_InActive_BBAAcc_0101_4893111901 |
      | 4893_MPSA_Prod_CD_BBB_BBAAcc_0102_4893111901     |
      | 4893_MPSA_SubSysId_AB_BBAAcc_0102_4893111901     |
      | 4893_MPSA_Status_InActive_BBAAcc_0102_4893111901 |
      | 4893_MPSA_Prod_CD_BBB_BBAAcc_0103_4893111901     |
      | 4893_MPSA_SubSysId_AB_BBAAcc_0103_4893111901     |
      | 4893_MPSA_Status_InActive_BBAAcc_0103_4893111901 |
      | 4893_MPSA_Prod_CD_BBB_BBAAcc_0104_4893111901     |
      | 4893_MPSA_SubSysId_AB_BBAAcc_0104_4893111901     |
      | 4893_MPSA_Status_InActive_BBAAcc_0104_4893111901 |
      | 4893_MPSA_Prod_CD_BBB_BBAAcc_0201_4893111901     |
      | 4893_MPSA_SubSysId_AB_BBAAcc_0201_4893111901     |
      | 4893_MPSA_Status_InActive_BBAAcc_0201_4893111901 |
      | 4893_MPSA_Prod_CD_BBB_BBAAcc_0202_4893111901     |
      | 4893_MPSA_SubSysId_AB_BBAAcc_0202_4893111901     |
      | 4893_MPSA_Status_InActive_BBAAcc_0202_4893111901 |
      | 4893_MPSA_Prod_CD_BBB_BBAAcc_0203_4893111901     |
      | 4893_MPSA_SubSysId_AB_BBAAcc_0203_4893111901     |
      | 4893_MPSA_Status_InActive_BBAAcc_0203_4893111901 |
      | 4893_MPSA_Prod_CD_BBB_BBPAcc_1901_4893111901     |
      | 4893_MPSA_SubSysId_AB_BBPAcc_1901_4893111901     |
      | 4893_MPSA_Status_InActive_BBPAcc_1901_4893111901 |
      | 4893_MPSA_Prod_CD_BBB_BBPAcc_1902_4893111901     |
      | 4893_MPSA_SubSysId_AB_BBPAcc_1902_4893111901     |
      | 4893_MPSA_Status_InActive_BBPAcc_1902_4893111901 |
      | 4893_MPSA_Prod_CD_BBB_BBPAcc_1903_4893111901     |
      | 4893_MPSA_SubSysId_AB_BBPAcc_1903_4893111901     |
      | 4893_MPSA_Status_InActive_BBPAcc_1903_4893111901 |
      | 4893_MPSA_Prod_CD_BBB_BBPAcc_1904_4893111901     |
      | 4893_MPSA_SubSysId_AB_BBPAcc_1904_4893111901     |
      | 4893_MPSA_Status_InActive_BBPAcc_1904_4893111901 |
      | 4893_MPSA_Prod_CD_BBB_BBPAcc_1907_4893111901     |
      | 4893_MPSA_SubSysId_AB_BBPAcc_1907_4893111901     |
      | 4893_MPSA_Status_InActive_BBPAcc_1907_4893111901 |
      | 4893_MPSA_Prod_CD_BBB_BBPAcc_1908_4893111901     |
      | 4893_MPSA_SubSysId_AB_BBPAcc_1908_4893111901     |
      | 4893_MPSA_Status_InActive_BBPAcc_1908_4893111901 |
      | 4893_NTC_MCB=Y_Arrival Date within 3 years       |
      | 4893_NTC_BBP_MCB=Y_Arrival Date within 3 years   |
      | 4893_NTP_CUST_OPND_DT >120                       |
      | 4893_NTP_CASL_CONSENT_F = Y                      |
      | 4893_NTP_HARDBOUNCE_EMAIL_F !=Y                  |
      | 4893_NTP_UNSUBSCRIBED_F !=Y                      |
      | 4893_NTB_CUST_OPND_DT < 120                      |
      | 4893_NTB_CUST_OPND_DT = 120                      |
      | 4893_NTB_CASL_CONSENT_F = Y                      |
      | 4893_NTB_CASL_CONSENT_F = N                      |
      | 4893_NTB_UNSUBSCRIBED_F !=Y                      |
      | 4893_NTB_HARDBOUNCE_EMAIL_F !=Y                  |


  @CrossSell_Email_4893_4893111901_SingleAcc_NegativeTCs_IH_Validation
  Scenario Outline: CASL Flag Change Cross sell Ultimate 4893_RS19067_EMAIL Validate offer details are not displayed against IH for Negative test cases
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
      | Test cases                                    |
      | N-4893_MPSA_Y_BBAAcc_0101_4893111901          |
      | N-4893_MPSA_Y_BBAAcc_0102_4893111901          |
      | N-4893_MPSA_Y_BBAAcc_0103_4893111901          |
      | N-4893_MPSA_Y_BBAAcc_0104_4893111901          |
      | N-4893_MPSA_Y_BBAAcc_0201_4893111901          |
      | N-4893_MPSA_Y_BBAAcc_0202_4893111901          |
      | N-4893_MPSA_Y_BBAAcc_0203_4893111901          |
      | N-4893_MPSA_Y_BBPAcc_1901_4893111901          |
      | N-4893_MPSA_Y_BBPAcc_1902_4893111901          |
      | N-4893_MPSA_Y_BBPAcc_1903_4893111901          |
      | N-4893_MPSA_Y_BBPAcc_1904_4893111901          |
      | N-4893_MPSA_Y_BBPAcc_1907_4893111901          |
      | N-4893_MPSA_Y_BBPAcc_1908_4893111901          |
      | N-4893_PRIM_CNTRY_CD!= CA                     |
      | N-4893_PRIM_CNTRY_CD= Null                    |
      | N-4893_CUST_TP_CD != PSNL                     |
      | N-4893_CUST_TP_CD =  Null                     |
      | N-4893_DO_NOT_SOLICIT_F= Y                    |
      | N-4893_Indv_Brth_Dt Equal to 17               |
      | N-4893_Indv_Brth_Dt Equal to Null             |
      | N-4893_Indv_Brth_Dt with in range (1-16)      |
      | N-4893_PRD CD- 01, SUB PRD CD -08             |
      | N-4893_PRD CD-02, SUB PRD CD -04              |
      | N-4893_PRD CD- 07, SUB PRD CD -08             |
      | N-4893_PRD CD-13, SUB PRD CD -12              |
      | N-4893_PRD CD- 18, SUB PRD CD -02             |
      | N-4893_PRD CD-19, SUB PRD CD -11              |
      | N-4893_PRD CD-23, SUB PRD CD -02              |
      | N-4893_SRC_ACCT_STAT_CD- B                    |
      | N-4893_SRC_ACCT_STAT_CD-Null                  |
      | N-4893_Account Open Date greater than 33 days |
      | N-4893_Account Open Date equal to Null        |
      | N-4893_Account Open Date less than 28         |
      | N-4893_Account Open Date equals to 27         |
      | N-4893_Account Open Date equals to 34         |
      | N-4893_Deceased_F= Y                          |
      | N-4893_Deceased_F= Null                       |
      | N-4893_LANG_CD= K                             |
      | N-4893_LANG_CD= NE                            |
      | N-4893_LANG_CD= Null                          |
      | N-4893_EMPLOYEE_STAFF_F= Y                    |
      | N-4893_ACCT_SUBSYS_ID_KS                      |
      | N-4893_Prv_Bnk_Ind= Null                      |
      | N-4893_Prv_Bnk_Ind= Y                         |
      | N-4893_MRKTBLE_F = N                          |
      | N-4893_MRKTBLE_F = NULL                       |
      | N-4893_Do Not Email Flag=Y                    |
      | N-4893_INDV_FRST_NM = Null                    |
      | N-4893_INDV_LAST_NM = Null                    |
      | N-4893_VLD_EMAIL_F = N                        |
      | N-4893_PRIM_EMAIL_ADDR  = BLANK               |
      | N-4893_PRIM_EMAIL_ADDR  = NULL                |
      | N-4893_Primary_Acct_Holder_Flag = N           |
      | N_4893_NTP_CASL_CONSENT_F = N                 |
      | N_4893_NTP_HARDBOUNCE_EMAIL_F = Y             |
      | N_4893_NTP_UNSUBSCRIBED_F =Y                  |
      | N_4893_NTB_UNSUBSCRIBED_F =Y                  |
      | N_4893_NTB_HARDBOUNCE_EMAIL_F = Y             |
      | N_4893_NTB_CUST_OPND_DT > 120                 |
      | N_4893_CUST_OPND_DT = NULL                    |
# Added by Sujoy on 2022-03-26
      | N-4893_VLD_EMAIL_F = NULL                     |
      | N-4893_Do Not Email Flag=NULL                 |


#      | N-4893_MPSA_Y_BBAAcc_0101_4893111901          |
#      | N-4893_MPSA_Y_BBAAcc_0102_4893111901          |
#      | N-4893_MPSA_Y_BBAAcc_0103_4893111901          |
#      | N-4893_MPSA_Y_BBAAcc_0104_4893111901          |
#      | N-4893_MPSA_Y_BBAAcc_0201_4893111901          |
#      | N-4893_MPSA_Y_BBAAcc_0202_4893111901          |
#      | N-4893_MPSA_Y_BBAAcc_0203_4893111901          |
#      | N-4893_MPSA_Y_BBPAcc_1901_4893111901          |
#      | N-4893_MPSA_Y_BBPAcc_1902_4893111901          |
#      | N-4893_MPSA_Y_BBPAcc_1903_4893111901          |
#      | N-4893_MPSA_Y_BBPAcc_1904_4893111901          |
#      | N-4893_MPSA_Y_BBPAcc_1907_4893111901          |
#      | N-4893_MPSA_Y_BBPAcc_1908_4893111901          |
#      | N-4893_PRIM_CNTRY_CD!= CA                     |
#      | N-4893_PRIM_CNTRY_CD= Null                    |
#      | N-4893_CUST_TP_CD != PSNL                     |
#      | N-4893_CUST_TP_CD =  Null                     |
#      | N-4893_DO_NOT_SOLICIT_F= Y                    |
#      | N-4893_Indv_Brth_Dt Equal to 17               |
#      | N-4893_Indv_Brth_Dt Equal to Null             |
#      | N-4893_Indv_Brth_Dt with in range (1-16)      |
#      | N-4893_PRD CD- 01, SUB PRD CD -08             |
#      | N-4893_PRD CD-02, SUB PRD CD -04              |
#      | N-4893_PRD CD- 07, SUB PRD CD -08             |
#      | N-4893_PRD CD-13, SUB PRD CD -12              |
#      | N-4893_PRD CD- 18, SUB PRD CD -02             |
#      | N-4893_PRD CD-19, SUB PRD CD -11              |
#      | N-4893_PRD CD-23, SUB PRD CD -02              |
#      | N-4893_SRC_ACCT_STAT_CD- B                    |
#      | N-4893_SRC_ACCT_STAT_CD-Null                  |
#      | N-4893_Account Open Date greater than 33 days |
#      | N-4893_Account Open Date equal to Null        |
#      | N-4893_Account Open Date less than 28         |
#      | N-4893_Account Open Date equals to 27         |
#      | N-4893_Account Open Date equals to 34         |
#      | N-4893_Deceased_F= Y                          |
#      | N-4893_Deceased_F= Null                       |
#      | N-4893_LANG_CD= K                             |
#      | N-4893_LANG_CD= NE                            |
#      | N-4893_LANG_CD= Null                          |
#      | N-4893_EMPLOYEE_STAFF_F= Y                    |
#      | N-4893_ACCT_SUBSYS_ID_KS                      |
#      | N-4893_Prv_Bnk_Ind= Null                      |
#      | N-4893_Prv_Bnk_Ind= Y                         |
#      | N-4893_MRKTBLE_F = N                          |
#      | N-4893_MRKTBLE_F = NULL                       |
#      | N-4893_Do Not Email Flag=Y                    |
#      | N-4893_INDV_FRST_NM = Null                    |
#      | N-4893_INDV_LAST_NM = Null                    |
#      | N-4893_VLD_EMAIL_F = N                        |
#      | N-4893_PRIM_EMAIL_ADDR  = BLANK               |
#      | N-4893_PRIM_EMAIL_ADDR  = NULL                |
#      | N-4893_Primary_Acct_Holder_Flag = N           |
#      | N_4893_NTP_CASL_CONSENT_F = N                 |
#      | N_4893_NTP_CASL_CONSENT_F = NULL              |
#      | N_4893_NTP_HARDBOUNCE_EMAIL_F = Y             |
#      | N_4893_NTP_UNSUBSCRIBED_F =Y                  |
#      | N_4893_NTB_UNSUBSCRIBED_F =Y                  |
#      | N_4893_NTB_HARDBOUNCE_EMAIL_F = Y             |
#      | N_4893_NTB_CUST_OPND_DT > 120                 |
#      | N_4893_CUST_OPND_DT = NULL                    |



# July 20th 2023 Release  - External Table Exclusion
# Positive Scenarios
  @CrossSell_Email_4893_External_Table_Exclusion_Positive_TCs_IH_Validation
  Scenario Outline: Cross sell Ultimate 4893_RS19067_EMAIL Validate offer details against IH for External Table Exclusion Positive test cases
    Given load data from "D2DCrossSellLatest" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then validate offer details against IH
    Examples:
      | Test cases                                                       |
      | 4893_EML_Seg_01_Trig_02_ExtTable_CAMPAIGN_CELL_CODE_FLAG_ne_N    |
      | 4893_EML_Seg_01_Trig_02_ExtTable_CAMPAIGN_CELL_CODE_FLAG_eq_NULL |
      | 4893_EML_Seg_01_Trig_02_ExtTable_VALID_END_DATE_lt_Curr_Dt       |
      | 4893_EML_Seg_01_Trig_02_ExtTable_VALID_START_DATE_gt_Curr_Dt     |

# Negative Scenarios
  @CrossSell_Email_4893_External_Table_Exclusion_Negative_TCs_IH_Validation
  Scenario Outline: Cross sell Ultimate 4893_RS19067_EMAIL Validate offer details against IH for External Table Exclusion Negative test cases
    Given load data from "D2DCrossSellLatest" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then verify offer should not display
    Examples:
      | Test cases                                                     |
      | N-4893_EML_Seg_01_Trig_02_ExtTable_VALID_END_DATE_gt_Curr_Dt   |
      | N-4893_EML_Seg_01_Trig_02_ExtTable_VALID_END_DATE_eq_Curr_Dt   |
      | N-4893_EML_Seg_01_Trig_02_ExtTable_VALID_START_DATE_lt_Curr_Dt |
      | N-4893_EML_Seg_01_Trig_02_ExtTable_VALID_START_DATE_eq_Curr_Dt |
