@4892_TestDataCreation
Feature: Test data creation for Cross Sell Scotia One - 4892

#  Name:	D2D Early Engagement – Cross-Sell
#  Code:	RS19067
#  Data Specs:	https://confluence.agile.bns/display/CIMCAMP/Customer+Interaction+Ecosystem+-+Workstream+4
#  Ultimate (store  Cell Group 1 on IH)

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




  @CrossSell @CrossSell_Positive_TestData_4892 @Workstream-4 @4892 @EMAIL @RS19067
  Scenario Outline: Cross Sell 4892_EMAIL Create test data for positive test cases for single account
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
      | Test cases                                                                                                    | Acct_Odt | CUST_OPND_DT |
      | 4892_DO_NOT_SOLICIT_F=NULL                                                                                    | 28       | 24           |
      | 4892_INDV_BRTH_DT_Equal to 18                                                                                 | 28       | 26           |
      | 4892_LANG_CD=E                                                                                                | 28       | 27           |
      | 4892_LANG_CD=EN                                                                                               | 28       | 28           |
      | 4892_LANG_CD=F                                                                                                | 28       | 29           |
      | 4892_LANG_CD=FR                                                                                               | 28       | 30           |
      | 4892_LANG_CD_LowerCase=e                                                                                      | 28       | 31           |
      | 4892_LANG_CD_LowerCase=en                                                                                     | 28       | 32           |
      | 4892_LANG_CD_LowerCase=f                                                                                      | 29       | 33           |
      | 4892_LANG_CD_LowerCase=fr                                                                                     | 29       | 34           |
      | 4892_EMPLOYEE_STAFF_F=NULL                                                                                    | 29       | 37           |
      | 4892_Account Open Date equal to 28 days                                                                       | 28       | 43           |
      | 4892_Account Open Date equal to 33 days                                                                       | 33       | 44           |
      | 4892_BANKRUPTCY_DT-NULL                                                                                       | 28       | 50           |
      | 4892_4892111901_CC-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-N And PRD CD-13, SUB PRD CD-01 | 29       | 50           |
      | 4892_4892111901_CC-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-N And PRD CD-13, SUB PRD CD-03 | 30       | 60           |
      | 4892_4892111901_CC-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-N And PRD CD-13, SUB PRD CD-07 | 30       | 70           |
      | 4892_4892111901_CC-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-N And PRD CD-13, SUB PRD CD-08 | 30       | 80           |
      | 4892_4892111901_CC-N And CUST_OPND_DT=6 month last Day And MPSA-N And PRD CD-13, SUB PRD CD-01                | 30       | 214          |
      | 4892_4892111901_CC-N And CUST_OPND_DT=6 month last Day And MPSA-N And PRD CD-13, SUB PRD CD-03                | 30       | 214          |
      | 4892_4892111901_CC-N And CUST_OPND_DT=6 month last Day And MPSA-N And PRD CD-13, SUB PRD CD-07                | 30       | 214          |
      | 4892_4892111901_CC-N And CUST_OPND_DT=6 month last Day And MPSA-N And PRD CD-13, SUB PRD CD-08                | 30       | 214          |
      | 4892_CC-N And CUST_OPND_DT>6months And MPSA-N_BBAcc_1301_4892111903                                           | 30       | 232          |
      | 4892_CC-N And CUST_OPND_DT>6months And MPSA-N_BBAcc_1303_4892111903                                           | 30       | 233          |
      | 4892_CC-N And CUST_OPND_DT>6months And MPSA-N_BBAcc_1307_4892111903                                           | 30       | 234          |
      | 4892_CC-N And CUST_OPND_DT>6months And MPSA-N_BBAcc_1308_4892111903                                           | 30       | 216          |
      | N-4892_4892111901_CC-N And CUST_OPND_DT>6months And MPSA-N                                                    | 30       | 235          |

  @CrossSell @CrossSell_Positive_TestData_4892 @4892 @Workstream-4 @EMAIL @RS19067 @S
  Scenario Outline: Cross Sell 4892_EMAIL Create test data for positive test cases for dual account
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
      | Test cases                                                                                                            | Acct_Odt | CUST_OPND_DT |
      | 4892_4892111902_CC-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-Y And PRD CD-13, SUB PRD CD-01         | 28       | 30           |
      | 4892_4892111902_CC-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-Y And PRD CD-13, SUB PRD CD-03         | 28       | 190          |
      | 4892_4892111902_CC-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-Y And PRD CD-13, SUB PRD CD-07         | 28       | 30           |
      | 4892_4892111902_CC-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-Y And PRD CD-13, SUB PRD CD-08         | 28       | 190          |
      | 4892_4892111902_CC-N And CUST_OPND_DT=6 Month Last Day And BANKRUPTCY_DT-NULL And MPSA-Y And PRD CD-13, SUB PRD CD-01 | 28       | 214          |
      | 4892_4892111902_CC-N And CUST_OPND_DT=6 Month Last Day And BANKRUPTCY_DT-NULL And MPSA-Y And PRD CD-13, SUB PRD CD-03 | 28       | 214          |
      | 4892_4892111902_CC-N And CUST_OPND_DT=6 Month Last Day And BANKRUPTCY_DT-NULL And MPSA-Y And PRD CD-13, SUB PRD CD-07 | 28       | 214          |
      | 4892_4892111902_CC-N And CUST_OPND_DT=6 Month Last Day And BANKRUPTCY_DT-NULL And MPSA-Y And PRD CD-13, SUB PRD CD-08 | 28       | 214          |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1301_AXGGC_ACCT_STAT_CD_Open_4892111903                   | 28       | 216          |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1301_VFFTR_4892111903                                     | 28       | 217          |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1301_VCLDM_4892111903                                     | 28       | 218          |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1301_VLRRG_4892111903                                     | 28       | 219          |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1303_AXGGC_4892111903                                     | 28       | 220          |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1303_VFFTR_4892111903                                     | 28       | 221          |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1303_VCLDM_4892111903                                     | 28       | 222          |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1303_VLRRG_4892111903                                     | 28       | 223          |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1307_AXGGC_4892111903                                     | 28       | 224          |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1307_VFFTR_4892111903                                     | 28       | 225          |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1307_VCLDM_4892111903                                     | 28       | 226          |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1307_VLRRG_4892111903                                     | 28       | 227          |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1308_AXGGC_4892111903                                     | 28       | 228          |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1308_VFFTR_4892111903                                     | 28       | 229          |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1308_VCLDM_4892111903                                     | 28       | 230          |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1308_VLRRG_4892111903                                     | 28       | 231          |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT=7 month First Day And MPSA-N_KSAcc_1301_VLRRG_4892111903                           | 28       | 216          |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT=7 month First Day And MPSA-N_KSAcc_1303_VLRRG_4892111903                           | 28       | 215          |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT=7 month First Day And MPSA-N_KSAcc_1307_VLRRG_4892111903                           | 28       | 215          |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT=7 month First Day And MPSA-N_KSAcc_1308_VLRRG_4892111903                           | 28       | 215          |
      | 4892_CC-N And CUST_OPND_DT>6months And MPSA-Y_BBAcc_ACCT_STAT_CD_Active_ACCT_SUBSYS_ID_UF_PRDCD-BSAMP-1301_4892111904 | 28       | 216          |
      | N-4892_4892111902_CC-N And CUST_OPND_DT>6months And MPSA-Y                                                            | 28       | 219          |
      | N-4892_4892111902_BANKRUPTCY_DT is 2020-09-14                                                                         | 32       | 20           |
      | N-4892_4892111904_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc                                              | 28       | 221          |
      | 4892_CC-N And CUST_OPND_DT>6months And MPSA-Y_BBAcc_1303_4892111904                                                   | 28       | 217          |
      | 4892_CC-N And CUST_OPND_DT>6months And MPSA-Y_BBAcc_1307_4892111904                                                   | 28       | 218          |
      | 4892_CC-N And CUST_OPND_DT>6months And MPSA-Y_BBAcc_1308_4892111904                                                   | 28       | 219          |

  @CrossSell @CrossSell_Positive_TestData_4892 @4892 @Workstream-4 @EMAIL @RS19067
  Scenario Outline: Cross Sell 4892_EMAIL Create test data for positive test cases for three account
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
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_1301_AXGGC_4892111904           | 28       | 216          |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_1301_VFFTR_4892111904           | 28       | 217          |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_1301_VCLDM_4892111904           | 28       | 218          |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_1301_VLRRG_4892111904           | 28       | 219          |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_1303_AXGGC_4892111904           | 28       | 220          |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_1303_VFFTR_4892111904           | 28       | 221          |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_1303_VCLDM_4892111904           | 28       | 222          |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_1303_VLRRG_4892111904           | 28       | 223          |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_1307_AXGGC_4892111904           | 28       | 224          |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_1307_VFFTR_4892111904           | 28       | 225          |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_1307_VCLDM_4892111904           | 28       | 226          |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_1307_VLRRG_4892111904           | 28       | 227          |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_1308_AXGGC_4892111904           | 28       | 228          |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_1308_VFFTR_4892111904           | 28       | 229          |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_1308_VCLDM_4892111904           | 28       | 230          |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc_1308_VLRRG_4892111904           | 28       | 231          |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT=7 month First Day And MPSA-Y_KSAcc_1301_VLRRG_4892111904 | 28       | 215          |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT=7 month First Day And MPSA-Y_KSAcc_1303_VLRRG_4892111904 | 28       | 215          |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT=7 month First Day And MPSA-Y_KSAcc_1307_VLRRG_4892111904 | 28       | 215          |
      | 4892_CC-Y Or CC-N And CUST_OPND_DT=7 month First Day And MPSA-Y_KSAcc_1308_VLRRG_4892111904 | 28       | 215          |
      | N-4892_4892111903_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-Y_KSAcc                    | 28       | 220          |

  @CrossSell @CrossSell_Negative_TestData_4892 @4892 @Workstream-4 @EMAIL @RS19067
  Scenario Outline: Cross Sell 4892_EMAIL Create test data for negative test cases single account
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
      | N-4892_PRIM_CNTRY_CD!=CA Eg:- AC              | 28       | 1            |
      | N-4892_PRIM_CNTRY_CD=Null                     | 29       | 2            |
      | N-4892_CUST_TP_CD != PSNL (Eg:- Non_PSNL)     | 30       | 3            |
      | N-4892_CUST_TP_CD = Null                      | 31       | 4            |
      | N-4892_DO_NOT_SOLICIT_F= Y                    | 32       | 20           |
      | N-4892_Indv_Brth_Dt Equal to 17               | 32       | 20           |
      | N-4892_Indv_Brth_Dt Equal to Null             | 32       | 20           |
      | N-4892_Indv_Brth_Dt with in range (1-16)      | 32       | 20           |
      | N-4892_PRD CD- 01, SUB PRD CD -08             | 32       | 20           |
      | N-4892_PRD CD- 02, SUB PRD CD -04             | 32       | 20           |
      | N-4892_PRD CD- 07, SUB PRD CD -08             | 32       | 20           |
      | N-4892_PRD CD- 13, SUB PRD CD -12             | 32       | 20           |
      | N-4892_PRD CD- 18, SUB PRD CD -02             | 32       | 20           |
      | N-4892_PRD CD- 19, SUB PRD CD -11             | 32       | 20           |
      | N-4892_PRD CD-23, SUB PRD CD -02              | 32       | 20           |
      | N-4892_SRC_ACCT_STAT_CD-B                     | 32       | 20           |
      | N-4892_SRC_ACCT_STAT_CD-Null                  | 32       | 20           |
      | N-4892_Account Open Date greater than 33 days | 34       | 20           |
      | N-4892_Account Open Date equal to Null        | NULL     | 20           |
      | N-4892_Account Open Date less than 28         | 15       | 20           |
      | N-4892_Account Open Date equal to 27          | 27       | 20           |
      | N-4892_Account Open Date equal to 34          | 34       | 20           |
      | N-4892_Deceased_F=Y                           | 32       | 20           |
      | N-4892_Deceased_F=Null                        | 32       | 20           |
      | N-4892_LANG_CD=K                              | 32       | 20           |
      | N-4892_LANG_CD=NE                             | 32       | 20           |
      | N-4892_LANG_CD=Null                           | 32       | 20           |
      | N-4892_EMPLOYEE_STAFF_F=Y                     | 32       | 20           |
      | N-4892_ACCT_SUBSYS_ID_KS                      | 32       | 20           |
      | N-4892_Prv_Bnk_Ind=Null                       | 32       | 20           |
      | N-4892_Prv_Bnk_Ind=Y                          | 32       | 20           |
      | N-4892_MRKTBLE_F = N                          | 32       | 20           |
      | N-4892_MRKTBLE_F = NULL                       | 32       | 20           |
      | N-4892_Do Not Email Flag=Y                    | 32       | 20           |
      | N-4892_INDV_FRST_NM != Null                   | 32       | 20           |
      | N-4892_INDV_LAST_NM != Null                   | 32       | 20           |
      | N-4892_VLD_EMAIL_F = N                        | 32       | 20           |
      | N-4892_PRIM_EMAIL_ADDR  = BLANK               | 32       | 20           |
      | N-4892_PRIM_EMAIL_ADDR  = NULL                | 32       | 20           |
      | N-4892_Primary_Acct_Holder_Flag = N           | 32       | 20           |
      | N-4892_BANKRUPTCY_DT is 2020-09-14            | 32       | 20           |
