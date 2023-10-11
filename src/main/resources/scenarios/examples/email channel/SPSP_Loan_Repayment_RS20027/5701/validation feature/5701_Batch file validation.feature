Feature: Batch file validation for SPSP Loan Repayment RS20027
#  Properties	          Description	               Mandatory(Y/N)	PegaSource	DatabaseTable	    Database Field	                           Comments
#  .CUST_ID	             Customer ID	                Y	             Database	CUST_DIM	        CIS_CUST_ID
#  .PRIM_EMAIL_ADDR	     Email Address	                Y	             Database	CUST_DIM	        PRIM_EMAIL_ADDR
#  .INDV_TTL_NM	         Individual Title	            N	             Database	CUST_DIM	        INDV_TTL_NM
#  .INDV_FRST_NM	     Individual First Name	        Y	             Database	CUST_DIM	        INDV_FRST_NM
#  .INDV_LAST_NM	     Individual Last Name	        N	             Database	CUST_DIM	        INDV_LAST_NM
#  .LanguageCode	     Language Code	                Y	             Database	CUST_DIM	        LANG_CD	Format:                         Uppercase first letter (i.e. 'E')
#  .OfferExpiry	         Offer expiry date	            N	             Database 	ACCT_DIM	        CLI_OFR_EXP_DT  	                    Earliest expiry from all eligible customer/account. Example: 20200506 (need to remove dashes
#                               +
#                           Strategy
#  Offer Code	         OfferID (pyName)	            Y	             Action	    pyName	            Last 4 digits (remove 'CIE')
#  Campaign Code	     Campaign code	                Y	             Action	    Campaign Code
#  .CreativeID	         CreativeID	                    Y	             Action  	Creative ID		                                            Default will be from Action. Strategy can overwrite if there is segmentation logic.
#                           or
#                         Strategy
#  .pxInteractionID	     Pega's Interaction ID	        Y	             Strategy	Foundation
#  Response tracking code Pega's Response tracking code	Y	             Strategy	Foundation	        InteractionID+'_'pyName
#  Mail ID	             Mail ID	                    N	             Strategy	Unique Number		                                        Need to be the same as DM file
#                                                                                      starting from
#                                                                                      2 Alpha characters
#                                                                                      + 6 Numeric values
#  Emailspecifictext	 Proof of Enrollment Date	    Y	             Database	ACCT_DIM	STUDY_END_DT + 150 Days	Format: YYYY-MM-DD
#  Preference Category		                            Y			      value of 'NA'


  @SPSPLoanRepayment @SPSPLoanRepayment_Email_DatFile_Positive_Validation_5701 @5701 @EMAIL @RS20027  @AUTOTESTTOTAL#21
  Scenario Outline: SPSPLoanRepaymentEmail_RS20027_5701_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "SPSPLoanRepayment_EML" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read SPSP Loan Repayment Details "SPSP" extract file customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate SPSP Loan Repayment offer details in batch file against database and pega
    Examples:
      | Test cases                                                     |
      | 5701_CUST_TP_CD=PSNL                                           |
      | 5701_PRIM_CNTRY_CD = CA                                        |
      | 5701_LANG_CD in en                                             |
      | 5701_LANG_CD in fr                                             |
      | 5701_EMPLOYEE_STAFF_F = N                                      |
      | 5701_EMPLOYEE_STAFF_F = null                                   |
      | 5701_MRKTBLE_F = Y                                             |
      | 5701_Valid Email Flag = Y                                      |
      | 5701_PRIM_EMAIL_ADDR != NULL                                   |
      | 5701_INDV_FRST_NM!=NULL                                        |
      | 5701_CUST_AGE = NULL                                           |
      | 5701_DO_NOT_EMAIL_F = Y                                        |
      | 5701_DO_NOT_EMAIL_F = NULL                                      |
      | 5701_ACCT_SUBSYS_ID=KS                                         |
      | 5701_SRC_ACCT_STAT_CD=Open                                     |
      | 5701_SRC_SYS_PRD_CD = SSL                                      |
      | 5701_SRC_SYS_SUB_PRD_CD = SP                                   |
      | 5701_Current Date - STUDY_END_DT  = 120 Days                   |
      | 5701_Current Date - STUDY_END_DT  = 125 Days                   |
      | 5701_Current Date - STUDY_END_DT  in 120 and 125 days          |
      | 5701_INSIGHT_CD = FLG_SPSP_REPAYMENT_RS20027 and CURR_VAL! = 1 |


  @SPSPLoanRepayment @SPSPLoanRepayment_Email_DatFile_Negative_Validation_5701 @5701 @EMAIL @RS20027  @AUTOTESTTOTAL#27
  Scenario Outline: SPSPLoanRepaymentEmail_RS20027_5701_EMAIL Validate batch file details against database and pega for Negative test cases
    Given load data from "SPSPLoanRepayment_EML" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read SPSP Loan Repayment Details "SPSP" extract file customer offer details
    Then validate SPSP Loan offer details should not display in batch file
    Examples:
      | Test cases                                                      |
      | N_5701_CUST_TP_CD!=PSNL                                         |
      | N_5701_DECEASED_F = Y                                           |
      | N_5701_DECEASED_F = NULL                                        |
      | N_5701_PRIM_CNTRY_CD != CA                                      |
      | N_5701_PRIM_CNTRY_CD = NULL                                     |
      | N_5701_LANG_CD not in (en,fr)                                   |
      | N_5701_LANG_CD = NULL                                           |
      | N_5701_EMPLOYEE_STAFF_F = Y                                     |
      | N_5701_MRKTBLE_F != Y                                           |
      | N_5701_MRKTBLE_F = NULL                                         |
      | N_5701_Valid Email Flag != Y                                    |
      | N_5701_Valid Email Flag = NULL                                  |
      | N_5701_PRIM_EMAIL_ADDR = NULL                                   |
      | N_5701_INDV_FRST_NM = NULL                                      |
      | N_5701_ACCT_SUBSYS_ID != KS                                     |
      | N_5701_SRC_ACCT_STAT_CD != Open                                 |
      | N_5701_SRC_SYS_PRD_CD != SSL                                    |
      | N_5701_SRC_SYS_SUB_PRD_CD != SP                                 |
      | N_5701_ACCT_SUBSYS_ID = NULL                                    |
      | N_5701_SRC_ACCT_STAT_CD = NULL                                  |
      | N_5701_SRC_SYS_PRD_CD = NULL                                    |
      | N_5701_SRC_SYS_SUB_PRD_CD = NULL                                |
      | N_5701_Current Date - STUDY_END_DT  = 119 Days                  |
      | N_5701_Current Date - STUDY_END_DT  = 126 Days                  |
      | N_5701_Current Date - STUDY_END_DT  < 120 Days                  |
      | N_5701_Current Date - STUDY_END_DT  > 125 Days                  |
      | N_5701_INSIGHT_CD = FLG_SPSP_REPAYMENT_RS20027 and CURR_VAL = 1 |

