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


  @SPSPLoanRepayment @SPSPLoanRepayment_Email_DatFile_Positive_Validation_5702 @5702 @EMAIL @RS20027  @AUTOTESTTOTAL#21
  Scenario Outline: SPSPLoanRepaymentEmail_RS20027_5702_EMAIL Validate batch file details against database and pega for Positive test cases
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
      | 5702_DECEASED_F = N                                            |
      | 5702_PRIM_CNTRY_CD = CA                                        |
      | 5702_LANG_CD in en                                             |
      | 5702_LANG_CD in fr                                             |
      | 5702_EMPLOYEE_STAFF_F = N                                      |
      | 5702_EMPLOYEE_STAFF_F = null                                   |
      | 5702_MRKTBLE_F = Y                                             |
      | 5702_Valid Email Flag = Y                                      |
      | 5702_PRIM_EMAIL_ADDR != NULL                                   |
      | 5702_INDV_FRST_NM!=NULL                                        |
      | 5702_CUST_AGE = NULL                                           |
      | 5702_DO_NOT_EMAIL_F = Y                                        |
      | 5702_DO_NOT_EMAIL_F = NULL                                      |
      | 5702_ACCT_SUBSYS_ID=KS                                         |
      | 5702_SRC_ACCT_STAT_CD=Open                                     |
      | 5702_SRC_SYS_PRD_CD = SSL                                      |
      | 5702_SRC_SYS_SUB_PRD_CD = SP                                   |
      | 5702_Current Date - STUDY_END_DT  = 140 Days                   |
      | 5702_Current Date - STUDY_END_DT  = 149 Days                   |
      | 5702_Current Date - STUDY_END_DT  in 140 and 149 days          |
      | 5702_INSIGHT_CD = FLG_SPSP_REPAYMENT_RS20027 and CURR_VAL! = 1 |


  @SPSPLoanRepayment @SPSPLoanRepayment_Email_DatFile_Negative_Validation_5702 @5702 @EMAIL @RS20027  @AUTOTESTTOTAL#27
  Scenario Outline: SPSPLoanRepaymentEmail_RS20027_5702_EMAIL Validate batch file details against database and pega for Negative test cases
    Given load data from "SPSPLoanRepayment_EML" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read SPSP Loan Repayment Details "SPSP" extract file customer offer details
    Then validate SPSP Loan offer details should not display in batch file
    Examples:
      | Test cases                                                      |
      | N_5702_CUST_TP_CD!=PSNL                                         |
      | N_5702_DECEASED_F = Y                                           |
      | N_5702_DECEASED_F = NULL                                        |
      | N_5702_PRIM_CNTRY_CD != CA                                      |
      | N_5702_PRIM_CNTRY_CD = NULL                                     |
      | N_5702_LANG_CD not in (en,fr)                                   |
      | N_5702_LANG_CD = NULL                                           |
      | N_5702_EMPLOYEE_STAFF_F = Y                                     |
      | N_5702_MRKTBLE_F != Y                                           |
      | N_5702_MRKTBLE_F = NULL                                         |
      | N_5702_Valid Email Flag != Y                                    |
      | N_5702_Valid Email Flag = NULL                                  |
      | N_5702_PRIM_EMAIL_ADDR = NULL                                   |
      | N_5702_INDV_FRST_NM = NULL                                      |
      | N_5702_ACCT_SUBSYS_ID != KS                                     |
      | N_5702_SRC_ACCT_STAT_CD != Open                                 |
      | N_5702_SRC_SYS_PRD_CD != SSL                                    |
      | N_5702_SRC_SYS_SUB_PRD_CD != SP                                 |
      | N_5702_ACCT_SUBSYS_ID = NULL                                    |
      | N_5702_SRC_ACCT_STAT_CD = NULL                                  |
      | N_5702_SRC_SYS_PRD_CD = NULL                                    |
      | N_5702_SRC_SYS_SUB_PRD_CD = NULL                                |
      | N_5702_Current Date - STUDY_END_DT  = 139 Days                  |
      | N_5702_Current Date - STUDY_END_DT  = 150 Days                  |
      | N_5702_Current Date - STUDY_END_DT  < 140 Days                  |
      | N_5702_Current Date - STUDY_END_DT  > 149 Days                  |
      | N_5702_INSIGHT_CD = FLG_SPSP_REPAYMENT_RS20027 and CURR_VAL = 1 |