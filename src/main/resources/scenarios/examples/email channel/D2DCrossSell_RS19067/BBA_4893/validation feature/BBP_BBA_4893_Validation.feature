Feature: Validation for Cross Sell BBP, BBA - 4893

  
#  Name:	D2D Early Engagement – Cross-Sell
#  Code:	RS19067
#  Data Specs:	https://confluence.agile.bns/display/CIMCAMP/Customer+Interaction+Ecosystem+-+Workstream+4
#  Scotia One (store  Cell Group 1 on IH)

#  BBP  (store  Cell Group 3 on IH)	 BBA (store  Cell Group 4 on IH)
#  (Credit Card = N, AND	4893	                              4893111901	Credit Card +  MPSA
#  Customer Relationship < 6 months, AND,
#  Or Bankruptcy = null), AND MPSA = N

#  [(Credit Card = Y), OR		                                  4893111902	MPSA
#  (Credit Card = N, AND
#  Customer Relationship > 6 months)], AND
#  MPSA = N


  @CrossSell @CrossSell_Positive_Validation @Workstream-4 @4893@EMAIL @RS19067
  Scenario Outline: Cross sell BBA BBP 4893_RS19067_EMAIL Validate offer details against IH for Positive test cases
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
      | Test cases                                                                                                                   |
      | 4893_DO_NOT_SOLICIT_F=NULL                                                                                                   |
      | 4893_INDV_BRTH_DT_Equal to 18                                                                                                |
      | 4893_LANG_CD=E                                                                                                               |
      | 4893_LANG_CD=EN                                                                                                              |
      | 4893_LANG_CD=F                                                                                                               |
      | 4893_LANG_CD=FR                                                                                                              |
      | 4893_LANG_CD_LowerCase=e                                                                                                     |
      | 4893_LANG_CD_LowerCase=en                                                                                                    |
      | 4893_LANG_CD_LowerCase=f                                                                                                     |
      | 4893_LANG_CD_LowerCase=fr                                                                                                    |
      | 4893_EMPLOYEE_STAFF_F=NULL                                                                                                   |
      | 4893_Account Open Date equal to 28 days                                                                                      |
      | 4893_Account Open Date equal to 33 days                                                                                      |
      | 4893_BANKRUPTCY_DT-NULL                                                                                                      |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-N And PRD CD-19, SUB PRD CD-01        |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-N And PRD CD-19, SUB PRD CD-02        |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-N And PRD CD-19, SUB PRD CD-03        |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-N And PRD CD-19, SUB PRD CD-04        |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-N And PRD CD-19, SUB PRD CD-07        |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-N And PRD CD-19, SUB PRD CD-08        |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT=6 month last Day  And MPSA-N And PRD CD-19, SUB PRD CD-01                      |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT=6 month last Day  And MPSA-N And PRD CD-19, SUB PRD CD-02                      |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT=6 month last Day  And MPSA-N And PRD CD-19, SUB PRD CD-03                      |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT=6 month last Day  And MPSA-N And PRD CD-19, SUB PRD CD-04                      |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT=6 month last Day  And MPSA-N And PRD CD-19, SUB PRD CD-07                      |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT=6 month last Day  And MPSA-N And PRD CD-19, SUB PRD CD-08                      |
      | 4893_CC-N And CUST_OPND_DT>6months And MPSA-N_BBAcc_1901_4893111902                                                          |
      | 4893_CC-N And CUST_OPND_DT>6months And MPSA-N_BBAcc_1902_4893111902                                                          |
      | 4893_CC-N And CUST_OPND_DT>6months And MPSA-N_BBAcc_1903_4893111902                                                          |
      | 4893_CC-N And CUST_OPND_DT>6months And MPSA-N_BBAcc_1904_4893111902                                                          |
      | 4893_CC-N And CUST_OPND_DT>6months And MPSA-N_BBAcc_1907_4893111902                                                          |
      | 4893_CC-N And CUST_OPND_DT>6months And MPSA-N_BBAcc_1908_4893111902                                                          |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-N And PRD CD-01 SUB PRD CD-01         |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-N And PRD CD-01, SUB PRD CD-02        |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-N And PRD CD-01, SUB PRD CD-03        |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-N And PRD CD-01, SUB PRD CD-04        |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT must be on the Exact 6 month last Day  And MPSA-N And PRD CD-01, SUB PRD CD-01 |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT must be on the Exact 6 month last Day  And MPSA-N And PRD CD-01, SUB PRD CD-02 |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT must be on the Exact 6 month last Day  And MPSA-N And PRD CD-01, SUB PRD CD-03 |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT must be on the Exact 6 month last Day  And MPSA-N And PRD CD-01, SUB PRD CD-04 |
      | 4893_CC-N And CUST_OPND_DT>6months And MPSA-N_BBAcc_0101_4893111902                                                          |
      | 4893_CC-N And CUST_OPND_DT>6months And MPSA-N_BBAcc_0102_4893111902                                                          |
      | 4893_CC-N And CUST_OPND_DT>6months And MPSA-N_BBAcc_0103_4893111902                                                          |
      | 4893_CC-N And CUST_OPND_DT>6months And MPSA-N_BBAcc_0104_4893111902                                                          |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-N And PRD CD-02 SUB PRD CD-01         |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-N And PRD CD-02, SUB PRD CD-02        |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-N And PRD CD-02, SUB PRD CD-03        |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT must be on the Exact 6 month last Day  And MPSA-N And PRD CD-02, SUB PRD CD-01 |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT must be on the Exact 6 month last Day  And MPSA-N And PRD CD-02, SUB PRD CD-02 |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT must be on the Exact 6 month last Day  And MPSA-N And PRD CD-02, SUB PRD CD-03 |
      | 4893_CC-N And CUST_OPND_DT>6months And MPSA-N_BBAcc_0201_4893111902                                                          |
      | 4893_CC-N And CUST_OPND_DT>6months And MPSA-N_BBAcc_0202_4893111902                                                          |
      | 4893_CC-N And CUST_OPND_DT>6months And MPSA-N_BBAcc_0203_4893111902                                                          |
      | N-4893_4893111901_CC-N And CUST_OPND_DT>6months And MPSA-N                                                                   |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1901_AXGGC_ACCT_STAT_CD_Open_4893111902                          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1901_VFFTR_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1901_VCLDM_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1901_VLRRG_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1902_AXGGC_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1902_VFFTR_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1902_VCLDM_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1902_VLRRG_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1903_AXGGC_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1903_VFFTR_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1903_VCLDM_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1903_VLRRG_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1904_AXGGC_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1904_VFFTR_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1904_VCLDM_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1904_VLRRG_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1907_AXGGC_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1907_VFFTR_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1907_VCLDM_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1907_VLRRG_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1908_AXGGC_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1908_VFFTR_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1908_VCLDM_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1908_VLRRG_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT=7 month First Day And MPSA-N_KSAcc_1901_VLRRG_4893111902                                  |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT=7 month First Day And MPSA-N_KSAcc_1902_VLRRG_4893111902                                  |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT=7 month First Day And MPSA-N_KSAcc_1903_VLRRG_4893111902                                  |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT=7 month First Day And MPSA-N_KSAcc_1904_VLRRG_4893111902                                  |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT=7 month First Day And MPSA-N_KSAcc_1907_VLRRG_4893111902                                  |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT=7 month First Day And MPSA-N_KSAcc_1908_VLRRG_4893111902                                  |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0101_AXGGC_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0101_VFFTR_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0101_VCLDM_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0101_VLRRG_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0102_AXGGC_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0102_VFFTR_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0102_VCLDM_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0102_VLRRG_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0103_AXGGC_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0103_VFFTR_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0103_VCLDM_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0103_VLRRG_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0104_AXGGC_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0104_VFFTR_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0104_VCLDM_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0104_VLRRG_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT month be on the Exact 7 month First Day And MPSA-N_KSAcc_0101_VLRRG_4893111902            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT month be on the Exact 7 month First Day And MPSA-N_KSAcc_0102_VLRRG_4893111902            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT month be on the Exact 7 month First Day And MPSA-N_KSAcc_0103_VLRRG_4893111902            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT month be on the Exact 7 month First Day And MPSA-N_KSAcc_0104_VLRRG_4893111902            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0201_AXGGC_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0201_VFFTR_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0201_VCLDM_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0201_VLRRG_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0202_AXGGC_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0202_VFFTR_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0202_VCLDM_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0202_VLRRG_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0203_AXGGC_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0203_VFFTR_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0203_VCLDM_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0203_VLRRG_4893111902                                            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT month be on the Exact 7 month First Day And MPSA-N_KSAcc_0201_VLRRG_4893111902            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT month be on the Exact 7 month First Day And MPSA-N_KSAcc_0202_VLRRG_4893111902            |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT month be on the Exact 7 month First Day And MPSA-N_KSAcc_0203_VLRRG_4893111902            |
      | N-4893_4893111902_CC-Y And CUST_OPND_DT<6months And MPSA-N                                                                   |

  @CrossSell @CrossSell_Negative_Validation @4893 @Workstream-4 @EMAIL @RS19067
  Scenario Outline:Cross sell BBA BBP 4893_RS19067_EMAIL Validate offer details are not displayed against IH for Negative test cases
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
      | Test cases                                                                                           |
      | N-4893_PRIM_CNTRY_CD!=CA Eg:- AC                                                                     |
      | N-4893_PRIM_CNTRY_CD=Null                                                                            |
      | N-4893_CUST_TP_CD != PSNL (Eg:- Non_PSNL)                                                            |
      | N-4893_CUST_TP_CD = Null                                                                             |
      | N-4893_DO_NOT_SOLICIT_F= Y                                                                           |
      | N-4893_Indv_Brth_Dt Equal to 17                                                                      |
      | N-4893_Indv_Brth_Dt Equal to Null                                                                    |
      | N-4893_Indv_Brth_Dt with in range (1-16)                                                             |
      | N-4893_PRD CD- 01, SUB PRD CD -08                                                                    |
      | N-4893_PRD CD- 02, SUB PRD CD -04                                                                    |
      | N-4893_PRD CD- 07, SUB PRD CD -08                                                                    |
      | N-4893_PRD CD- 13, SUB PRD CD -12                                                                    |
      | N-4893_PRD CD- 18, SUB PRD CD -02                                                                    |
      | N-4893_PRD CD- 19, SUB PRD CD -11                                                                    |
      | N-4893_PRD CD-23, SUB PRD CD -02                                                                     |
      | N-4893_SRC_ACCT_STAT_CD-B                                                                            |
      | N-4893_SRC_ACCT_STAT_CD-Null                                                                         |
      | N-4893_Account Open Date greater than 33 days                                                        |
      | N-4893_Account Open Date equal to Null                                                               |
      | N-4893_Account Open Date less than 28                                                                |
      | N-4893_Account Open Date equal to 27                                                                 |
      | N-4893_Account Open Date equal to 34                                                                 |
      | N-4893_Deceased_F=Y                                                                                  |
      | N-4893_Deceased_F=Null                                                                               |
      | N-4893_LANG_CD=K                                                                                     |
      | N-4893_LANG_CD=NE                                                                                    |
      | N-4893_LANG_CD=Null                                                                                  |
      | N-4893_EMPLOYEE_STAFF_F=Y                                                                            |
      | N-4893_ACCT_SUBSYS_ID_KS                                                                             |
      | N-4893_Prv_Bnk_Ind=Null                                                                              |
      | N-4893_Prv_Bnk_Ind=Y                                                                                 |
      | N-4893_MRKTBLE_F = N                                                                                 |
      | N-4893_MRKTBLE_F = NULL                                                                              |
      | N-4893_Do Not Email Flag=Y                                                                           |
      | N-4893_INDV_FRST_NM != Null                                                                          |
      | N-4893_INDV_LAST_NM != Null                                                                          |
      | N-4893_VLD_EMAIL_F = N                                                                               |
      | N-4893_PRIM_EMAIL_ADDR  = BLANK                                                                      |
      | N-4893_PRIM_EMAIL_ADDR  = NULL                                                                       |
      | N-4893_Primary_Acct_Holder_Flag = N                                                                  |
      | N-4893_BANKRUPTCY_DT is 2020-09-14                                                                   |
