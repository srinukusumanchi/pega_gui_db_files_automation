@4891_TestDataCreation
Feature: Test data creation for Cross Sell Ultimate - 4891

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

  @CrossSell_Email_901_AllOffers
  Scenario Outline: Cross Sell 4891_EMAIL Create test data single account
    Given load data from "D2DCrossSell" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    When write customer id into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write account number into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write account odt into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write purl key into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write hash key into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write last sequence id into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    When read customer purl profile information details from excel sheet "PURL_CUST_PROFILE" for "<Test cases>"
    Then insert customer in "PURL_CUST_PROFILE" table
    Examples:
      | Test cases   | Acct_Odt |
      | 4891_901_TC1 | 29       |
      | 4892_901_TC2 | 29       |
      | 4893_901_TC3 | 29       |
      | 4894_901_TC4 | 29       |

  @CrossSell @CrossSell_Positive_TestData_4891 @Workstream-4 @4891 @EMAIL @RS19067
  Scenario Outline: Cross Sell 4891_EMAIL Create test data for positive test cases for single account
    Given load data from "D2DCrossSell" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write customer open date "<CUST_OPND_DT>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    When write customer id into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write account number into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write account odt into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write purl key into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write hash key into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write last sequence id into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    When read customer purl profile information details from excel sheet "PURL_CUST_PROFILE" for "<Test cases>"
    Then insert customer in "PURL_CUST_PROFILE" table
    Examples:
      | Test cases                                                                           | Acct_Odt | CUST_OPND_DT |
      | 4891_ISSUE = CrossSell and Group = Bundles                                           | 28       | 20           |
      | 4891_CUST_TP_CD=PSNL                                                                 | 28       | 21           |
      | 4891_PRIM_CNTRY_CD= CA                                                               | 28       | 22           |
      | 4891_DO_NOT_SOLICIT_F=N                                                              | 28       | 23           |
      | 4891_DO_NOT_SOLICIT_F= Null                                                          | 28       | 24           |
      | 4891_INDV_BRTH_DT_Greater than 18                                                    | 28       | 25           |
      | 4891_INDV_BRTH_DT_Equal to 18                                                        | 28       | 26           |
      | 4891_Deceased_F=N                                                                    | 28       | 26           |
      | 4891_LANG_CD=E                                                                       | 28       | 27           |
      | 4891_LANG_CD=EN                                                                      | 28       | 28           |
      | 4891_LANG_CD=F                                                                       | 28       | 29           |
      | 4891_LANG_CD=FR                                                                      | 28       | 30           |
      | 4891_LANG_CD_LowerCase=e                                                             | 28       | 31           |
      | 4891_LANG_CD_LowerCase=en                                                            | 28       | 32           |
      | 4891_LANG_CD_LowerCase=f                                                             | 28       | 33           |
      | 4891_LANG_CD_LowerCase=fr                                                            | 28       | 34           |
      | 4891_Prv_Bnk_Ind=N                                                                   | 28       | 35           |
      | 4891_EMPLOYEE_STAFF_F=N                                                              | 28       | 36           |
      | 4891_EMPLOYEE_STAFF_F=NULL                                                           | 28       | 37           |
      | 4891_MRKTBLE_F=Y                                                                     | 28       | 38           |
      | 4891_Do Not Email Flag=N                                                             | 28       | 39           |
      | 4891_SRC_ACCT_STAT_CD-A                                                              | 28       | 40           |
      | 4891_ACCT_SUBSYS_ID_BB                                                               | 28       | 41           |
      | 4891_PRD CD- 23, SUB PRD CD -01                                                      | 28       | 42           |
      | 4891_PRD CD- 23, SUB PRD CD -03                                                      | 28       | 43           |
      | 4891_Account Open Date equal to 28 days                                              | 28       | 44           |
      | 4891_Account Open Date equal to 33 days                                              | 33       | 45           |
      | 4891_Account Open Date >= 28 and <=33 days                                           | 29       | 32           |
      | 4891_BANKRUPTCY_DT-NULL                                                              | 28       | 33           |
      | 4891_CC-N And CUST_OPND_DT<6months And MPSA-N_UltimateAcc_2301_4891111901            | 28       | 50           |
      | 4891_CC-N And CUST_OPND_DT>6months And MPSA-N_UltimateAcc_2301_4891111903            | 28       | 218          |
      | 4891_CC-N And CUST_OPND_DT<6months And MPSA-N_UltimateAcc_2303_4891111901            | 28       | 100          |
      | 4891_CC-N And CUST_OPND_DT=6th month Last Day And MPSA-N_UltimateAcc_2301_4891111901 | 28       | 214          |
      | 4891_CC-N And CUST_OPND_DT=6th month Last Day And MPSA-N_UltimateAcc_2303_4891111901 | 28       | 214          |
      | 4891_CC-N And CUST_OPND_DT>6months And MPSA-N_UltimateAcc_2303_4891111903            | 28       | 216          |
      | N-4891_4891111901_CC-N And CUST_OPND_DT>6months And MPSA-N_UltimateAcc               | 28       | 217          |

  @CrossSell @CrossSell_Positive_TestData_4891 @4891 @Workstream-4 @EMAIL @RS19067 @S
  Scenario Outline: Cross Sell 4891_EMAIL Create test data for positive test cases for dual account
    Given load data from "D2DCrossSell" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write customer open date "<CUST_OPND_DT>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "2" accounts
    Then insert customer account details in "ACCT_DIM" table having "2" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "2" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "2" accounts
    When write cid and account number into "PURL_CUST_PROFILE" sheet for "<Test cases>"  having "2" accounts
    And write purl key into "PURL_CUST_PROFILE" sheet for "<Test cases>"  having "2" accounts
    And write hash key into "PURL_CUST_PROFILE" sheet for "<Test cases>"  having "2" accounts
    Then insert customer in "PURL_CUST_PROFILE" table having "2" accounts
    Examples:
      | Test cases                                                                                          | Acct_Odt | CUST_OPND_DT |
      | 4891_CC-N And CUST_OPND_DT<6months And MPSA-Y_UltimateAcc_2301_4891111902                           | 28       | 30           |
      | 4891_CC-N And CUST_OPND_DT>6months And MPSA-Y_UltimateAcc_SRC_ACCT_STAT_CD_Active_2301_4891111904   | 28       | 217          |
      | 4891_CC-N And CUST_OPND_DT<6months And MPSA-Y_UltimateAcc_2303_4891111902                           | 28       | 90           |
      | 4891_CC-N And CUST_OPND_DT=6th month Last Day And MPSA-Y_UltimateAcc_2301_4891111902                | 28       | 214          |
      | 4891_CC-N And CUST_OPND_DT=6th monthLast Day And MPSA-Y_UltimateAcc_2303_4891111902                 | 28       | 214          |
      | 4891_CC-N And CUST_OPND_DT>6months And MPSA-Y_UltimateAcc_2303_4891111904                           | 28       | 216          |
      | N-4891_4891111902_CC-N And CUST_OPND_DT>6months And MPSA-Y_UltimateAcc                              | 28       | 240          |
      | 4891_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_2301_AXGGC_ACCT_STAT_CD_Open_4891111903 | 28       | 217          |
      | 4891_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_2301_VFFTR_4891111903                   | 28       | 216          |
      | 4891_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_2301_VCLDM_4891111903                   | 28       | 220          |
      | 4891_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_2301_VLRRG_4891111903                   | 28       | 300          |
      | 4891_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_2303_AXGGC_4891111903                   | 28       | 400          |
      | 4891_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_2303_VFFTR_4891111903                   | 28       | 500          |
      | 4891_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_2303_VCLDM_4891111903                   | 28       | 600          |
      | 4891_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_2303_VLRRG_4891111903                   | 28       | 321          |
      | 4891_CC-Y Or CC-N And CUST_OPND_DT=7 month First Day And MPSA-N_KSAcc_2301_VLRRG_4891111903         | 28       | 215          |
      | 4891_CC-Y Or CC-N And CUST_OPND_DT=7 month First Day And MPSA-N_KSAcc_2303_VLRRG_4891111903         | 28       | 215          |
      | N-4891_4891111904_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc                            | 28       | 310          |
      | N-4891_4891111902_BANKRUPTCY_DT is 2020-09-14                                                       | 28       | 20           |

  @CrossSell @CrossSell_Positive_TestData_4891 @4891 @Workstream-4 @EMAIL @RS19067
  Scenario Outline: Cross Sell 4891_EMAIL Create test data for positive test cases for three account
    Given load data from "D2DCrossSell" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write customer open date "<CUST_OPND_DT>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When  write account number into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>" having "3" accounts
    Then insert customer account details in "ACCT_DIM" table having "3" accounts
    When write cid and account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"  having "3" accounts
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table having "3" accounts
    When write cid and account number into "PURL_CUST_PROFILE" sheet for "<Test cases>"  having "3" accounts
    And write purl key into "PURL_CUST_PROFILE" sheet for "<Test cases>"  having "3" accounts
    And write hash key into "PURL_CUST_PROFILE" sheet for "<Test cases>"  having "3" accounts
    Then insert customer in "PURL_CUST_PROFILE" table having "3" accounts
    Examples:
      | Test cases                                                                                  | Acct_Odt | CUST_OPND_DT |
      | 4891_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_2301_AXGGC_4891111904           | 28       | 220          |
      | 4891_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_2301_VFFTR_4891111904           | 28       | 230          |
      | 4891_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_2301_VCLDM_4891111904           | 28       | 240          |
      | 4891_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_2301_VLRRG_4891111904           | 28       | 250          |
      | 4891_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_2303_AXGGC_4891111904           | 28       | 260          |
      | 4891_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_2303_VFFTR_4891111904           | 28       | 270          |
      | 4891_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_2303_VCLDM_4891111904           | 28       | 280          |
      | 4891_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_2303_VLRRG_4891111904           | 28       | 290          |
      | 4891_CC-Y Or CC-N And CUST_OPND_DT=7 month First Day And MPSA-Y_KSAcc_2301_VLRRG_4891111904 | 28       | 215          |
      | 4891_CC-Y Or CC-N And CUST_OPND_DT=7 month First Day And MPSA-Y_KSAcc_2303_VLRRG_4891111904 | 28       | 215          |
      | N-4891_4891111903_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc                    | 28       | 290          |


  @CrossSell @CrossSell_Negative_TestData_4891 @4891 @Workstream-4 @EMAIL @RS19067 @S
  Scenario Outline: Cross Sell 4891_EMAIL Create test data for negative test cases single account
    Given load data from "D2DCrossSell" excel sheet
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    And write customer open date "<CUST_OPND_DT>" into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    And  write account odt "<Acct_Odt>" value into sheet "ACCT_DIM" for "<Test cases>"
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When write customer id into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When write account number into "CUST_ACCT_RLTNP_DIM" sheet for "<Test cases>"
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table
    When write customer id into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write account number into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write account odt into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write purl key into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write hash key into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    And write last sequence id into "PURL_CUST_PROFILE" sheet for "<Test cases>"
    When read customer purl profile information details from excel sheet "PURL_CUST_PROFILE" for "<Test cases>"
    Then insert customer in "PURL_CUST_PROFILE" table
    Examples:
      | Test cases                                    | Acct_Odt | CUST_OPND_DT |
      | N-4891_PRIM_CNTRY_CD!= CA                     | 28       | 20           |
      | N-4891_PRIM_CNTRY_CD= Null                    | 28       | 21           |
      | N-4891_CUST_TP_CD != PSNL                     | 28       | 22           |
      | N-4891_CUST_TP_CD =  Null                     | 28       | 23           |
      | N-4891_DO_NOT_SOLICIT_F= Y                    | 28       | 24           |
      | N-4891_Indv_Brth_Dt Equal to 17               | 28       | 25           |
      | N-4891_Indv_Brth_Dt Equal to Null             | 28       | 26           |
      | N-4891_Indv_Brth_Dt with in range (1-16)      | 28       | 26           |
      | N-4891_PRD CD- 01, SUB PRD CD -08             | 28       | 27           |
      | N-4891_PRD CD-02, SUB PRD CD -04              | 28       | 28           |
      | N-4891_PRD CD- 07, SUB PRD CD -08             | 28       | 29           |
      | N-4891_PRD CD-13, SUB PRD CD -12              | 28       | 30           |
      | N-4891_PRD CD- 18, SUB PRD CD -02             | 28       | 31           |
      | N-4891_PRD CD-19, SUB PRD CD -11              | 28       | 32           |
      | N-4891_PRD CD-23, SUB PRD CD -02              | 28       | 33           |
      | N-4891_SRC_ACCT_STAT_CD- B                    | 28       | 34           |
      | N-4891_SRC_ACCT_STAT_CD-Null                  | 28       | 35           |
      | N-4891_Account Open Date greater than 33 days | 34       | 36           |
      | N-4891_Account Open Date equal to Null        | NULL     | 37           |
      | N-4891_Account Open Date less than 28         | 26       | 38           |
      | N-4891_Account Open Date equals to 27         | 27       | 39           |
      | N-4891_Account Open Date equals to 34         | 34       | 40           |
      | N-4891_Deceased_F= Y                          | 28       | 41           |
      | N-4891_Deceased_F= Null                       | 28       | 42           |
      | N-4891_LANG_CD= K                             | 28       | 43           |
      | N-4891_LANG_CD= NE                            | 28       | 44           |
      | N-4891_LANG_CD= Null                          | 28       | 20           |
      | N-4891_EMPLOYEE_STAFF_F= Y                    | 28       | 21           |
      | N-4891_ACCT_SUBSYS_ID_KS                      | 28       | 22           |
      | N-4891_Prv_Bnk_Ind= Null                      | 28       | 23           |
      | N-4891_Prv_Bnk_Ind= Y                         | 28       | 24           |
      | N-4891_MRKTBLE_F = N                          | 28       | 25           |
      | N-4891_MRKTBLE_F = NULL                       | 28       | 26           |
      | N-4891_Do Not Email Flag=Y                    | 28       | 26           |
      | N-4891_INDV_FRST_NM != Null                   | 28       | 27           |
      | N-4891_INDV_LAST_NM != Null                   | 28       | 28           |
      | N-4891_VLD_EMAIL_F = N                        | 28       | 29           |
      | N-4891_PRIM_EMAIL_ADDR  = BLANK               | 28       | 30           |
      | N-4891_PRIM_EMAIL_ADDR  = NULL                | 28       | 31           |
      | N-4891_BANKRUPTCY_DT is 2020-09-14            | 28       | 32           |
      | N-4891_Primary_Acct_Holder_Flag = N           | 28       | 44           |

