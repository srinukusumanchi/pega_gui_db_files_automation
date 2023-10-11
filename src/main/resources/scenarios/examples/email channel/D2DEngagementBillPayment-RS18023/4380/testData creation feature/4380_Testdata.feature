Feature: Test data creation for D2D Engagement Bill Payment

  @D2DEngagementBillPayment  @D2DEngagementBillPayment_Positive_TestData_4380 @Workstream-4 @4380 @EMAIL @RS18023 @D2DFeb2023HasCode_flg_done
  Scenario Outline: D2D Engagement Bill Payment_RS18023_4380_EMAIL Create test data for positive test cases
    Given load data from "BillPayment" excel sheet
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
      | Test cases                              | Acct_Odt | CUST_OPND_DT |
#      | 4380_ISSUE = Engagement and Group = D2D | 23       | 91           |
#      | 4380_CUST_TP_CD=PSNL                    | 23       | 92           |
#      | 4380_PRIM_CNTRY_CD= CA                  | 23       | 93           |
#      | 4380_DO_NOT_SOLICIT_F=N                 | 23       | 94           |
#      | 4380_DO_NOT_SOLICIT_F= Null             | 23       | 95           |
#      | 4380_Cust.AGE_Greater than 16           | 23       | 96           |
#      | 4380_Cust.AGE_Equal to 16               | 23       | 97           |
#      | 4380_Deceased_F=N                       | 23       | 98           |
      ##| 4380_LANG_CD=E                          | 23       | 99           |
#      | 4380_LANG_CD=EN                         | 23       | 100          |
      ##| 4380_LANG_CD=F                          | 23       | 101          |
#      | 4380_LANG_CD=FR                         | 23       | 102          |
#      | 4380_LANG_CD small case =e              | 23       | 103          |
#      | 4380_LANG_CD small case =en             | 23       | 104          |
#      | 4380_LANG_CD small case =f              | 23       | 105          |
#      | 4380_LANG_CD small case =fr             | 23       | 106          |
#      | 4380_Do not Email Flag=N                | 23       | 107          |
#      | 4380_INDV_FRST_NM Is NOT NULL           | 23       | 108          |
#      | 4380_INDV_FRST_NM!=NULL                 | 23       | 109          |
#      | 4380_INDV_LAST_NM Is NOT NULL           | 23       | 110          |
#      | 4380_INDV_LAST_NM!=NULL                 | 23       | 111          |
#      | 4380_VLD_EMAIL_F=Y                      | 23       | 113          |
#      | 4380_Prv_Bnk_Ind=N                      | 23       | 112          |
#      | 4380_EMPLOYEE_STAFF_F=N                 | 23       | 114          |
#      | 4380_EMPLOYEE_STAFF_F=NULL              | 23       | 115          |
#      | 4380_SRC_ACCT_STAT_CD-A                 | 23       | 116          |
#      | 4380_ACCT_SUBSYS_ID_=BB                 | 23       | 117          |
#      | 4380_PRIM_EMAIL_ADDR !=NULL             | 23       | 118          |
#      | 4380_PRD CD- 01, SUB PRD CD -01         | 23       | 119          |
#      | 4380_PRD CD- 01, SUB PRD CD -02         | 23       | 110          |
#      | 4380_PRD CD- 01, SUB PRD CD -03         | 23       | 121          |
#      | 4380_PRD CD- 01, SUB PRD CD -04         | 23       | 122          |
#      | 4380_PRD CD-02, SUB PRD CD -01          | 23       | 123          |
#      | 4380_PRD CD-02, SUB PRD CD -02          | 23       | 124          |
#      | 4380_PRD CD-02, SUB PRD CD -03          | 23       | 125          |
      ##| 4380_PRD CD-13, SUB PRD CD -01          | 23       | 126          |
      ##| 4380_PRD CD-13, SUB PRD CD -03          | 23       | 127          |
      ##| 4380_PRD CD-13, SUB PRD CD -07          | 23       | 128          |
      ##| 4380_PRD CD-13, SUB PRD CD -08          | 23       | 129          |
#      | 4380_PRD CD-07, SUB PRD CD -11          | 23       | 130          |
#      | 4380_PRD CD-07, SUB PRD CD -12          | 23       | 131          |
#      | 4380_PRD CD-19, SUB PRD CD -01          | 23       | 132          |
#      | 4380_PRD CD-19, SUB PRD CD -02          | 23       | 133          |
#      | 4380_PRD CD-19, SUB PRD CD -03          | 23       | 134          |
#      | 4380_PRD CD-19, SUB PRD CD -04          | 23       | 135          |
#      | 4380_PRD CD-19, SUB PRD CD -07          | 23       | 136          |
#      | 4380_PRD CD-19, SUB PRD CD -08          | 23       | 137          |
      ##| 4380_PRD CD-23, SUB PRD CD -01          | 23       | 138          |
      ##| 4380_PRD CD-23, SUB PRD CD -03          | 23       | 139          |
#      | 4380_Account Open Date equal to 25 days | 25       | 140          |
#      | 4380_Account Open Date equal to 23 days | 23       | 141          |
#      | 4380_Account Open Date >23 and <25 days | 24       | 142          |
#      | 4380_LAST_BILL_PAYMENT =NULL            | 23       | 144          |
#      | 4380_PAC_PAD_F =1                       | 23       | 145          |
#      | 4380_PAC_PAD_F =2                       | 23       | 146          |
#      | 4380_CC_VIP_IND !=2,9                   | 23       | 147          |
#      | 4380_CC_VIP_IND = NULL                  | 23       | 148          |
#      | 4380_Primary_Acct_Holder_Flag=Y         | 23       | 149          |
      ##| 4380_CUST_OPND_DT = 90 DAYS             | 23       | 90           |
      ##| 4380_CUST_OPND_DT < 90 DAYS             | 23       | 80           |
#      | 4380_CUST_OPND_DT > 90 DAYS             | 23       | 93           |
#      | 4380_CUST_OPND_DT  = NULL               | 23       | NULL         |

      # Added for Feb 18 Rls 2023
      | 4380_HAS_CLOSED_CHQ_F !=Y      | 23       | 138          |
      | 4380_HAS_CLOSED_CHQ_F =Y       | 23       | 138          |
      | 4380_HAS_CLOSED_CHQ_F =NULL    | 23       | 138          |


  @D2DEngagementBillPayment @D2DEngagementBillPayment_NegativeTestData_4380 @Workstream-4 @4380 @EMAIL @RS18023
  Scenario Outline: D2D Engagement Bill Payment_RS18023_4380_EMAIL Create test data for negative testcases
    Given load data from "BillPayment" excel sheet
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
      | Test cases                                   | Acct_Odt | CUST_OPND_DT |
      | N_4380_PRIM_CNTRY_CD!=CA                     | 23       | 91           |
      | N_4380_PRIM_CNTRY_CD=Null                    | 23       | 92           |
      | N_4380_CUST_TP_CD != PSNL                    | 23       | 93           |
      | N_4380_CUST_TP_CD =  Null                    | 23       | 94           |
      | N_4380_DO_NOT_SOLICIT_F= Y                   | 23       | 95           |
      | N_4380_CUST_AGE Equal to 15                  | 23       | 96           |
      | N_4380_CUST_AGE Equal to Null                | 23       | 97           |
      | N_4380_CUST_AGE with in range (1-14)         | 23       | 98           |
      | N_4380_PRD CD- 01, SUB PRD CD -08            | 23       | 99           |
      | N_4380_PRD CD- 02, SUB PRD CD -04            | 23       | 100          |
      | N_4380_PRD CD- 07, SUB PRD CD -08            | 23       | 101          |
      | N_4380_PRD CD- 13, SUB PRD CD -12            | 23       | 102          |
      | N_4380_PRD CD- 18, SUB PRD CD -02            | 23       | 103          |
      | N_4380_PRD CD-18, SUB PRD CD -01             | 23       | 104          |
      | N_4380_PRD CD-18, SUB PRD CD -07             | 23       | 105          |
      | N_4380_PRD CD-18, SUB PRD CD -03             | 23       | 106          |
      | N_4380_PRD CD- 19, SUB PRD CD -11            | 23       | 107          |
      | N_4380_PRD CD-23, SUB PRD CD -02             | 23       | 108          |
      | N_4380_SRC_ACCT_STAT_CD!=A                   | 23       | 109          |
      | N_4380_SRC_ACCT_STAT_CD-Null                 | 23       | 110          |
      | N_4380_Account Open Date greater than 25days | 28       | 91           |
      | N_4380_Account Open Date equal to Null       | NULL     | 92           |
      | N_4380_Account Open Date less than 23        | 20       | 93           |
      | N_4380_Deceased_F=Y                          | 23       | 94           |
      | N_4380_Deceased_F=Null                       | 23       | 95           |
      | N_4380_LANG_CD=K                             | 23       | 96           |
      | N_4380_LANG_CD=N                             | 23       | 97           |
      | N_4380_LANG_CD=Null                          | 23       | 98           |
      | N_4380_LAST_BILL_PAYMENT=2020-10-10          | 23       | 99           |
      | N_4380_EMPLOYEE_STAFF_F=Y                    | 23       | 100          |
      | N_4380_ACCT_SUBSYS_ID=KS                     | 23       | 101          |
      | N_4380_Prv_Bnk_Ind=Null                      | 23       | 102          |
      | N_4380_Prv_Bnk_Ind=Y                         | 23       | 103          |
      | N_4380_Do not Email Flag=Y                   | 23       | 104          |
      | N_4380_INDV_FRST_NM=Blank                    | 23       | 105          |
      | N_4380_INDV_FRST_NM=NULL                     | 23       | 106          |
      | N_4380_INDV_LAST_NM=Blank                    | 23       | 107          |
      | N_4380_INDV_LAST_NM=NULL                     | 23       | 108          |
      | N_4380_VLD_EMAIL_F=N                         | 23       | 109          |
      | N_4380_PRIM_EMAIL_ADDR =NULL                 | 23       | 110          |
      | N_4380_CC_VIP_IND = 2                        | 23       | 91           |
      | N_4380_CC_VIP_IND = 9                        | 23       | 92           |
      | N_4380_Primary_Acct_Holder_Flag=N            | 23       | 93           |
      | N_4380_Primary_Acct_Holder_Flag=NULL         | 23       | 94           |