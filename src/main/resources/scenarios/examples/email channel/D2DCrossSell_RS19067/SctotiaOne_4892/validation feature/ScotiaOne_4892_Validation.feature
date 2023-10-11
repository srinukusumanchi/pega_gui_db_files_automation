Feature: Validation for Cross Sell Scotia One - 4892

  
#  Name:	D2D Early Engagement – Cross-Sell
#  Code:	RS19067
#  Data Specs:	https://confluence.agile.bns/display/CIMCAMP/Customer+Interaction+Ecosystem+-+Workstream+4
#  Scotia One (store  Cell Group 1 on IH)

#  Scotia One (Preferred) (store  Cell Group 2 on IH)

#  (Eligible Credit Card = N, AND	4892	                   4892111901	Credit Card + MPSA +
#  Customer Relationship < 6 months, AND,
#  Bankruptcy = null), AND GIC MPSA = N
#
#  (Eligible Credit Card = N, AND		                        4892111902	Credit Card + GIC
#  Customer Relationship < 6 months, AND,
#  Bankruptcy = null), AND MPSA = Y
#
#  [Eligible Credit Card = Y, OR		                            4892 111903	MPSA +
#  (Eligible Credit Card = N, AND GIC
#  Customer Relationship > 6 months)], AND MPSA = N
#
#  [Eligible Credit Card = Y, OR		                            4892 111904	GIC
#  (Eligible Credit Card = N, AND
#  Customer Relationship > 6 months)], AND MPSA = Y




  @CrossSell @CrossSell_Positive_Validation @Workstream-4 @4892 @EMAIL @RS19067
  Scenario Outline: Cross sell Scotia One 4892_RS19067_EMAIL Validate offer details against IH for Positive test cases
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
      | Test cases                                                                                                            |
      | 4892_DO_NOT_SOLICIT_F=NULL                                                                                            |
      | 4892_INDV_BRTH_DT_Equal to 18                                                                                         |
      | 4892_LANG_CD=E                                                                                                        |
      | 4892_LANG_CD=EN                                                                                                       |
      | 4892_LANG_CD=F                                                                                                        |
      | 4892_LANG_CD=FR                                                                                                       |
      | 4892_LANG_CD_LowerCase=e                                                                                              |
      | 4892_LANG_CD_LowerCase=en                                                                                             |
      | 4892_LANG_CD_LowerCase=f                                                                                              |
      | 4892_LANG_CD_LowerCase=fr                                                                                             |
      | 4892_EMPLOYEE_STAFF_F=NULL                                                                                            |
      | 4892_Account Open Date equal to 28 days                                                                               |
      | 4892_Account Open Date equal to 33 days                                                                               |
      | 4892_BANKRUPTCY_DT-NULL                                                                                               |
      | 4892_4892111901_CC-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-N And PRD CD-13, SUB PRD CD-01         |
      | 4892_4892111901_CC-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-N And PRD CD-13, SUB PRD CD-03         |
      | 4892_4892111901_CC-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-N And PRD CD-13, SUB PRD CD-07         |
      | 4892_4892111901_CC-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-N And PRD CD-13, SUB PRD CD-08         |
      | 4892_4892111901_CC-N And CUST_OPND_DT=6 month last Day And MPSA-N And PRD CD-13, SUB PRD CD-01                        |
      | 4892_4892111901_CC-N And CUST_OPND_DT=6 month last Day And MPSA-N And PRD CD-13, SUB PRD CD-03                        |
      | 4892_4892111901_CC-N And CUST_OPND_DT=6 month last Day And MPSA-N And PRD CD-13, SUB PRD CD-07                        |
      | 4892_4892111901_CC-N And CUST_OPND_DT=6 month last Day And MPSA-N And PRD CD-13, SUB PRD CD-08                        |
      | 4892_CC-N And CUST_OPND_DT>6months And MPSA-N_BBAcc_1301_4892111903                                                   |
      | 4892_CC-N And CUST_OPND_DT>6months And MPSA-N_BBAcc_1303_4892111903                                                   |
      | 4892_CC-N And CUST_OPND_DT>6months And MPSA-N_BBAcc_1307_4892111903                                                   |
      | 4892_CC-N And CUST_OPND_DT>6months And MPSA-N_BBAcc_1308_4892111903                                                   |
      | N-4892_4892111901_CC-N And CUST_OPND_DT>6months And MPSA-N                                                            |
      | 4892_4892111902_CC-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-Y And PRD CD-13, SUB PRD CD-01         |
      | 4892_4892111902_CC-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-Y And PRD CD-13, SUB PRD CD-03         |
      | 4892_4892111902_CC-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-Y And PRD CD-13, SUB PRD CD-07         |
      | 4892_4892111902_CC-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-Y And PRD CD-13, SUB PRD CD-08         |
      | 4892_4892111902_CC-N And CUST_OPND_DT=6 Month Last Day And BANKRUPTCY_DT-NULL And MPSA-Y And PRD CD-13, SUB PRD CD-01 |
      | 4892_4892111902_CC-N And CUST_OPND_DT=6 Month Last Day And BANKRUPTCY_DT-NULL And MPSA-Y And PRD CD-13, SUB PRD CD-03 |
      | 4892_4892111902_CC-N And CUST_OPND_DT=6 Month Last Day And BANKRUPTCY_DT-NULL And MPSA-Y And PRD CD-13, SUB PRD CD-07 |
      | 4892_4892111902_CC-N And CUST_OPND_DT=6 Month Last Day And BANKRUPTCY_DT-NULL And MPSA-Y And PRD CD-13, SUB PRD CD-08 |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1301_AXGGC_ACCT_STAT_CD_Open_4892111903                   |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1301_VFFTR_4892111903                                     |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1301_VCLDM_4892111903                                     |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1301_VLRRG_4892111903                                     |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1303_AXGGC_4892111903                                     |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1303_VFFTR_4892111903                                     |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1303_VCLDM_4892111903                                     |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1303_VLRRG_4892111903                                     |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1307_AXGGC_4892111903                                     |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1307_VFFTR_4892111903                                     |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1307_VCLDM_4892111903                                     |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1307_VLRRG_4892111903                                     |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1308_AXGGC_4892111903                                     |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1308_VFFTR_4892111903                                     |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1308_VCLDM_4892111903                                     |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1308_VLRRG_4892111903                                     |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT=7 month First Day And MPSA-N_KSAcc_1301_VLRRG_4892111903                           |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT=7 month First Day And MPSA-N_KSAcc_1303_VLRRG_4892111903                           |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT=7 month First Day And MPSA-N_KSAcc_1307_VLRRG_4892111903                           |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT=7 month First Day And MPSA-N_KSAcc_1308_VLRRG_4892111903                           |
      | 4892_CC-N And CUST_OPND_DT>6months And MPSA-Y_BBAcc_ACCT_STAT_CD_Active_ACCT_SUBSYS_ID_UF_PRDCD-BSAMP-1301_4892111904 |
      | N-4892_4892111902_CC-N And CUST_OPND_DT>6months And MPSA-Y                                                            |
      | N-4892_4892111904_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc                                              |
      | 4892_CC-N And CUST_OPND_DT>6months And MPSA-Y_BBAcc_1303_4892111904                                                   |
      | 4892_CC-N And CUST_OPND_DT>6months And MPSA-Y_BBAcc_1307_4892111904                                                   |
      | 4892_CC-N And CUST_OPND_DT>6months And MPSA-Y_BBAcc_1308_4892111904                                                   |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_1301_AXGGC_4892111904                                     |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_1301_VFFTR_4892111904                                     |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_1301_VCLDM_4892111904                                     |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_1301_VLRRG_4892111904                                     |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_1303_AXGGC_4892111904                                     |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_1303_VFFTR_4892111904                                     |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_1303_VCLDM_4892111904                                     |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_1303_VLRRG_4892111904                                     |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_1307_AXGGC_4892111904                                     |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_1307_VFFTR_4892111904                                     |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_1307_VCLDM_4892111904                                     |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_1307_VLRRG_4892111904                                     |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_1308_AXGGC_4892111904                                     |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_1308_VFFTR_4892111904                                     |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_1308_VCLDM_4892111904                                     |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_1308_VLRRG_4892111904                                     |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT=7 month First Day And MPSA-Y_KSAcc_1301_VLRRG_4892111904                           |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT=7 month First Day And MPSA-Y_KSAcc_1303_VLRRG_4892111904                           |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT=7 month First Day And MPSA-Y_KSAcc_1307_VLRRG_4892111904                           |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT=7 month First Day And MPSA-Y_KSAcc_1308_VLRRG_4892111904                           |
      | N-4892_4892111903_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc                                              |


  @CrossSell @CrossSell_Negative_Validation @4892 @Workstream-4 @EMAIL @RS19067
  Scenario Outline: Cross sell Scotia One 4892_RS19067_EMAIL Validate offer details are not displayed against IH for Negative test cases
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
      | N-4892_PRIM_CNTRY_CD!=CA Eg:- AC              |
      | N-4892_PRIM_CNTRY_CD=Null                     |
      | N-4892_CUST_TP_CD != PSNL (Eg:- Non_PSNL)     |
      | N-4892_CUST_TP_CD = Null                      |
      | N-4892_DO_NOT_SOLICIT_F= Y                    |
      | N-4892_Indv_Brth_Dt Equal to 17               |
      | N-4892_Indv_Brth_Dt Equal to Null             |
      | N-4892_Indv_Brth_Dt with in range (1-16)      |
      | N-4892_PRD CD- 01, SUB PRD CD -08             |
      | N-4892_PRD CD- 02, SUB PRD CD -04             |
      | N-4892_PRD CD- 07, SUB PRD CD -08             |
      | N-4892_PRD CD- 13, SUB PRD CD -12             |
      | N-4892_PRD CD- 18, SUB PRD CD -02             |
      | N-4892_PRD CD- 19, SUB PRD CD -11             |
      | N-4892_PRD CD-23, SUB PRD CD -02              |
      | N-4892_SRC_ACCT_STAT_CD-B                     |
      | N-4892_SRC_ACCT_STAT_CD-Null                  |
      | N-4892_Account Open Date greater than 33 days |
      | N-4892_Account Open Date equal to Null        |
      | N-4892_Account Open Date less than 28         |
      | N-4892_Account Open Date equal to 27          |
      | N-4892_Account Open Date equal to 34          |
      | N-4892_Deceased_F=Y                           |
      | N-4892_Deceased_F=Null                        |
      | N-4892_LANG_CD=K                              |
      | N-4892_LANG_CD=NE                             |
      | N-4892_LANG_CD=Null                           |
      | N-4892_EMPLOYEE_STAFF_F=Y                     |
      | N-4892_ACCT_SUBSYS_ID_KS                      |
      | N-4892_Prv_Bnk_Ind=Null                       |
      | N-4892_Prv_Bnk_Ind=Y                          |
      | N-4892_MRKTBLE_F = N                          |
      | N-4892_MRKTBLE_F = NULL                       |
      | N-4892_Do Not Email Flag=Y                    |
      | N-4892_INDV_FRST_NM != Null                   |
      | N-4892_INDV_LAST_NM != Null                   |
      | N-4892_VLD_EMAIL_F = N                        |
      | N-4892_PRIM_EMAIL_ADDR  = BLANK               |
      | N-4892_PRIM_EMAIL_ADDR  = NULL                |
      | N-4892_Primary_Acct_Holder_Flag = N           |
      | N-4892_BANKRUPTCY_DT is 2020-09-14            |
      | N-4892_4892111902_BANKRUPTCY_DT is 2020-09-14 |
