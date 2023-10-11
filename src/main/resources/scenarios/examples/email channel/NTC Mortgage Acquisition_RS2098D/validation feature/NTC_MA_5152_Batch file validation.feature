Feature: Batch file validation for NTC Mortgage Acquisition 5152

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
#  Preference Category - CUST_DIM column name = eBK_INF

  @NTCMortgageAcquisitionEMAIL @NTCMAEmail_BatchFile_Positive_Validation_TestData @EMAIL @RS2098D @AUTOTESTTOTAL#61
  Scenario Outline: NTC Mortgage Acquisition_5152_RS2098D_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "NTCMAEmail" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read NTCMortgageAcquisition "NTCMA" extract file with Preference customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate  NTC Mortgage Acquisition offer details in batch file against database and pega
    Examples:
      | Test cases                                                                                                     |
      | 5152_DECEASED_F = N                                                                                            |
      | 5152_CUST_TP_CD = PSNL                                                                                         |
      | 5152_Primary Country Cd = CA                                                                                   |
      | 5152_CUST_AGE =18                                                                                              |
      | 5152_CUST_AGE > 18                                                                                             |
      | 5152_LANG_CD in E                                                                                              |
      | 5152_LANG_CD in EN                                                                                             |
      | 5152_LANG_CD in F                                                                                              |
      | 5152_LANG_CD in FR                                                                                             |
      | 5152_LANG_CD in Small Case e                                                                                   |
      | 5152_LANG_CD in Small Case en                                                                                  |
      | 5152_LANG_CD in Small Case f                                                                                   |
      | 5152_LANG_CD in Small Case fr                                                                                  |
      | 5152_DO_NOT_SOLICIT_F !=  Y                                                                                    |
      | 5152_DO_NOT_SOLICIT_F =  NULL                                                                                  |
      | 5152_MRKTBLE_F =  Y                                                                                            |
      | 5152_IMMGRTN_CAT_CD not in (S , S00)                                                                           |
      | 5152_Physicians_F != Y                                                                                         |
      | 5152_Physicians_F = NULL                                                                                       |
      | 5152_MCB_IND = Y                                                                                               |
      | 5152_ARRV_DT <  3 years                                                                                        |
      | 5152_ARRV_DT =  3 years                                                                                        |
      | 5152_ACCT_ODT = 271                                                                                            |
      | 5152_ACCT_ODT = 276                                                                                            |
      | 5152_DO_NOT_EMAIL_F = N                                                                                        |
      | 5152_VLD_EMAIL_FLAG = Y                                                                                        |
      | 5152_PRIM_EMAIL_ADDR != NULL                                                                                   |
      | 5152_INDV_FIRST_NAME != NULL                                                                                   |
      | 5152_MK_BK_INFO_ACCTS_EMAIL_F != N                                                                             |
      | 5152_MK_BK_INFO_ACCTS_EMAIL_F = NULL                                                                           |
      | 5152_ACCT_SUBSYS_ID = BB                                                                                       |
      | 5152_SRC_SACCT_STAT_CD = A                                                                                     |
      | 5152_ACCT_ODT in (271-276)                                                                                     |
      | 5152_PRD CD = 13 && SUB PRD CD IN (01 OR 03 OR 07 OR 08)                                                       |
      | 5152_PRIMARY_ACCT_HOLDER_FLAG = Y                                                                              |
      | 5152_5152022201_IMMGRTN_CAT_CD in FW                                                                           |
      | 5152_5152022201_IMMGRTN_CAT_CD in FW0                                                                          |
      | 5152_5152022202_IMMGRTN_CAT_CD in C1                                                                           |
      | 5152_5152022202_IMMGRTN_CAT_CD in C2                                                                           |
      | 5152_5152022202_IMMGRTN_CAT_CD in EN2                                                                          |
      | 5152_5152022202_IMMGRTN_CAT_CD in FC1                                                                          |
      | 5152_5152022202_IMMGRTN_CAT_CD in FC2                                                                          |
      | 5152_5152022202_IMMGRTN_CAT_CD in FC3                                                                          |
      | 5152_5152022202_IMMGRTN_CAT_CD in PV1                                                                          |
      | 5152_5152022202_IMMGRTN_CAT_CD in PV2                                                                          |
      | 5152_5152022202_IMMGRTN_CAT_CD in SE2                                                                          |
      | 5152_5152022202_IMMGRTN_CAT_CD in STP                                                                          |
      | 5152_5152022202_IMMGRTN_CAT_CD in SW1                                                                          |
      | 5152_5152022202_IMMGRTN_CAT_CD in SW2                                                                          |
      | 5152_5152022202_IMMGRTN_CAT_CD in SW3                                                                          |
      | 5152_5152022202_IMMGRTN_CAT_CD in NV5                                                                          |
      | 5152_5152022202_IMMGRTN_CAT_CD in 999                                                                          |
      | 5152_5152022202_IMMGRTN_CAT_CD in 000                                                                          |
      | 5152_1Preferred_With_SRC_SACCT_STAT_CD = NA && PRD CD = 01 && SUB PRD CD IN (01 or 02 or 03 or 04)             |
      | 5152_1Preferred_With_SRC_SACCT_STAT_CD = NA && PRD CD = 02 && SUB PRD CD IN (01 or 02 or 03)                   |
      | 5152_1Preferred_With_SRC_SACCT_STAT_CD = NA && PRD CD = 19 && SUB PRD CD IN (01 or 02 or 03 or 04 or 07 or 08) |
      | 5152_1Preferred_With_SRC_SACCT_STAT_CD = NA && PRD CD = 07 && SUB PRD CD IN (11 or 12)                         |
      | 5152_1Preferred_With_SRC_SACCT_STAT_CD = NA && PRD CD = 13 && SUB PRD CD IN (01 or 03 or 07 or 08)             |
      | 5152_1Preferred_With_SRC_SACCT_STAT_CD = NA && PRD CD = 23 && SUB PRD CD IN (01 or 03)                         |
      | 5152_1Preferred_With_ACCT_SUBSYS_ID = UO AND SRC_ACCT_STAT_CD! = Active                                        |
      | 5152_1Preferred_With_ACCT_SUBSYS_ID! = UO AND SRC_ACCT_STAT_CD = Active                                        |

  @NTCMortgageAcquisitionEMAIL @NTCMAEmail_BatchFile_Negative_Validation_TestData @EMAIL @RS2098D @AUTOTESTTOTAL#49
  Scenario Outline: NTC Mortgage Acquisition_5152_RS2098D_EMAIL Validate batch file details against database and pega for Negative test cases
    Given load data from "NTCMAEmail" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read NTCMortgageAcquisition "NTCMA" extract file with Preference customer offer details
    Then validate the latest offer details should not display in batch file
    Examples:
      | Test cases                                                               |
      | N_5152_DECEASED_F = Y                                                    |
      | N_5152_DECEASED_F = NULL                                                 |
      | N_5152_CUST_TP_CD != PSNL                                                |
      | N_5152_Primary Country Cd != CA                                          |
      | N_5152_Primary Country Cd = NULL                                         |
      | N_5152_CUST_AGE = 17                                                     |
      | N_5152_CUST_AGE = NULL                                                   |
      | N_5152_LANG_CD in K                                                      |
      | N_5152_LANG_CD in NE                                                     |
      | N_5152_LANG_CD in NULL                                                   |
      | N_5152_DO_NOT_SOLICIT_F =  Y                                             |
      | N_5152_MRKTBLE_F =  N                                                    |
      | N_5152_MRKTBLE_F =  NULL                                                 |
      | N_5152_IMMGRTN_CAT_CD not in S00                                         |
      | N_5152_IMMGRTN_CAT_CD not in S                                           |
      | N_5152_IMMGRTN_CAT_CD = NULL                                             |
      | N_5152_Physicians_F = Y                                                  |
      | N_5152_MCB_IND = N                                                       |
      | N_5152_MCB_IND = NULL                                                    |
      | N_5152_ARRV_DT > 3 years                                                 |
      | N_5152_ACCT_ODT = 1                                                      |
      | N_5152_ACCT_ODT < 271                                                    |
      | N_5152_ACCT_ODT > 276                                                    |
      | N_5152_ACCT_ODT = NULL                                                   |
      | N_5152_ACCT_SUBSYS_ID! = BB                                              |
      | N_5152_SRC_SACCT_STAT_CD! = A                                            |
      | N_5152_PRD CD = 01 && SUB PRD CD IN (01,02,03,04)                        |
      | N_5152_PRD CD = 02 && SUB PRD CD IN (01,02,03)                           |
      | N_5152_PRD CD = 19 && SUB PRD CD IN (01,02,03,04,07,08)                  |
      | N_5152_PRD CD = 07 && SUB PRD CD IN (11,12)                              |
      | N_5152_PRD CD = 23 && SUB PRD CD IN (01,03)                              |
      | N_5152_DO_NOT_EMAIL_F = Y                                                |
      | N_5152_DO_NOT_EMAIL_F = NULL                                             |
      | N_5152_VLD_EMAIL_FLAG = NULL                                             |
      | N_5152_VLD_EMAIL_FLAG = N                                                |
      | N_5152_PRIM_EMAIL_ADDR = NULL                                            |
      | N_5152_PRIM_EMAIL_ADDR = BLANK                                           |
      | N_5152_INDV_FIRST_NAME = NULL                                            |
      | N_5152_INDV_FIRST_NAME = BLANK                                           |
      | N_5152_MK_BK_INFO_ACCTS_EMAIL_F = N                                      |
      | N_5152_PRIMARY_ACCT_HOLDER_FLAG = N                                      |
      | N_5152_PRIMARY_ACCT_HOLDER_FLAG = NULL                                   |
      | N_5152_1Preferred_With_PRD CD = 01 && SUB PRD CD IN (01,02,03,04)        |
      | N_5152_1Preferred_With_PRD CD = 02 && SUB PRD CD IN (01,02,03)           |
      | N_5152_1Preferred_With_PRD CD = 19 && SUB PRD CD IN (01,02,03,04,07,08)  |
      | N_5152_1Preferred_With_PRD CD = 07 && SUB PRD CD IN (11,12)              |
      | N_5152_1Preferred_With_PRD CD = 13 && SUB PRD CD IN (01,03,07,08)        |
      | N_5152_1Preferred_With_PRD CD = 23 && SUB PRD CD IN (01,03)              |
      | N_5152_1Preferred_With_ACCT_SUBSYS_ID = UO AND SRC_ACCT_STAT_CD = Active |
