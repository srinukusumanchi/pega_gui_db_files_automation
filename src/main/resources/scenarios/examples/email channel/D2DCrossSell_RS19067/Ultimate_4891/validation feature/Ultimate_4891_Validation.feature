Feature: Validation for Cross Sell Ultimate - 4891

  
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


  @CrossSell @CrossSell_Positive_Validation @Workstream-4 @4891 @EMAIL @RS19067
  Scenario Outline: Cross sell Ultimate 4891_RS19067_EMAIL Validate offer details against IH for Positive test cases
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
      | Test cases                                                                                          |
      | 4891_ISSUE = CrossSell and Group = Bundles                                                          |
      | 4891_CUST_TP_CD=PSNL                                                                                |
      | 4891_PRIM_CNTRY_CD= CA                                                                              |
      | 4891_DO_NOT_SOLICIT_F=N                                                                             |
      | 4891_DO_NOT_SOLICIT_F= Null                                                                         |
      | 4891_INDV_BRTH_DT_Greater than 18                                                                   |
      | 4891_INDV_BRTH_DT_Equal to 18                                                                       |
      | 4891_Deceased_F=N                                                                                   |
      | 4891_LANG_CD=E                                                                                      |
      | 4891_LANG_CD=EN                                                                                     |
      | 4891_LANG_CD=F                                                                                      |
      | 4891_LANG_CD=FR                                                                                     |
      | 4891_LANG_CD_LowerCase=e                                                                            |
      | 4891_LANG_CD_LowerCase=en                                                                           |
      | 4891_LANG_CD_LowerCase=f                                                                            |
      | 4891_LANG_CD_LowerCase=fr                                                                           |
      | 4891_Prv_Bnk_Ind=N                                                                                  |
      | 4891_EMPLOYEE_STAFF_F=N                                                                             |
      | 4891_EMPLOYEE_STAFF_F=NULL                                                                          |
      | 4891_MRKTBLE_F=Y                                                                                    |
      | 4891_Do Not Email Flag=N                                                                            |
      | 4891_SRC_ACCT_STAT_CD-A                                                                             |
      | 4891_ACCT_SUBSYS_ID_BB                                                                              |
      | 4891_PRD CD- 23, SUB PRD CD -01                                                                     |
      | 4891_PRD CD- 23, SUB PRD CD -03                                                                     |
      | 4891_Account Open Date equal to 28 days                                                             |
      | 4891_Account Open Date equal to 33 days                                                             |
      | 4891_Account Open Date >= 28 and <=33 days                                                          |
      | 4891_BANKRUPTCY_DT-NULL                                                                             |
      | 4891_CC-N And CUST_OPND_DT<6months And MPSA-N_UltimateAcc_2301_4891111901                           |
      | 4891_CC-N And CUST_OPND_DT>6months And MPSA-N_UltimateAcc_2301_4891111903                           |
      | 4891_CC-N And CUST_OPND_DT<6months And MPSA-N_UltimateAcc_2303_4891111901                           |
      | 4891_CC-N And CUST_OPND_DT=6th month Last Day And MPSA-N_UltimateAcc_2301_4891111901                |
      | 4891_CC-N And CUST_OPND_DT=6th month Last Day And MPSA-N_UltimateAcc_2303_4891111901                |
      | 4891_CC-N And CUST_OPND_DT>6months And MPSA-N_UltimateAcc_2303_4891111903                           |
      | N-4891_4891111901_CC-N And CUST_OPND_DT>6months And MPSA-N_UltimateAcc                              |
      | 4891_CC-N And CUST_OPND_DT<6months And MPSA-Y_UltimateAcc_2301_4891111902                           |
      | 4891_CC-N And CUST_OPND_DT>6months And MPSA-Y_UltimateAcc_SRC_ACCT_STAT_CD_Active_2301_4891111904   |
      | 4891_CC-N And CUST_OPND_DT<6months And MPSA-Y_UltimateAcc_2303_4891111902                           |
      | 4891_CC-N And CUST_OPND_DT=6th month Last Day And MPSA-Y_UltimateAcc_2301_4891111902                |
      | 4891_CC-N And CUST_OPND_DT=6th monthLast Day And MPSA-Y_UltimateAcc_2303_4891111902                 |
      | 4891_CC-N And CUST_OPND_DT>6months And MPSA-Y_UltimateAcc_2303_4891111904                           |
      | N-4891_4891111902_CC-N And CUST_OPND_DT>6months And MPSA-Y_UltimateAcc                              |
      | 4891_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_2301_AXGGC_ACCT_STAT_CD_Open_4891111903 |
      | 4891_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_2301_VFFTR_4891111903                   |
      | 4891_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_2301_VCLDM_4891111903                   |
      | 4891_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_2301_VLRRG_4891111903                   |
      | 4891_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_2303_AXGGC_4891111903                   |
      | 4891_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_2303_VFFTR_4891111903                   |
      | 4891_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_2303_VCLDM_4891111903                   |
      | 4891_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_2303_VLRRG_4891111903                   |
      | 4891_CC-Y Or CC-N And CUST_OPND_DT=7 month First Day And MPSA-N_KSAcc_2301_VLRRG_4891111903         |
      | 4891_CC-Y Or CC-N And CUST_OPND_DT=7 month First Day And MPSA-N_KSAcc_2303_VLRRG_4891111903         |
      | N-4891_4891111904_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc                            |
      | 4891_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_2301_AXGGC_4891111904                   |
      | 4891_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_2301_VFFTR_4891111904                   |
      | 4891_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_2301_VCLDM_4891111904                   |
      | 4891_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_2301_VLRRG_4891111904                   |
      | 4891_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_2303_AXGGC_4891111904                   |
      | 4891_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_2303_VFFTR_4891111904                   |
      | 4891_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_2303_VCLDM_4891111904                   |
      | 4891_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_2303_VLRRG_4891111904                   |
      | 4891_CC-Y Or CC-N And CUST_OPND_DT=7 month First Day And MPSA-Y_KSAcc_2301_VLRRG_4891111904         |
      | 4891_CC-Y Or CC-N And CUST_OPND_DT=7 month First Day And MPSA-Y_KSAcc_2303_VLRRG_4891111904         |
      | N-4891_4891111903_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc                            |

  @CrossSell @CrossSell_Negative_Validation @4891 @Workstream-4 @EMAIL @RS19067
  Scenario Outline: Cross sell Ultimate 4891_RS19067_EMAIL Validate offer details are not displayed against IH for Negative test cases
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
      | Test cases                                    |
      | N-4891_PRIM_CNTRY_CD!= CA                     |
      | N-4891_PRIM_CNTRY_CD= Null                    |
      | N-4891_CUST_TP_CD != PSNL                     |
      | N-4891_CUST_TP_CD =  Null                     |
      | N-4891_DO_NOT_SOLICIT_F= Y                    |
      | N-4891_Indv_Brth_Dt Equal to 17               |
      | N-4891_Indv_Brth_Dt Equal to Null             |
      | N-4891_Indv_Brth_Dt with in range (1-16)      |
      | N-4891_PRD CD- 01, SUB PRD CD -08             |
      | N-4891_PRD CD-02, SUB PRD CD -04              |
      | N-4891_PRD CD- 07, SUB PRD CD -08             |
      | N-4891_PRD CD-13, SUB PRD CD -12              |
      | N-4891_PRD CD- 18, SUB PRD CD -02             |
      | N-4891_PRD CD-19, SUB PRD CD -11              |
      | N-4891_PRD CD-23, SUB PRD CD -02              |
      | N-4891_SRC_ACCT_STAT_CD- B                    |
      | N-4891_SRC_ACCT_STAT_CD-Null                  |
      | N-4891_Account Open Date greater than 33 days |
      | N-4891_Account Open Date equal to Null        |
      | N-4891_Account Open Date less than 28         |
      | N-4891_Account Open Date equals to 27         |
      | N-4891_Account Open Date equals to 34         |
      | N-4891_Deceased_F= Y                          |
      | N-4891_Deceased_F= Null                       |
      | N-4891_LANG_CD= K                             |
      | N-4891_LANG_CD= NE                            |
      | N-4891_LANG_CD= Null                          |
      | N-4891_EMPLOYEE_STAFF_F= Y                    |
      | N-4891_ACCT_SUBSYS_ID_KS                      |
      | N-4891_Prv_Bnk_Ind= Null                      |
      | N-4891_Prv_Bnk_Ind= Y                         |
      | N-4891_MRKTBLE_F = N                          |
      | N-4891_MRKTBLE_F = NULL                       |
      | N-4891_Do Not Email Flag=Y                    |
      | N-4891_INDV_FRST_NM != Null                   |
      | N-4891_INDV_LAST_NM != Null                   |
      | N-4891_VLD_EMAIL_F = N                        |
      | N-4891_PRIM_EMAIL_ADDR  = BLANK               |
      | N-4891_PRIM_EMAIL_ADDR  = NULL                |
      | N-4891_Primary_Acct_Holder_Flag = N           |
      | N-4891_BANKRUPTCY_DT is 2020-09-14            |
      | N-4891_4891111902_BANKRUPTCY_DT is 2020-09-14 |

