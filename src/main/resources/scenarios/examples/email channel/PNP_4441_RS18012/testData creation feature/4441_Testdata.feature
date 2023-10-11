Feature: Test data creation for PNP Account Overdrawn Notification


#  As part of D2D Early Engagement Program, this Digital Adoption message will target new and existing customers
#  to introduce them to their new D2D account / Scotiabank.
#  It also include a test of the target population who are NEW TO BANK based on Customer relationship date within the last 7 days
  @PNPAccountOverdrawnNotification @PNPAccountOverdrawnNotification_Positive_TestData_4441 @Workstream-4 @4441 @EMAIL @RS18012
  Scenario Outline: PNP Account Overdrawn Notification_RS18012_4441_EMAIL Create test data for positive test cases
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table

    Examples:
      | Test cases                    |
      | 4441_CUST_TP_CD=PSNL          |
      | 4441_VLD_EMAIL_F -Y           |
      | 4441_INDV_BRTH_DT !=NULL      |
      | 4441_INDV_BRTH_DT_ is NULL    |
      | 4441_CUST_AGE_Greater than 18 |
      | 4441_CUST_AGE_Equal to 18     |
      | 4441_Deceased_F=N             |
      | 4441_Prv_Bnk_Ind=N            |
      | 4441_LANG_CD=E                |
      | 4441_LANG_CD=EN               |
      | 4441_LANG_CD=F                |
      | 4441_LANG_CD=FR               |
      | 4441_LANG_CODE_usage=e        |
      | 4441_LANG_CODE_usage=en       |
      | 4441_LANG_CODE_usage=f        |
      | 4441_LANG_CODE_usage=fr       |
      | 4441_PRIM_EMAIL_ADDR ! = Null |
      | 4441_INDV_FRST_NM  not Null   |
      | 4441_INDV_LAST_NM not Null    |
      | 4441_DO_NOT_EMAIL_F=N         |
      | 4441_DO_NOT_EMAIL_F=NULL      |
      | 4441_DO_NOT_EMAIL_F=Y         |




  @PNPAccountOverdrawnNotification @PNPAccountOverdrawnNotification_NegativeTestData @Workstream-4 @4441 @EMAIL @RS18012
  Scenario Outline: PNP Account Overdrawn Notification_RS18012_4441_EMAIL Create test data for negative test cases
    Given write cid into "CUST_DIM" sheet for "<Test cases>"
    When read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then insert customer information details in "CUST_DIM" table
    When write account number into "ACCT_DIM" sheet for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then insert customer account details in "ACCT_DIM" table
    When read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then insert customer and account details in "CUST_ACCT_RLTNP_DIM" table

    Examples:
      | Test cases                       |
      | N-4441_CUST_TP_CD != PSNL        |
      | N-4441_CUST_TP_CD =  Null        |
      | N-4441_VLD_EMAIL_F -N            |
      | N-4441_VLD_EMAIL_F -Null         |
      | N-4441_INDV_BRTH_DT_ is NULL     |
      | N-4441_Cust_Age < 18             |
      | N-4441_Cust_Age is NULL          |
      | N-4441_INDV_INDV_FRST_NM =  Null |
      | N-4441_INDV_LAST_NM = Null       |
      | N-4441_Deceased_F = Y            |
      | N-4441_Deceased_F=Null           |
      | N-4441_Prv_Bnk_Ind=Null          |
      | N-4441_Prv_Bnk_Ind=Y             |
      | N-4441_LANG_CD = K               |
      | N-4441_LANG_CD = NE              |
      | N-4441_LANG_CD = A               |
      | N-4441_LANG_CD = RF              |
      | N-4441_LANG_CD = NULL            |
      | N-4441_PRIM_EMAIL_ADDR = Null    |

