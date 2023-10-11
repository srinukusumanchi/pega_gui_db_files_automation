@Smoke_Batch_Validation
Feature: Validation of Batch file Smoke scenarios for all channels

  ##########################EMAIL#############################

  @EMAIL @Workstream-4  @D2D_SANITY
    @D2DEngagementWelcome  @4330 @4331 @4332 @4334 @4658 @RS17103
    @D2DEngagementMappingTomorrow @4402 @WD18055
    @D2DEngagementFundAccount @4315 @RS18022
    @D2DEngagementDigitalAdoption @4235 @RS17104
    @CrossSell @4891 @4892 @4893 @4894 @RS19067
  Scenario Outline: D2D Engagement Email channel Validate for batch file smoke test cases
    Given load data from "Smoke" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read D2D "BatchD2D" extract file with Preference customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate D2D offer details in batch file against database and pega
    Examples:
      | Test cases                      |
      | 4330_D2D Welcome_BBA            |
      | 4331_D2D Welcome_BBP            |
      | 4332_D2D Welcome_ScotiaOne      |
      | 4334_D2D Welcome_StudentBanking |
      | 4658_D2D Welcome_Ultimate       |
#      | 4363_Reward Reinforcement       |
#      | 4402_MappingTomorrow            |
      | 4315_Fund Account               |
      | 4235_D2D Digital Adoption       |
      | 4891_CrossSell                  |
      | 4892_CrossSell                  |
      | 4893_CrossSell                  |
      | 4894_CrossSell                  |


  @D2DEngagementPADPayment @4316 @4380 @RS18023
    @D2DEngagementReward @4363 @4364 @4366 @RS18024
    @D2DEngagementVisaDebit @4368 @RS18040
    @D2DEngagementInteracFlash @4367 @RS18039
    @D2DEngagementDigitalPayment @4399 @4400 @4401 @WD18054 @SmokeTest
  Scenario Outline: D2D Engagement Email channel Validate for batch file smoke test cases
    Given load data from "Smoke" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read D2D "BatchD2D" extract file with Preference customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate D2D offer details without casl update in batch file against database and pega
    Examples:
      | Test cases                    |
      | 4364_Reward Reinforcement     |
      | 4364_Reward Reinforcement_NTC |
      | 4366_Reward Reinforcement     |
      | 4366_Reward Reinforcement_NTC |
      | 4316_Bill Payment             |
      | 4380_Bill Payment             |
      | 4368_Visa Debit               |
#      | 4367_Interac Flash            |
#      | 4399_Digital Payment          |
#      | 4400_Digital Payment          |
#      | 4401_Digital Payment          |

#  @ChannelAdoptionEngagementPromoteMobileDeposit @RDC @4272 @RS18016
#  Scenario Outline: Remote deposit capture Email channel Validate for batch file  smoke test cases
#    Given load data from "Smoke" excel sheet
#    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
#    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
#    And read RDC "BatchRDC" extract file customer offer details
#    And the user navigates to pega url
#    When the user enters user name, password and click on login in pega Login screen
#    And click on interaction History by customer link
#    And click on actions and run in interactions history By customer screen
#    And click on period link and clear today value
#    And enter customer id in ih by customer screen and get IH table data
#    Then validate RDC offer details in batch file against database and pega
#    Examples:
#      | Test cases                  |
#      | 4272_Remote Deposit Capture |

  @Workstream-4 @EMAIL
    @EMOB_Batch_Sanity
    @Touch-7  @2437 @2438 @2441 @2445 @2446 @2447 @4749 @4954 @4955 @4957 @5894 @VS16008
  Scenario Outline: EMOB Email channel Validate for batch file smoke test cases for EMOB Touch 7
    Given load data from "Smoke" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read EMOB "BatchEMOB" extract file customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate EMOB offer details in batch file against database and pega
    Examples:
      | Test cases       |
      | 2437_Touch7_EMOB |
      | 2438_Touch7_EMOB |
      | 2441_Touch7_EMOB |
      | 2445_Touch7_EMOB |
      | 2446_Touch7_EMOB |
      | 2447_Touch7_EMOB |
      | 4749_Touch7_EMOB |
      | 4954_Touch7_EMOB |
      | 4955_Touch7_EMOB |
      | 4957_Touch7_EMOB |
      | 5894_Touch7_EMOB |

  @Workstream-4 @EMAIL
    @EMOB_Batch_Sanity
    @Touch-14 @4751 @4752 @4753 @4754 @4755 @4756 @4757 @4758 @4759 @4762 @4763 @4764 @4765 @4766 @4884 @VS1608C
  Scenario Outline: EMOB Email channel Validate for batch file smoke test cases for EMOB Touch 14
    Given load data from "Smoke" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read EMOB "BatchEMOB" extract file customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate EMOB offer details in batch file against database and pega
    Examples:
      | Test cases        |
      | 4751_Touch14_EMOB |
      | 4752_Touch14_EMOB |
      | 4753_Touch14_EMOB |
      | 4754_Touch14_EMOB |
      | 4755_Touch14_EMOB |
      | 4756_Touch14_EMOB |
      | 4757_Touch14_EMOB |
      | 4758_Touch14_EMOB |
      | 4759_Touch14_EMOB |
      | 4762_Touch14_EMOB |
      | 4763_Touch14_EMOB |
      | 4764_Touch14_EMOB |
      | 4765_Touch14_EMOB |
      | 4766_Touch14_EMOB |
      | 4884_Touch14_EMOB |

  @Workstream-4 @EMAIL
    @EMOB_Batch_Sanity
    @Touch-21  @4963 @4962 @4961 @4960 @4959 @4750  @2462 @2461 @2460 @2459 @2458 @2457 @2456 @2454 @2453 @VS1608B
  Scenario Outline: EMOB Email channel Validate for batch file smoke test cases for EMOB Touch 21
    Given load data from "Smoke" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read EMOB "BatchEMOB" extract file customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate EMOB offer details in batch file against database and pega
    Examples:
      | Test cases        |
      | 2453_Touch21_EMOB |
      | 2454_Touch21_EMOB |
      | 2456_Touch21_EMOB |
      | 2457_Touch21_EMOB |
      | 2458_Touch21_EMOB |
      | 2459_Touch21_EMOB |
      | 2460_Touch21_EMOB |
      | 2461_Touch21_EMOB |
      | 2462_Touch21_EMOB |
      | 4750_Touch21_EMOB |
      | 4959_Touch21_EMOB |
      | 4960_Touch21_EMOB |
      | 4961_Touch21_EMOB |
      | 4962_Touch21_EMOB |
      | 4963_Touch21_EMOB |

  @Workstream-4 @EMAIL
    @EMOB_Batch_Sanity
    @Touch-28 @4784 @4786 @4787 @4788 @4789 @4790  @4793 @4794 @4795 @4796 @4797 @4885 @VS1608D
  Scenario Outline: EMOB Email channel Validate for batch file smoke test cases for EMOB Touch 28
    Given load data from "Smoke" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read EMOB "BatchEMOB" extract file customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate EMOB offer details in batch file against database and pega
    Examples:
      | Test cases        |
      | 4784_Touch28_EMOB |
      | 4786_Touch28_EMOB |
      | 4787_Touch28_EMOB |
      | 4788_Touch28_EMOB |
      | 4789_Touch28_EMOB |
      | 4790_Touch28_EMOB |
      | 4795_Touch28_EMOB |
      | 4793_Touch28_EMOB |
      | 4794_Touch28_EMOB |
      | 4796_Touch28_EMOB |
      | 4797_Touch28_EMOB |
      | 4885_Touch28_EMOB |

  @Workstream-4 @EMAIL
    @EMOB_Batch_Sanity
    @Touch-34 @4798 @VS1608E
  Scenario Outline: EMOB Email channel Validate for batch file smoke test cases for EMOB Touch 34
    Given load data from "Smoke" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read EMOB "BatchEMOB" extract file customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate EMOB offer details in batch file against database and pega
    Examples:
      | Test cases   |
      | Touch34_EMOB |

  @Workstream-4 @EMAIL
    @NTC @RS20034 @5043
  Scenario Outline: NTC Email channel Validate for batch file smoke test cases
    Given load data from "Smoke" excel sheet
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
      | Test cases |
      | 5043_NTC   |

#  @Workstream-5 @EMAIL
#    @GICRenewalEmail @1210 @4587 @ET14061
#  Scenario Outline: GIC EMAIL channel Validate for batch file smoke test cases
#    Given load data from "GIC_EML" excel sheet
#    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
#    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
#    And the user navigates to pega url
#    When the user enters user name, password and click on login in pega Login screen
#    And get ddr records data from ddr table
#    And get mail Id from ddr records
#    And get gic wave expiry date from ddr records
#    And get gic file delivery date from ddr records
#    And click on interaction History by customer link
#    And click on actions and run in interactions history By customer screen
#    And click on period link and clear today value
#    And enter customer id in ih by customer screen and get IH table data
#    And read gic email "BatchEmailGIC" extract file customer offer details
#    Then validate gic offer details in batch file against database and pega
#    Examples:
#      | Test cases     |
#      | 1210_GIC_EMAIL |
#      | 4587_GIC_EMAIL |


  @Workstream-4 @EMAIL
    @TFSACrossSell @5464 @RS21091
  Scenario Outline: TFSA CrossSellEmail_RS21091_5464_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "Smoke" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read TFSA CrossSell "TFSA" extract file customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate CrossSell offer details in batch file against database and pega
    Examples:
      | Test cases         |
      | 5464_TFSACrossSell |

  @Workstream-4 @EMAIL
    @MPSACrossSell_Sanity @5467 @RS21097
  Scenario Outline: MPSA CrossSellEmail_RS21097_5467_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "Smoke" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read MPSA CrossSell "MPSA" extract file customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate CrossSell offer details in batch file against database and pega
    Examples:
      | Test cases         |
      | 5467_MPSACrossSell |

  @Workstream-4 @EMAIL
    @RESPCrossSell @5466 @RS21095
  Scenario Outline: RESP CrossSellEmail_RS21095_5466_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "Smoke" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read RESP CrossSell "RESP" extract file customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate CrossSell offer details in batch file against database and pega
    Examples:
      | Test cases         |
      | 5466_RESPCrossSell |

  @Workstream-4 @EMAIL
    @RRSPCrossSell_Sanity @5465 @RS21093
  Scenario Outline: RRSP CrossSellEmail_RS21093_5465_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "Smoke" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read RRSP CrossSell "RRSP" extract file customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate CrossSell offer details in batch file against database and pega
    Examples:
      | Test cases         |
      | 5465_RRSPCrossSell |


  @Workstream-4 @EMAIL
    @TFSAFund @5501 @RS21092
  Scenario Outline: TFSA Contribution Email_RS21092_5501_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "Smoke" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read TFSA Fund "TFSA" extract file customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate CrossSell offer details in batch file against database and pega
    Examples:
      | Test cases    |
      | 5501_TFSAFund |

  @Workstream-4 @EMAIL
    @RRSPFund @5502 @RS21094
  Scenario Outline: RRSP Contribution Email_RS21094_5502_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "Smoke" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read RRSP Fund "RRSP" extract file customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate CrossSell offer details in batch file against database and pega
    Examples:
      | Test cases    |
      | 5502_RRSPFund |

  @Workstream-4 @EMAIL
    @RESPFund @5503 @RS21096
  Scenario Outline: RESP Contribution Email_RS21096_5503_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "Smoke" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read RESP Contribution Fund "RESPFund" extract file customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate CrossSell offer details in batch file against database and pega
    Examples:
      | Test cases    |
      | 5503_RESPFund |

  @Workstream-4 @EMAIL
    @MPSAFund @5504 @RS21098
  Scenario Outline: MPSA Contribution Email_RS21098_5504_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "Smoke" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read MPSA Contribution Funds "MPSAContributionFunds" extract file customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate CrossSell offer details in batch file against database and pega
    Examples:
      | Test cases    |
      | 5504_MPSAFund |

  @EMAIL  @BILLPAYMENTTXN @5616 @BILLPAYMENTTXN_5616_BATCH_Smoke_POSITIVE @RS21133
  Scenario Outline: Bill Payment Txn Email channel Validate the batch file<Test cases> for positive test cases
    Given load data from "Smoke" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read Bill Payment Txn "BPTxn" extract file with Preference customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate the latest campaign offer details in batch file against database and pega
    Examples:
      | Test cases          |
      | 5616_BillPaymentTxn |

  @EMAIL  @VISADEBITACQ @5616 @VISADEBITACQ_5615_BATCH_SMOKE_POSITIVE @RS21133
  Scenario Outline: Visa Debit Acquisition Email channel Validate the batch file<Test cases> for positive test cases
    Given load data from "Smoke" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read Visa Debit Acq "VisaDebitAcq" extract file with Preference customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate the latest campaign offer details in batch file against database and pega
    Examples:
      | Test cases        |
      | 5615_VisaDebitAcq |

  @EMAIL @ODPRightSizing_Sanity @5614 @ODPRightSizing_5614_BATCH_POSITIVE @RS21131
  Scenario Outline: ODP Right Sizing Email channel Validate batch file details against database and pega for Positive test cases
    Given load data from "Smoke" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    When read cust Insights information details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    And read ODP Right Sizing "ODPRightSize" extract file with Preference customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate the ODP Right Sizing offer details in batch file against database and pega
    Examples:
      | Test cases            |
      | 5614_ODP Right Sizing |

  @EMAIL @NTCCreditHistory_Sanity @5619 @NTCCreditHistory_5619_BATCH_POSITIVE @RS2098A
  Scenario Outline: NTC Credit History Email channel Validate batch file details against database and pega for Positive test cases
    Given load data from "Smoke" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read NTC Credit History "NTCCreditHist" extract file with Preference customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate the latest campaign offer details in batch file against database and pega
    Examples:
      | Test cases              |
      | 5619_NTC Credit History |


@CC_CreditorInsurance_EML_Base_Batch_File_Validation_2423_Sanity
  Scenario Outline: CC Creditor Insurance_VS17084_2423_EMAIL Batch File Validation for Base Line Scenarios
    Given load data from "CIEmailInitial" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read Creditor Insurance "CIEmail" extract file with Preference customer offer details
    Then validate the creditor insurance offer details in batch file against database and pega
    Examples:
      | Test cases            |
      | 2423_BASE_Creative_01 |
      | 2423_BASE_Creative_04 |




  @NTCEngagementMappingTomorrow_Batch_Sanity @5151 @EMAIL @RS2098C
  Scenario Outline: NTC Engagement CurriCulum Mapping Tomorrow_RS2098C_5151_EMAIL Validate the batch file<Test cases> for positive test cases
    Given load data from "Smoke" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read NTC Engagement Mapping Tomorrow "CIEmail" extract file with Preference customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate Mapping Tomorrow offer details in batch file against database and pega
    Examples:
      | Test cases                           |
      | 5151_NTC Engagement Mapping Tomorrow |

  @NTCMortgageAcquisitionEMAIL @NTCMAEmail_BatchFile_Sanity @EMAIL @RS2098D
  Scenario Outline: NTC Mortgage Acquisition_5152_RS2098D_EMAIL Validate batch file details for Sanity
    Given load data from "Smoke" excel sheet
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
      | Test cases                         |
      | 5152_NTC Mortgage Acuisition_Email |

  @EarlyTenureIndirectMtgLeadsEmail @EarlyTenureIndirectMtgLeadsEmail_DatFile_SANITY @5688 @EMAIL @RS21128
  Scenario Outline: IndirectMortgageLeads Email_RS21128_5688_EMAIL Validate batch file details for Sanity
    Given load data from "Smoke" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read Early Tenure Indirect Mtg Leads "IndirectMtgEmail" extract file customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate Early Tenure Indirect Mtg Leads Email offer details in batch File against database and pega
    Examples:
      | Test cases                    |
      | 5688_Indirect MTG Leads_Email |

  @SPSPLoanRepayment @SPSPLoanRepayment_Email_DatFile_Positive_Validation_5701_5702_Sanity @5701 @EMAIL @RS20027
  Scenario Outline: SPSPLoanRepaymentEmail_RS20027_5701_EMAIL Validate batch file details for Sanity
    Given load data from "Smoke" excel sheet
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
      | Test cases                     |
      | 5701_SPSP_LOAN_REPAYMENT_Email |
      | 5702_SPSP_LOAN_REPAYMENT_Email |

  @CreditLimitIncrease_Batch_Sanity @CreditLimitIncrease_Batch_Validation @Workstream-5 @4479 @4480 @4481  @4482 @EMAIL @VS17086
  Scenario Outline: CreditLimitIncrease_VS17086_EMAIL Validate offer details against Batch for Positive test cases
    Given load data from "Smoke" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read CreditLimitIncrease "CLI" extract file customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And get ddr records data from ddr table
    And get cli wave expiry date from ddr records
    And get cli wave start date from ddr records
    And get cli mailID from ddr records
    And get cli campaign wave number from ddr records
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate CLI offer details in batch file against database and pega
    Examples:
      | Test cases                 |
      | 4479_Credit Limit Increase |
      | 4480_Credit Limit Increase |
      | 4481_Credit Limit Increase |
      | 4482_Credit Limit Increase |

  @MortgageAcuisition_Batch_Sanity @MA_Batch_Validation @Workstream-5 @5021 @EMAIL @RS19029
  Scenario Outline: MortgageAcquisition_RS19029_EMAIL Validate offer details against Batch for Positive test cases
    Given load data from "Smoke" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read Mortgage Acquisition "MA" extract file customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And get ddr records data from ddr table
    And get MA mailID from ddr records
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate Mortgage Acquisition offer details in batch file against database and pega
    Examples:
      | Test cases       |
      | 5021_MA_Email_SB |
      | 5021_MA_Email_CC |

  @TravelInsurance @TravelInsurance_Base_Positive_BatchFile_Validation_Sanity @5715 @EMAIL @RS22049
  Scenario Outline: Travel Insurance_RS22049_5715_EMAIL Validate Batch File details against Database and Pega for Base Positive Test Cases
    Given load data from "Smoke" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read Travel Insurance "TravelInsurance" extract file customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate Travel Insurance offer details in batch file against database and pega
    Examples:
      | Test cases            |
      | 5715_Travel Insurance |

  @D2DPaymentsMethod @D2DPaymentsMethod_Base_Positive_Batch_Validation_Sanity @5725 @EMAIL @RS22056
  Scenario Outline: D2DPaymentsMethod_RS22056_5725_EMAIL Validate offer details against batch file for Base Positive test cases
    Given load data from "Smoke" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "D2DPaymentMethods" extract file with batch "SRC_PRD_CD;NTCFlag;MobileActive;CASL_CONSENT_F;Visa_Debit_Purchase;Interac_Flash_Purchase;Digital_Wallet;" Email Specific Text Header
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate D2D Payment Methods details in batch file against database and pega
    Examples:
      | Test cases               |
      | 5725_D2D Payment Methods |


  @D2DAcq_Email_5747_Batch_PositiveTCs_Validation_Sanity @Smoke_Batch_Validation
  Scenario Outline: D2D Acquisition 5747_RS22054_EMAIL Validate batch file details against database and pega for Sanity
    Given load data from "D2DAcqCrossSell" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "D2DAcqCrossSell" extract file with batch "MCBflag;CustAge;Abandoncount;recentlifeevent;" Email Specific Text Header
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then Validate D2D Acquisition offer details in batch file against database and pega
    Examples:
      | Test cases                        |
      | 5747_EML_D2DAcquisition_CrossSell |
      | 5748_EML_D2DAcquisition_CrossSell |

  @PAULOCInsurance_Sanity @ULOCInsRetargeting_Base_Positive_Batch_Validation @5762 @EMAIL @RS22056
  Scenario Outline: PAULOCInsuranceRetargeting_RS22065_5762_EMAIL Validate offer details against batch file for Base Positive test cases
    Given load data from "ULOCIns" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "PAULOCIns" extract file with batch "InsStatus;" Email Specific Text Header
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate PA ULOC Retargeting offer details in batch file against database and pega

    Examples:
      | Test cases              |
      | 5762_EML_ULOC_Insurance |

  @InsuranceClaimReminder_Email_5784_Batch_PositiveTCs_Validation_Sanity
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
      | Test cases       |
      | 5784_EML_BASE_01 |

  @ODPAcquisition_Email_5787_BatchValidation_Sanity
  Scenario Outline: ODP Acquisition_OP13028_5787_EMAIL Validate offer details against batch file for Base Positive test cases
    Given load data from "ODPAcq_EML" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "ODPAcq" extract file with batch "odplimit;AccNum;creativeversion;" Email Specific Text Header
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And get ddr records data from ddr table
    And get ODP Acq MailID from ddr records
    And click on interaction History by customer link
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then Validate ODP Acquisition details in batch file against database and pega
    Examples:
      | Test cases                                  |
      | 5787_EML_ODPAcquisition_PreApprovedCustomer |
      | 5787_EML_ODPAcquisition_PayrollCustomer     |

  @SSMAlwaysOnWelcome_Email_5795_5795_Batch_PositiveTCs_Validation_Sanity
  Scenario Outline: SSM Always On Welcome 5795_RS22071_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "SSM_AlwaysOn_EML" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "SSM" extract file with batch "" Email Specific Text Header
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then Validate SSM Always On offer details in batch file against database and pega
    Examples:
      | Test cases       |
      | 5795_EML_BASE_01 |
      | 5796_EML_BASE_01 |

  @D2DEngagementWelcome_Add_Sanity @D2DEngagementWelcomeNTB_BatchFile_Base_Validation @Workstream-4 @5821 @EMAIL @RS17103
  Scenario Outline: D2D Engagement Welcome_RS17103_5821_EMAIL Validate batch file details against database and pega for Base test cases
    Given load data from "WelcomeNTB" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read D2D "BatchD2D" extract file with Preference customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate D2D offer details in batch file against database and pega
    Examples:
      | Test cases       |
      | 5821_EML_BASE_01 |

  @NTB_AdvicePlus_Email_5822_Batch_BaseTCs_Validation_Sanity
  Scenario Outline: NTB_AdvicePlus 5822_RS22111_EMAIL Validate batch file details against database and pega for Base test cases
    Given load data from "NTB_AdvicePlus_EML" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "NTB_AdvicePlus" extract file with batch "CASL_CONSENT_F;" Email Specific Text Header
    Then Validate NTB_AdvicePlus offer details in batch file against database and pega
    Examples:
      | Test cases       |
      | 5822_EML_BASE_01 |
      | 5822_EML_BASE_02 |
      | 5822_EML_BASE_03 |
      | 5822_EML_BASE_04 |
      | 5822_EML_BASE_05 |
      | 5822_EML_BASE_06 |

  @MPSAWelcomeBonusEmail @MPSAWelcomeBonusEmail_DatFile_Positive_Validation_5893_Sanity @5893 @EMAIL @RS22116
  Scenario Outline: MPSA Welcome Bonus Email_RS21097_5893_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "MPSAWelcomeBonus" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "MPSAWelcomeBonus" extract file with batch "bonus_interest_rate;upto_interest_rate;account_open_date;" Email Specific Text Header
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate MPSA Welcome Bonus offer details in batch file against database and pega
    Examples:
      | Test cases       |
      | 5839_EML_BASE_01 |
      | 5839_EML_BASE_02 |
      | 5839_EML_BASE_03 |

  @TFSAFundEmail @TFSAFundEmailRemainder_DatFile_SanityPositive_Validation_5955 @5955 @EMAIL @RS21094
  Scenario Outline: TFSAContributionEmailRemainder_RS21094_5955_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "TFSAFund" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read TFSA Fund "TFSA" extract file customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate CrossSell offer details in batch file against database and pega
    Examples:
      | Test cases   |
      | 5927_Base_01 |
      | 5927_Base_02 |


  @RRSPFundEmail @RRSPFundEmailRemainder_DatFile_Sanity_Positive_Validation_5955 @5955 @EMAIL @RS21094
  Scenario Outline: RRSPContributionEmailRemainder_RS21094_5955_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "RRSPFund" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read RRSP Fund "RRSP" extract file customer offer details
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate CrossSell offer details in batch file against database and pega
    Examples:
      | Test cases   |
      | 5955_BASE_01 |
      | 5955_BASE_02 |


    # Release : Feb 16, 2023
  @D2DEarlyEngagementiTradeCrossSell_Email_5971_Batch_PositiveTCs_Validation
  Scenario Outline: D2D iTrade Cross Sell 5971_RS23034_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "D2Ditrade_EML" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "D2DiTrade" extract file with batch "" Email Specific Text Header
    Then Validate D2D Early Engagement iTrade Cross Sell offer details in batch file against database and pega
    Examples:
      | Test cases       |
      | 5971_EML_BASE_01 |
      | 5971_EML_BASE_02 |



    # Release : Feb 16, 2023
  @VisaDebitInterac_Email_5970_Batch_PositiveTCs_Validation
  Scenario Outline: Visa Debit Interac 5970_RS21132_EMAIL Validate batch file details against database and pega for Positive test cases
    Given load data from "VisaDebitInterac" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "VisaDebitInterac" extract file with batch "NTC_F;GenZ_F;" Email Specific Text Header
    Then Validate Visa Debit Interac offer details in batch file against database and pega
    Examples:
      | Test cases                |
      | 5970_EML_BASE_Creative_01 |
      | 5970_EML_BASE_Creative_02 |
      | 5970_EML_BASE_Creative_03 |
      | 5970_EML_BASE_Creative_04 |

  @ULOC_CLI_Email_6090_Batch_PositiveTCs_Validation_Sanity
  Scenario Outline: ULOC CLI 6090_RS23043_EMAIL Validation of Batch file details against database and pega for Base and Positive test cases
    Given load data from "ULOC_CLI_6090" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "ULOC_CLI" extract file with batch "AcctNumber;ApprovedCreditLimit;ProdCode;SubProdCode;CampaignNumber;CurrentCreditLimit;" Email Specific Text Header
    Then Validate ULOC CLI offer details in batch file against database and pega
    Examples:
      | Test cases                                                                                        |
      | 6090_EML_BASE_Creative_01                                                                         |
      | 6090_EML_BASE_Creative_02                                                                         |


  @International_Money_Transfer_EML_Batch_File_Base_Validation_6087_Sanity
  Scenario Outline: International_Money_Transfer RS23094_6087_EML Validate Batch File against database and pega for Base Line test cases
    Given load data from "InternationalMoneyTransfer_EML" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "InternationalMoneyTransfer_EML_Batch" extract file with batch "" Email Specific Text Header
    Then Validate International Money Transfer offer details in batch file against database and pega
    Examples:
      | Test cases                |
      | 6087_EML_BASE_Creative_01 |
      | 6087_EML_BASE_Creative_02 |
      | 6087_EML_BASE_Creative_03 |
      | 6087_EML_BASE_Creative_04 |
      | 6087_EML_BASE_Creative_05 |

  @Accidental_Death_Insurance_EML_Batch_File_Base_Validation_6110_Sanity
  Scenario Outline: Accidental_Death_Insurance RS23100_6110_EML Validate Batch File against database and pega for for Base Line test cases
    Given load data from "ADI_EML_6110" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "AccidentalDeathInsurance_EML_Batch" extract file with batch "" Email Specific Text Header
    Then Validate Accidental Death Insurance offer details in batch file against database and pega
    Examples:
      | Test cases           |
      | 6110_EML_Base_Seg_01 |

 @Itrade_Xsell_Always_on_EML_Batch_File_Base_Validation_6109_Sanity
  Scenario Outline: Itrade_Xsell_Always_on RS23101_6109_EML Validate Batch File against database and pega for Base Line test cases
    Given load data from "Itrade_Xsell_6109" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "ItradeXsellAlwayson_EML_Batch" extract file with batch "" Email Specific Text Header
    Then Validate Itrade Xsell Always on offer details in batch file against database and pega
    Examples:
      | Test cases                |
      | 6109_EML_BASE_Creative_01 |
      | 6109_EML_BASE_Creative_02 |
      | 6109_EML_BASE_Creative_03 |
      | 6109_EML_BASE_Creative_04 |
      | 6109_EML_BASE_Creative_05 |
      | 6109_EML_BASE_Creative_06 |
      | 6109_EML_BASE_Creative_07 |

  @EMOB_Notification_EML_Batch_File_Base_Validation_6122_Sanity
  Scenario Outline: EMOB_Notification VS16008_6122_EML Validate Batch File against database and pega for Base Line test cases
    Given load data from "EMOB_Notification_6122" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "EMOBNotification_EML_Batch" extract EMOB file with batch "ProvCode;ProductCode;SubProductCode;" Email Specific Text Header
    Then Validate EMOB Notification offer details in batch file against database and pega
    Examples:
      | Test cases                |
      | 6122_EML_BASE_Creative_01 |

  @Near_Primacy_D2D_Bundle_Xsell_Anniversary_Offer_EML_Batch_File_Base_Validation_6172_Sanity
  Scenario Outline: Near_Primacy_D2D_Bundle_Xsell_Anniversary_Offer RS23146_6172_EML Validate Batch File against database and pega for Base Line test cases
    Given load data from "Near_Primacy_D2D_Bundle_Xsell_Anniversary_Offer_6172" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read "NearPrimacyD2DBundleXsellAnniversaryOffer_EML_Batch" extract file with batch "ProductCode;SubProductCode;AnniversaryYear;" Email Specific Text Header
    Then Validate Near Primacy D2D Bundle Xsell Anniversary offer details in batch file against database and pega
    Examples:
      | Test cases                      |
      | 6172_EML_BASE_Creative_01_or_02 |


  @ULOC_Insurance_EML @ULOC_Insurance_EML_Base_Batch_File_Validation_5761 @5761 @EML @RS22065
  Scenario Outline: ULOC Insurance 5761 RS22065 EML Validate Offer Details Against Batch File for Base Line Test Cases
    Given load data from "ULOCIns_EML_CIE5761" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    # Need to Review and Change
    And read "PAULOCIns" extract file with batch "InsStatus;" Email Specific Text Header
    # Need to Review and Change
    Then validate ULOC Insurance offer details in batch file against database and pega

    Examples:
      | Test cases                |
      | 5761_EML_BASE_Creative_01 |
      | 5761_EML_BASE_Creative_02 |
      | 5761_EML_BASE_Creative_03 |
      | 5761_EML_BASE_Creative_04 |


  @SupplementaryCardCrossSell_EML_Base_Batch_Validation_5468_Sanity
  Scenario Outline: Supplementary Card Cross Sell_RS21099_5468_EMAIL Validate Batch File for Base Line test cases Sep 28th 2023 Release
    Given load data from "SupplementaryCard" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
#    And read SupplementaryCard CrossSell "SUPPLCARD" extract file customer offer details
    And read "SuppCard_Initial_CIE5468_EML_Batch" extract file with batch "PrdCode;SubPrdCd;" Email Specific Text Header
    Then validate SupplementaryCard offer details in batch file against database and pega

    Examples:
      | Test cases                    |
      | 5468_BASE_Creative_01_Trig_01 |
      | 5468_BASE_Creative_02_Trig_02 |
      | 5468_BASE_Creative_03_Trig_04 |
      | 5468_BASE_Creative_04_Trig_01 |
      | 5468_BASE_Creative_05_Trig_01 |
      | 5468_BASE_Creative_06_Trig_01 |
      | 5468_BASE_Creative_07_Trig_01 |
      | 5468_BASE_Creative_08_Trig_01 |
      | 5468_BASE_Creative_09_Trig_01 |

