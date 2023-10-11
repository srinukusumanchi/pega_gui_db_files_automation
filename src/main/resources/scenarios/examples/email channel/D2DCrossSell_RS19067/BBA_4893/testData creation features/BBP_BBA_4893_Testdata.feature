@4893_TestDataCreation
Feature: Test data creation for Cross Sell Ultimate - 4893

#  Name:	D2D Early Engagement – Cross-Sell
#  Code:	RS19067
#  Data Specs:	https://confluence.agile.bns/display/CIMCAMP/Customer+Interaction+Ecosystem+-+Workstream+4
#  Ultimate (store  Cell Group 1 on IH)

#  BBP  (store  Cell Group 3 on IH)	 BBA (store  Cell Group 4 on IH)
#  (Credit Card = N, AND	4893	                              4893111901	Credit Card +  MPSA
#  Customer Relationship < 6 months, AND,
#  Or Bankruptcy = null), AND MPSA = N

#  [(Credit Card = Y), OR		                                  4893111902	MPSA
#  (Credit Card = N, AND
#  Customer Relationship > 6 months)], AND
#  MPSA = N


  @CrossSell @CrossSell_Positive_TestData @Workstream-4 @4893 @EMAIL @RS19067
  Scenario Outline: Cross Sell 4893_EMAIL Create test data for positive test cases for single account
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
      | Test cases                                                                                                                   | Acct_Odt | CUST_OPND_DT |
      | 4893_DO_NOT_SOLICIT_F=NULL                                                                                                   | 28       | 24           |
      | 4893_INDV_BRTH_DT_Equal to 18                                                                                                | 28       | 26           |
      | 4893_LANG_CD=E                                                                                                               | 28       | 27           |
      | 4893_LANG_CD=EN                                                                                                              | 28       | 28           |
      | 4893_LANG_CD=F                                                                                                               | 28       | 29           |
      | 4893_LANG_CD=FR                                                                                                              | 28       | 30           |
      | 4893_LANG_CD_LowerCase=e                                                                                                     | 28       | 31           |
      | 4893_LANG_CD_LowerCase=en                                                                                                    | 28       | 32           |
      | 4893_LANG_CD_LowerCase=f                                                                                                     | 28       | 33           |
      | 4893_LANG_CD_LowerCase=fr                                                                                                    | 28       | 34           |
      | 4893_EMPLOYEE_STAFF_F=NULL                                                                                                   | 28       | 37           |
      | 4893_Account Open Date equal to 28 days                                                                                      | 28       | 43           |
      | 4893_Account Open Date equal to 33 days                                                                                      | 33       | 44           |
      | 4893_BANKRUPTCY_DT-NULL                                                                                                      | 28       | 50           |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-N And PRD CD-19, SUB PRD CD-01        | 28       | 50           |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-N And PRD CD-19, SUB PRD CD-02        | 28       | 50           |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-N And PRD CD-19, SUB PRD CD-03        | 28       | 50           |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-N And PRD CD-19, SUB PRD CD-04        | 28       | 50           |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-N And PRD CD-19, SUB PRD CD-07        | 28       | 50           |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-N And PRD CD-19, SUB PRD CD-08        | 28       | 50           |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT=6 month last Day  And MPSA-N And PRD CD-19, SUB PRD CD-01                      | 28       | 214          |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT=6 month last Day  And MPSA-N And PRD CD-19, SUB PRD CD-02                      | 28       | 214          |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT=6 month last Day  And MPSA-N And PRD CD-19, SUB PRD CD-03                      | 28       | 214          |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT=6 month last Day  And MPSA-N And PRD CD-19, SUB PRD CD-04                      | 28       | 214          |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT=6 month last Day  And MPSA-N And PRD CD-19, SUB PRD CD-07                      | 28       | 214          |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT=6 month last Day  And MPSA-N And PRD CD-19, SUB PRD CD-08                      | 28       | 214          |
      | 4893_CC-N And CUST_OPND_DT>6months And MPSA-N_BBAcc_1901_4893111902                                                          | 28       | 340          |
      | 4893_CC-N And CUST_OPND_DT>6months And MPSA-N_BBAcc_1902_4893111902                                                          | 28       | 303          |
      | 4893_CC-N And CUST_OPND_DT>6months And MPSA-N_BBAcc_1903_4893111902                                                          | 28       | 334          |
      | 4893_CC-N And CUST_OPND_DT>6months And MPSA-N_BBAcc_1904_4893111902                                                          | 28       | 332          |
      | 4893_CC-N And CUST_OPND_DT>6months And MPSA-N_BBAcc_1907_4893111902                                                          | 28       | 333          |
      | 4893_CC-N And CUST_OPND_DT>6months And MPSA-N_BBAcc_1908_4893111902                                                          | 28       | 333          |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-N And PRD CD-01 SUB PRD CD-01         | 28       | 50           |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-N And PRD CD-01, SUB PRD CD-02        | 28       | 60           |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-N And PRD CD-01, SUB PRD CD-03        | 28       | 70           |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-N And PRD CD-01, SUB PRD CD-04        | 28       | 80           |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT must be on the Exact 6 month last Day  And MPSA-N And PRD CD-01, SUB PRD CD-01 | 28       | 214          |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT must be on the Exact 6 month last Day  And MPSA-N And PRD CD-01, SUB PRD CD-02 | 28       | 214          |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT must be on the Exact 6 month last Day  And MPSA-N And PRD CD-01, SUB PRD CD-03 | 28       | 214          |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT must be on the Exact 6 month last Day  And MPSA-N And PRD CD-01, SUB PRD CD-04 | 28       | 214          |
      | 4893_CC-N And CUST_OPND_DT>6months And MPSA-N_BBAcc_0101_4893111902                                                          | 28       | 230          |
      | 4893_CC-N And CUST_OPND_DT>6months And MPSA-N_BBAcc_0102_4893111902                                                          | 28       | 230          |
      | 4893_CC-N And CUST_OPND_DT>6months And MPSA-N_BBAcc_0103_4893111902                                                          | 28       | 230          |
      | 4893_CC-N And CUST_OPND_DT>6months And MPSA-N_BBAcc_0104_4893111902                                                          | 28       | 230          |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-N And PRD CD-02 SUB PRD CD-01         | 28       | 50           |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-N And PRD CD-02, SUB PRD CD-02        | 28       | 60           |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT<6 months And BANKRUPTCY_DT-NULL And MPSA-N And PRD CD-02, SUB PRD CD-03        | 28       | 70           |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT must be on the Exact 6 month last Day  And MPSA-N And PRD CD-02, SUB PRD CD-01 | 28       | 214          |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT must be on the Exact 6 month last Day  And MPSA-N And PRD CD-02, SUB PRD CD-02 | 28       | 214          |
      | 4893_4893111901_CreditCard-N And CUST_OPND_DT must be on the Exact 6 month last Day  And MPSA-N And PRD CD-02, SUB PRD CD-03 | 28       | 214          |
      | 4893_CC-N And CUST_OPND_DT>6months And MPSA-N_BBAcc_0201_4893111902                                                          | 28       | 230          |
      | 4893_CC-N And CUST_OPND_DT>6months And MPSA-N_BBAcc_0202_4893111902                                                          | 28       | 230          |
      | 4893_CC-N And CUST_OPND_DT>6months And MPSA-N_BBAcc_0203_4893111902                                                          | 28       | 230          |
      | N-4893_4893111901_CC-N And CUST_OPND_DT>6months And MPSA-N                                                                   | 28       | 217          |

  @CrossSell @CrossSell_Positive_TestData @4893 @Workstream-4 @EMAIL @RS19067
  Scenario Outline: Cross Sell 4893_EMAIL Create test data for positive test cases for dual account
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
      | Test cases                                                                                                        | Acct_Odt | CUST_OPND_DT |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1901_AXGGC_ACCT_STAT_CD_Open_4893111902               | 28       | 216          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1901_VFFTR_4893111902                                 | 28       | 217          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1901_VCLDM_4893111902                                 | 28       | 218          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1901_VLRRG_4893111902                                 | 28       | 219          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1902_AXGGC_4893111902                                 | 28       | 230          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1902_VFFTR_4893111902                                 | 28       | 220          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1902_VCLDM_4893111902                                 | 28       | 232          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1902_VLRRG_4893111902                                 | 28       | 231          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1903_AXGGC_4893111902                                 | 28       | 241          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1903_VFFTR_4893111902                                 | 28       | 243          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1903_VCLDM_4893111902                                 | 28       | 244          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1903_VLRRG_4893111902                                 | 28       | 265          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1904_AXGGC_4893111902                                 | 28       | 279          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1904_VFFTR_4893111902                                 | 28       | 282          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1904_VCLDM_4893111902                                 | 28       | 283          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1904_VLRRG_4893111902                                 | 28       | 289          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1907_AXGGC_4893111902                                 | 28       | 290          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1907_VFFTR_4893111902                                 | 28       | 300          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1907_VCLDM_4893111902                                 | 28       | 310          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1907_VLRRG_4893111902                                 | 28       | 320          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1908_AXGGC_4893111902                                 | 28       | 330          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1908_VFFTR_4893111902                                 | 28       | 340          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1908_VCLDM_4893111902                                 | 28       | 350          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_1908_VLRRG_4893111902                                 | 28       | 350          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT=7 month First Day And MPSA-N_KSAcc_1901_VLRRG_4893111902                       | 28       | 215          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT=7 month First Day And MPSA-N_KSAcc_1902_VLRRG_4893111902                       | 28       | 215          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT=7 month First Day And MPSA-N_KSAcc_1903_VLRRG_4893111902                       | 28       | 215          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT=7 month First Day And MPSA-N_KSAcc_1904_VLRRG_4893111902                       | 28       | 215          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT=7 month First Day And MPSA-N_KSAcc_1907_VLRRG_4893111902                       | 28       | 215          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT=7 month First Day And MPSA-N_KSAcc_1908_VLRRG_4893111902                       | 28       | 215          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0101_AXGGC_4893111902                                 | 28       | 230          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0101_VFFTR_4893111902                                 | 28       | 230          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0101_VCLDM_4893111902                                 | 28       | 230          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0101_VLRRG_4893111902                                 | 28       | 230          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0102_AXGGC_4893111902                                 | 28       | 230          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0102_VFFTR_4893111902                                 | 28       | 230          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0102_VCLDM_4893111902                                 | 28       | 230          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0102_VLRRG_4893111902                                 | 28       | 230          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0103_AXGGC_4893111902                                 | 28       | 230          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0103_VFFTR_4893111902                                 | 28       | 230          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0103_VCLDM_4893111902                                 | 28       | 230          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0103_VLRRG_4893111902                                 | 28       | 230          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0104_AXGGC_4893111902                                 | 28       | 230          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0104_VFFTR_4893111902                                 | 28       | 230          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0104_VCLDM_4893111902                                 | 28       | 230          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0104_VLRRG_4893111902                                 | 28       | 230          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT month be on the Exact 7 month First Day And MPSA-N_KSAcc_0101_VLRRG_4893111902 | 28       | 215          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT month be on the Exact 7 month First Day And MPSA-N_KSAcc_0102_VLRRG_4893111902 | 28       | 215          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT month be on the Exact 7 month First Day And MPSA-N_KSAcc_0103_VLRRG_4893111902 | 28       | 215          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT month be on the Exact 7 month First Day And MPSA-N_KSAcc_0104_VLRRG_4893111902 | 28       | 215          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0201_AXGGC_4893111902                                 | 28       | 230          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0201_VFFTR_4893111902                                 | 28       | 230          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0201_VCLDM_4893111902                                 | 28       | 230          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0201_VLRRG_4893111902                                 | 28       | 230          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0202_AXGGC_4893111902                                 | 28       | 230          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0202_VFFTR_4893111902                                 | 28       | 230          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0202_VCLDM_4893111902                                 | 28       | 230          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0202_VLRRG_4893111902                                 | 28       | 230          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0203_AXGGC_4893111902                                 | 28       | 230          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0203_VFFTR_4893111902                                 | 28       | 230          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0203_VCLDM_4893111902                                 | 28       | 230          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT>6months And MPSA-N_KSAcc_0203_VLRRG_4893111902                                 | 28       | 230          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT month be on the Exact 7 month First Day And MPSA-N_KSAcc_0201_VLRRG_4893111902 | 28       | 215          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT month be on the Exact 7 month First Day And MPSA-N_KSAcc_0202_VLRRG_4893111902 | 28       | 215          |
      | 4893_CC-Y Or CC-N And CUST_OPND_DT month be on the Exact 7 month First Day And MPSA-N_KSAcc_0203_VLRRG_4893111902 | 28       | 215          |
      | N-4893_4893111902_CC-Y And CUST_OPND_DT<6months And MPSA-N                                                        | 28       | 30           |

  @CrossSell @CrossSell_Negative_TestData @4893 @Workstream-4 @EMAIL @RS19067
  Scenario Outline: Cross Sell 4893_EMAIL Create test data for negative test cases single account
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
      | Test cases                                                                                           | Acct_Odt | CUST_OPND_DT |
      | N-4893_PRIM_CNTRY_CD!=CA Eg:- AC                                                                     | 28       | 1            |
      | N-4893_PRIM_CNTRY_CD=Null                                                                            | 29       | 2            |
      | N-4893_CUST_TP_CD != PSNL (Eg:- Non_PSNL)                                                            | 30       | 3            |
      | N-4893_CUST_TP_CD = Null                                                                             | 31       | 4            |
      | N-4893_DO_NOT_SOLICIT_F= Y                                                                           | 32       | 20           |
      | N-4893_Indv_Brth_Dt Equal to 17                                                                      | 32       | 20           |
      | N-4893_Indv_Brth_Dt Equal to Null                                                                    | 32       | 20           |
      | N-4893_Indv_Brth_Dt with in range (1-16)                                                             | 32       | 20           |
      | N-4893_PRD CD- 01, SUB PRD CD -08                                                                    | 32       | 20           |
      | N-4893_PRD CD- 02, SUB PRD CD -04                                                                    | 32       | 20           |
      | N-4893_PRD CD- 07, SUB PRD CD -08                                                                    | 32       | 20           |
      | N-4893_PRD CD- 13, SUB PRD CD -12                                                                    | 32       | 20           |
      | N-4893_PRD CD- 18, SUB PRD CD -02                                                                    | 32       | 20           |
      | N-4893_PRD CD- 19, SUB PRD CD -11                                                                    | 32       | 20           |
      | N-4893_PRD CD-23, SUB PRD CD -02                                                                     | 32       | 20           |
      | N-4893_SRC_ACCT_STAT_CD-B                                                                            | 32       | 20           |
      | N-4893_SRC_ACCT_STAT_CD-Null                                                                         | 32       | 20           |
      | N-4893_Account Open Date greater than 33 days                                                        | 60       | 20           |
      | N-4893_Account Open Date equal to Null                                                               | NULL     | 20           |
      | N-4893_Account Open Date less than 28                                                                | 15       | 20           |
      | N-4893_Account Open Date equal to 27                                                                 | 27       | 20           |
      | N-4893_Account Open Date equal to 34                                                                 | 34       | 20           |
      | N-4893_Deceased_F=Y                                                                                  | 32       | 20           |
      | N-4893_Deceased_F=Null                                                                               | 32       | 20           |
      | N-4893_LANG_CD=K                                                                                     | 32       | 20           |
      | N-4893_LANG_CD=NE                                                                                    | 32       | 20           |
      | N-4893_LANG_CD=Null                                                                                  | 32       | 20           |
      | N-4893_EMPLOYEE_STAFF_F=Y                                                                            | 32       | 20           |
      | N-4893_ACCT_SUBSYS_ID_KS                                                                             | 32       | 20           |
      | N-4893_Prv_Bnk_Ind=Null                                                                              | 32       | 20           |
      | N-4893_Prv_Bnk_Ind=Y                                                                                 | 32       | 20           |
      | N-4893_MRKTBLE_F = N                                                                                 | 32       | 20           |
      | N-4893_MRKTBLE_F = NULL                                                                              | 32       | 20           |
      | N-4893_Do Not Email Flag=Y                                                                           | 32       | 20           |
      | N-4893_INDV_FRST_NM != Null                                                                          | 32       | 20           |
      | N-4893_INDV_LAST_NM != Null                                                                          | 32       | 20           |
      | N-4893_VLD_EMAIL_F = N                                                                               | 32       | 20           |
      | N-4893_PRIM_EMAIL_ADDR  = BLANK                                                                      | 32       | 20           |
      | N-4893_PRIM_EMAIL_ADDR  = NULL                                                                       | 32       | 20           |
      | N-4893_Primary_Acct_Holder_Flag = N                                                                  | 32       | 20           |
      | N-4893_BANKRUPTCY_DT is 2020-09-14                                                                   | 32       | 20           |
