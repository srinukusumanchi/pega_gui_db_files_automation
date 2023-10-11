Feature: Batch file validation for Insurance Claim Reminder 5784


  @InsuranceClaimReminder_Email_5784_Batch_PositiveTCs_Validation
  Scenario Outline: Insurance Claim Reminder 5784_RS22075_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "InsuranceClaimReminder_EML" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "InsuranceClaimRemBatch" extract file with batch "CustomerAcctName;CreditCardNum;" Email Specific Text Header
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then Validate Insurance Claim Reminder offer details in batch file against database and pega
    Examples:
      | Test cases                                                          |
      | 5784_EML_BASE_01                                                                            |
      | 5784_EML_BASE_02                                                                            |
      | 5784_EML_BASE_03                                                                            |
      | 5784_EML_Seg_01_LANG_CD_eq_fr and DO_NOT_SOLICIT_F=NULL                                     |
      | 5784_CUST_LvL_EML_CUST_AGE = 18 and Unsubscribe=N                                           |
      | 5784_CUST_LvL_EML_CUST_AGE = 69                                                             |
      | 5784_CUST_LvL_Preference Category of MK_INSURANCE_EMAIL_F = NULL_HARDBOUNCE_EMAIL_F_eq_NULL |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=AXG and SRC_SYS_SUB_PRD_CD=GC                               |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=AXG and SRC_SYS_SUB_PRD_CD=GS                               |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=AXG and SRC_SYS_SUB_PRD_CD=PC                               |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=AXG and SRC_SYS_SUB_PRD_CD=SC                               |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=AXG and SRC_SYS_SUB_PRD_CD=SS                               |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VCL and SRC_SYS_SUB_PRD_CD=DM                               |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VCL and SRC_SYS_SUB_PRD_CD=NF                               |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VCL and SRC_SYS_SUB_PRD_CD=NH                               |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VCL and SRC_SYS_SUB_PRD_CD=RG                               |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VCL and SRC_SYS_SUB_PRD_CD=SC                               |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VCL and SRC_SYS_SUB_PRD_CD=SL                               |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VCL and SRC_SYS_SUB_PRD_CD=SS                               |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VCL and SRC_SYS_SUB_PRD_CD=ST                               |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VCL and SRC_SYS_SUB_PRD_CD=SV                               |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VCL and SRC_SYS_SUB_PRD_CD=ZZ                               |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VFA and SRC_SYS_SUB_PRD_CD=A1                               |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VFA and SRC_SYS_SUB_PRD_CD=A3                               |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VFF and SRC_SYS_SUB_PRD_CD=F1                               |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VFF and SRC_SYS_SUB_PRD_CD=TR                               |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VFF and SRC_SYS_SUB_PRD_CD=TS                               |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VGD and SRC_SYS_SUB_PRD_CD=NF                               |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VGD and SRC_SYS_SUB_PRD_CD=RG                               |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VGD and SRC_SYS_SUB_PRD_CD=SP                               |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VGD and SRC_SYS_SUB_PRD_CD=ST                               |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VLR and SRC_SYS_SUB_PRD_CD=NF                               |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VLR and SRC_SYS_SUB_PRD_CD=RC                               |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VLR and SRC_SYS_SUB_PRD_CD=RG                               |
      | 5784_EML_Acc_Lvl_SRC_SYS_PRD_CD=VUS and SRC_SYS_SUB_PRD_CD=RG                               |
      | 5784_EML_Acc_LvlCREDIT_ARREARS_DAYS = 120                                                   |
      | 5784_EML_Acc_LvlCREDIT_ARREARS_DAYS = 30                                                    |
      | 5784_Acc_Lvl_INS_STATUS_CODE = X AND Current Date -INSUR_STAT_LAST_CHNG_DT =40 days         |
      | 5784_Acc_Lvl_INS_STATUS_CODE = X AND Current Date -INSUR_STAT_LAST_CHNG_DT = 1 days         |
