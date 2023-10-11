Feature: Batch file validation for NTC Campaign Email Campaign

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
#  .EmailSpecificText	    Email Specific Text (Name / Value pair)
#  Example: “AcctNum:” + .ACCT_NUM + “|LastName:”+”.INDV_LAST_NM+”|AcctBal:”+.ACCT_BAL_AMT


  @NTCCampaignEmail @NTCCampaignEmail_DatFile_Positive_Validation_5043 @Workstream-4 @5043 @EMAIL @RS20034
  Scenario Outline: NTC_RS20034_5043_EMAIL Validate NTC_RS20034_5043_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "NTC" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read NTC "BatchNTCFeeWaiver" extract file customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate NTC offer details in batch file against database and pega
    Examples:
      | Test cases                                                      |
      | Validating EMAIL for 5043 - Personal customer                   |
      | Validating EMAIL for 5043 - DNS as N                            |
      | Validating EMAIL for 5043 - Age equal to 18 years               |
      | Validating EMAIL for 5043 - Age greater than 18 years           |
      | Validating EMAIL for 5043 - Marketable Flag as Y                |
      | Validating EMAIL for 5043 - Deceased Flag as N                  |
      | Validating EMAIL for 5043 - Language Code as EN                 |
      | Validating EMAIL for 5043 - Language Code as FR                 |
      | Validating EMAIL for 5043 - Language Code as E                  |
      | Validating EMAIL for 5043 - Language Code as F                  |
      | Validating EMAIL for 5043 - Language Code as small case =en     |
      | Validating EMAIL for 5043 - Language Code as small case =fr     |
      | Validating EMAIL for 5043 - Language Code as small case =e      |
      | Validating EMAIL for 5043 - Language Code as small case =f      |
      | Validating EMAIL for 5043 - IMMGRTN_CAT_CD ! = S                |
      | Validating EMAIL for 5043 - MCB_IND - Y                         |
      | Validating EMAIL for 5043 - Country Code - CA                   |
      | Validating EMAIL for 5043 - EMPLOYEE_STAFF_F - N                |
      | Validating EMAIL for 5043 - BBDWSC_SC_WAIVE_FLAG = 1            |
      | Validating EMAIL for 5043 - BBDWSC_FEE_WAIVER_TYPE = NTC        |
      | Validating EMAIL for 5043 - BBDWSC_SC_EXPIRY_DATE = 60th DAY    |
      | Validating EMAIL for 5043 - BBDWSC_SC_EXPIRY_DATE > 60 and < 65 |
      | Validating EMAIL for 5043 - Fee Waiver Expiry Date = 65th DAY   |
      | Validating EMAIL for 5043 - Primary Account Holder - Y          |
      | Validating EMAIL for 5043 - VLD_EMAIL_F - Y                     |
      | Validating EMAIL for 5043 - DO_NOT_EMAIL_F - N                  |
      | Validating EMAIL for 5043 - Acct_subsys_id = BB                 |
      | Validating EMAIL for 5043 - Acct_subsys_id = KS                 |
      | Validating EMAIL for 5043 - Acct_subsys_id = AV                 |


  @NTCCampaignEmail @NTCCampaignEmail_DatFile_Negative_Validation_5043 @Workstream-4 @5043 @EMAIL @RS20034
  Scenario Outline: NTC_RS20034_5043_EMAIL Validate NTC_RS20034_5043_EMAIL Validate batch file details against database and pega for Negative test cases
    Given load data from "NTC" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read NTC "BatchNTCFeeWaiver" extract file customer offer details
    Then validate NTC offer details should not display in batch file
    Examples:
      | Test cases                                                               |
      | N-Validating EMAIL for 5043 - Non Personal customer                      |
      | N-Validating EMAIL for 5043 - Country Code - other than CA               |
      | N-Validating EMAIL for 5043 - Country Code NULL                          |
      | N-Validating EMAIL for 5043 - DNS as Y                                   |
      | N-Validating EMAIL for 5043 - Age Less than 18 years                     |
      | N-Validating EMAIL for 5043 - Age is NULL                                |
      | N-Validating EMAIL for 5043 - Marketable Flag as N                       |
      | N-Validating EMAIL for 5043 - Marketable Flag as NULL                    |
      | N-Validating EMAIL for 5043 - Deceased Flag as Y                         |
      | N-Validating EMAIL for 5043 - Deceased Flag as NULL                      |
      | N-Validating EMAIL for 5043 - Language Code NE                           |
      | N-Validating EMAIL for 5043 - Language Code K                            |
      | N-Validating EMAIL for 5043 - Language Code NULL                         |
      | N-Validating EMAIL for 5043 - IMMGRTN_CAT_CD is S                        |
      | N-Validating EMAIL for 5043 - IMMGRTN_CAT_CD is S00                      |
      | N-Validating EMAIL for 5043 - MCB_IND - N                                |
      | N-Validating EMAIL for 5043 - MCB_IND - NULL                             |
      | N-Validating EMAIL for 5043 - EMPLOYEE_STAFF_F - Y                       |
      | N-Validating EMAIL for 5043 - BBDWSC_SC_WAIVE_FLAG - other than 1        |
      | N-Validating EMAIL for 5043 - BBDWSC_SC_WAIVE_FLAG as NULL               |
      | N-Validating EMAIL for 5043 - BBDWSC_FEE_WAIVER_TYPE - other than NTC    |
      | N-Validating EMAIL for 5043 - BBDWSC_FEE_WAIVER_TYPE as NULL             |
      | N-Validating EMAIL for 5043 - Fee Waiver Expiry Date less than 60 days   |
      | N-Validating EMAIL for 5043 - BBDWSC_SC_EXPIRY_DATE greater than 65 days |
      | N-Validating EMAIL for 5043 - BBDWSC_SC_EXPIRY_DATE NULL                 |
      | N-Validating EMAIL for 5043 - Primary Account Holder - N                 |
      | N-Validating EMAIL for 5043 - Primary Account Holder - NULL              |
      | N-Validating EMAIL for 5043 - VLD_EMAIL_F - N                            |
      | N-Validating EMAIL for 5043 - VLD_EMAIL_F - NULL                         |
      | N-Validating EMAIL for 5043 - DO_NOT_EMAIL_F - Y                         |
      | N-Validating EMAIL for 5043 - DO_NOT_EMAIL_F - NULL                      |
