@Smoke_IH_Validation
Feature: Validation of IH Smoke scenarios for all channels

  ##########################EMAIL#############################

  @EMAIL @Workstream-4
    @D2DEngagementWelcome  @4330 @4331 @4332 @4334 @4658 @RS17103
    @D2DEngagementReward @4363 @4364 @4366 @RS18024
    @D2DEngagementMappingTomorrow @4402 @WD18055
    @D2DEngagementFundAccount @4315 @RS18022
    @D2DEngagementDigitalAdoption @4235 @RS17104
    @D2DEngagementPADPayment @4316 @4380 @RS18023
    @CrossSell @4891 @4892_smoke @4893 @4894 @RS19067
    @D2DEngagementVisaDebit @4368 @RS18040
    @D2DEngagementInteracFlash @4367 @RS18039
    @D2DEngagementDigitalPayment @4399 @4400 @4401 @WD18054
  Scenario Outline: D2D Engagement Email channel Validate for IH smoke test cases
    Given load data from "Smoke" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate offer details against IH
    Examples:
      | Test cases                      |
      | 4330_D2D Welcome_BBA            |
      | 4331_D2D Welcome_BBP            |
      | 4332_D2D Welcome_ScotiaOne      |
      | 4334_D2D Welcome_StudentBanking |
      | 4658_D2D Welcome_Ultimate       |
      | 4315_Fund Account               |
      | 4235_D2D Digital Adoption       |
      | 4891_CrossSell                  |
      | 4892_CrossSell                  |
      | 4893_CrossSell                  |
      | 4894_CrossSell                  |


  @EMAIL @Workstream-4
    @D2DEngagementWelcome  @4330 @4331 @4332 @4334 @4658 @RS17103
    @D2DEngagementReward @4363 @4364 @4366 @RS18024
    @D2DEngagementMappingTomorrow @4402 @WD18055
    @D2DEngagementFundAccount @4315 @RS18022
    @D2DEngagementDigitalAdoption @4235 @RS17104
    @D2DEngagementPADPayment @4316 @4380 @RS18023
    @CrossSell @4891 @4892_smoke @4893 @4894 @RS19067
    @D2DEngagementVisaDebit @4368 @RS18040
    @D2DEngagementInteracFlash @4367 @RS18039
    @D2DEngagementDigitalPayment @4399 @4400 @4401 @WD18054
  Scenario Outline: D2D Engagement Email channel Validate for IH smoke test cases
    Given load data from "Smoke" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate the offer details against IH
    Examples:
      | Test cases                    |
      | 4364_Reward Reinforcement     |
      | 4364_Reward Reinforcement_NTC |
      | 4366_Reward Reinforcement     |
      | 4366_Reward Reinforcement_NTC |
      | 4316_Bill Payment             |
      | 4380_Bill Payment             |

  @ChannelAdoptionEngagementPromoteMobileDeposit @RDC @4272 @RS18016
  Scenario Outline: Remote deposit capture Email channel Validate for IH smoke test cases
    Given load data from "Smoke" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate RDC offer details against IH
    Examples:
      | Test cases |
#      | 4272_Remote Deposit Capture |

  @Workstream-4 @EMAIL
    @EMOB_IH_Sanity
    @Touch-7  @2437 @2438 @2441 @2445 @2446 @2447 @4749 @4954 @4955 @4957 @5894 @VS16008
  Scenario Outline: EMOB Email channel Validate for IH smoke test cases for EMOB Touch 7 offers
    Given load data from "Smoke" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate the offer details against IH
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

  @Workstream-4 @EMAIL  @EMOB_IH_Sanity
    @Touch-14 @4751 @4752 @4753 @4754 @4755 @4756 @4757 @4758 @4759 @4762 @4763 @4764 @4765 @4766 @4884 @VS1608C
  Scenario Outline: EMOB Email channel Validate for IH smoke test cases for EMOB Touch 14 offers
    Given load data from "Smoke" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate the offer details against IH
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

  @Workstream-4 @EMAIL  @EMOB_IH_Sanity
    @Touch-21  @4963 @4962 @4961 @4960 @4959 @4750  @2462 @2461 @2460 @2459 @2458 @2457 @2456 @2454 @2453 @VS1608B
  Scenario Outline: EMOB Email channel Validate for IH smoke test cases for EMOB Touch 21 offers
    Given load data from "Smoke" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate the offer details against IH
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

  @Workstream-4 @EMAIL @EMOB_IH_Sanity
    @Touch-28 @4784 @4786 @4787 @4788 @4789 @4790  @4793 @4794 @4795 @4796 @4797 @4885 @VS1608D
  Scenario Outline: EMOB Email channel Validate for IH smoke test cases for EMOB Touch 28 offers
    Given load data from "Smoke" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate the offer details against IH
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
    @EMOB_IH_Sanity
    @Touch-34 @4798 @VS1608E
  Scenario Outline: EMOB Email channel Validate for IH smoke test cases for EMOB Touch 34 offers
    Given load data from "Smoke" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate the offer details against IH
    Examples:
      | Test cases   |
      | Touch34_EMOB |

  @Workstream-4 @EMAIL
    @NTC_Sanity @RS20034 @5043
  Scenario Outline: NTC Email channel Validate for IH smoke test cases
    Given load data from "Smoke" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate the offer details against IH
    Examples:
      | Test cases |
      | 5043_NTC   |


  @Workstream-5 @Email
    @GICRenewalEmail @1210 @4587 @ET14061
  Scenario Outline: GIC EMAIL channel Validate for IH smoke test cases
    Given load data from "GIC_EML" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And get ddr records data from ddr table
    And get gic wave expiry date from ddr records
    And get gic wave start date from ddr records
    And get gic campaign wave number from ddr records
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate gic email offer details against IH
    Examples:
      | Test cases |
#      | 1210_GIC_EMAIL |
#      | 4587_GIC_EMAIL |

  @EMAIL @Workstream-4
    @TFSACrossSell @5464
    @MPSACrossSell @5467
    @RESPCrossSell @5466
    @RRSPCrossSell @5465
  Scenario Outline:  CrossSell EMAIL Validate offer details against IH for Positive test cases
    Given load data from "Smoke" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate CrossSell offer details against IH
    Examples:
      | Test cases             |
      | 5464_TFSACrossSell     |
      | 5467_MPSACrossSell     |
      | 5465_RRSPCrossSell     |
      | 5466_RESPCrossSell     |
      | 5501_TFSAFund          |
      | 5502_RRSPFund          |
      | 5503_RESPFund          |
      | 5504_MPSAFund          |

    ######################Validation of turned off offers#######################################3
  @turned_off_offers
  Scenario Outline:GIC-D2D-RDC_EMAIL Validate offer details are not displayed against IH
    Given load data from "Smoke" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then verify offer should not display
    Examples:
      | Test cases                  |
      | 1210_GIC_EMAIL              |
      | 4587_GIC_EMAIL              |
      | 4402_MappingTomorrow        |
      | 4367_Interac Flash          |
      | 4399_Digital Payment        |
      | 4400_Digital Payment        |
      | 4401_Digital Payment        |
      | 4272_Remote Deposit Capture |
      | 4368_Visa Debit             |



    ######################  End of Validation of turned off offers#######################################3

  @EMAIL  @BILLPAYMENTTXN @5616 @BILLPAYMENTTXN_5616_IH_Smoke_POSITIVE @RS21133
  Scenario Outline: Bill Payment Txn Email channel Validate IH for positive test cases
    Given load data from "Smoke" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate latest offer details against IH
    Examples:
      | Test cases              |
      | 5616_BillPaymentTxn     |
      | 5615_VisaDebitAcq       |
      | 5614_ODP Right Sizing   |
      | 5619_NTC Credit History |

  @CC_CreditorInsurance_EML_Base_IH_Validation_2423_Sanity
  Scenario Outline: CC Creditor Insurance_VS17084_2423_EMAIL Create Test Data for Base Line Scenarios
    Given load data from "CIEmailInitial" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then validate Creditor Insurance offer details against IH for "EML" Channel with "Outbound" Direction having "IPT" Outcome
    Examples:
      | Test cases            |
      | 2423_BASE_Creative_01 |
      | 2423_BASE_Creative_04 |


  @CC_CreditorInsurance_OPM_Base_IH_Validation_2423_Sanity
  Scenario Outline: CC Creditor Insurance_VS17084_2423_OPM Create Test Data for Base Line Scenarios
    Given load data from "CIOptimaInitial" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then validate Creditor Insurance offer details against IH for "OPM" Channel with "Outbound" Direction having "IPT" Outcome
    Examples:
      | Test cases                |
      | 2423_OPM_BASE_Creative_04 |
      | 2423_OPM_BASE_Creative_05 |



  @EMAIL  @CIReTargetingOfferEmail @5648 @CIRetargeting_5648_IHValidation_POSITIVE_Sanity @VS17084
  Scenario Outline: Creditor Insurance Retargeting_VS17084_EMAIL Validate offer details against IH for Positive test cases
    Given load data from "Smoke" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate Creditor Insurance Retargeting offer details against IH
    Examples:
      | Test cases                    |
      | 5648_Creditor Insurance_Email |

  @NTCEngagementMappingTomorrow_IH_Sanity @5151 @EMAIL @RS2098C
  Scenario Outline: NTC Engagement CurriCulum Mapping Tomorrow_RS2098C_5151_EMAIL Validate offer details against IH for Sanity
    Given load data from "Smoke" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate the offer details against IH
    Examples:
      | Test cases                           |
      | 5151_NTC Engagement Mapping Tomorrow |

  @NTCMAEmail5152_IHValidation_Sanity @EMAIL @RS2098D
  Scenario Outline: NTC Mortgage Acquisition_5152_RS2098D_EMAIL Validate offer details against IH for Sanity
    Given load data from "Smoke" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate the offer details against IH
    Examples:
      | Test cases                         |
      | 5152_NTC Mortgage Acuisition_Email |


  @EarlyTenureIndirectMtgLeadsEmail @EarlyTenureIndirectMtgLeadsEmail_IH_Sanity @5688 @EMAIL @rs21128
  Scenario Outline: IndirectMortgageLeads Email_RS21128_5688_EMAIL Validate IH details for Sanity
    Given load data from "Smoke" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate Indirect Mtg Email offer details against IH
    Examples:
      | Test cases                    |
      | 5688_Indirect MTG Leads_Email |


  @SPSPLoanRepayment @SPSPLoanRepayment_Email_IH_Positive_Validation_5701_5702_Sanity @5701 @EMAIL @RS20027
  Scenario Outline: SPSPLoanRepaymentEmail_RS20027_5701_EMAIL Validate IH details for Sanity
    Given load data from "Smoke" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate SPSP offer details against IH
    Examples:
      | Test cases                     |
      | 5701_SPSP_LOAN_REPAYMENT_Email |
      | 5702_SPSP_LOAN_REPAYMENT_Email |

  @CreditLimitIncrease_IH_Sanity @CreditLimitIncrease_IH_Validation @Workstream-5 @4479 @4480 @4481  @4482 @EMAIL @VS17086
  Scenario Outline: CreditLimitIncrease_VS17086_EMAIL Validate offer details against IH for Positive test cases
    Given load data from "Smoke" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And get ddr records data from ddr table
    And get cli wave expiry date from ddr records
    And get cli wave start date from ddr records
    And get cli campaign wave number from ddr records
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate CLI offer details against IH
    Examples:
      | Test cases                 |
      | 4479_Credit Limit Increase |
      | 4480_Credit Limit Increase |
      | 4481_Credit Limit Increase |
      | 4482_Credit Limit Increase |

  @MortgageAcuisition_IH_Sanity @MA_IH_Validation @Workstream-5 @5021 @EMAIL @RS19029
  Scenario Outline: MortgageAcquisition_RS19029_EMAIL Validate offer details against IH for Positive test cases
    Given load data from "Smoke" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And get ddr records data from ddr table
    And get Mortgage Acq campaign wave number from ddr records
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate Mortgage Acquisition offer details against IH
    Examples:
      | Test cases       |
      | 5021_MA_Email_SB |
      | 5021_MA_Email_CC |

  @TravelInsurance @TravelInsurance_Base_Positive_IH_Validation_Sanity @5715 @EMAIL @RS22049
  Scenario Outline: TravelInsurance_RS22049_5715_EMAIL Validate offer details against IH for Base Positive test cases
    Given load data from "Smoke" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate Travel Insurance offer details against IH
    Examples:
      | Test cases            |
      | 5715_Travel Insurance |

  @D2DPaymentsMethod @D2DPaymentsMethod_Base_Positive_IH_Validation_Sanity @5725 @EMAIL @RS22056
  Scenario Outline: D2DPaymentsMethod_RS22056_5725_EMAIL Validate offer details against IH for Base Positive test cases
    Given load data from "Smoke" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate D2D Payment Methods offer details against IH
    Examples:
      | Test cases               |
      | 5725_D2D Payment Methods |

  @D2DAcq_Email_5747_IH_PositiveTCs_Validation_Sanity @Smoke_IH_Validation
  Scenario Outline: D2D Acquisition 5747_RS22054_EMAIL Validate IH details against database and pega for Positive test cases
    Given load data from "D2DAcqCrossSell" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate D2D Acquisition offer details against IH
    Examples:
      | Test cases                        |
      | 5747_EML_D2DAcquisition_CrossSell |
      | 5748_EML_D2DAcquisition_CrossSell |

  @ULOCInsurance_Sanity @ULOCInsRetargeting_Positiveih_Validation @5762 @EMAIL @RS22056
  Scenario Outline: PAULOCInsuranceRetargeting_RS22065_5762_EMAIL Validate offer details against ih for Positive test cases
    Given load data from "ULOCIns" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate ULOC Insurance Insurance offer details against IH
    Examples:
      | Test cases              |
      | 5762_EML_ULOC_Insurance |

  @InsuranceClaimReminder_Email_5784_IH_PositiveTCs_Validation_Sanity
  Scenario Outline: Insurance Claim Reminder 5784_RS22075_EMAIL Validate IH details against database and pega for Positive test cases
    Given load data from "InsuranceClaimReminder_EML" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate Insurance Claim Reminder offer details against IH
    Examples:
      | Test cases       |
      | 5784_EML_BASE_01 |

  @ODPAcquisition_Email_5787_IHPosValidation
  Scenario Outline: ODP Acquisition_OP13028_5787_EMAIL Validate offer details against IH for Base Positive test cases
    Given load data from "ODPAcq_EML" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And get ddr records data from ddr table
    And get ODP Acq wave expiry date from ddr records
    And get ODP Acq wave start date from ddr records
    And get ODP Acq campaign wave number from ddr records
    And get ODP Acq MailID from ddr records
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate ODP Acquisition offer details against IH
    Examples:
      | Test cases                                  |
      | 5787_EML_ODPAcquisition_PreApprovedCustomer |
      | 5787_EML_ODPAcquisition_PayrollCustomer     |

  @SSM_Welcome_Email_5795_5796_IH_PositiveTCs_Validation_Sanity
  Scenario Outline: SSM Always On Welcome 5795_RS22071_EMAIL Validate IH details against database and pega for Positive test cases
    Given load data from "SSM_AlwaysOn_EML" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate SSM Always On offer details against IH
    Examples:
      | Test cases       |
      | 5795_EML_BASE_01 |
      | 5796_EML_BASE_01 |

  @D2DEngagementWelcome_Add_Sanity @D2DEngagementWelcomeNTB_Base_Validation @Workstream-4 @5821 @EMAIL @RS17103
  Scenario Outline: D2D Engagement Welcome-NTB_RS17103_5821_EMAIL Validate D2D Engagement Welcome-NTB offer details against IH for Base test cases
    Given load data from "WelcomeNTB" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate offer details against IH
    Examples:
      | Test cases       |
      | 5821_EML_BASE_01 |

  @NTB_AdvicePlus_Email_5822_IH_Base_TCs_Validation_Sanity
  Scenario Outline: NTB_AdvicePlus 5822_RS22111_EMAIL Validate IH details against database and pega for Base test cases
    Given load data from "NTB_AdvicePlus_EML" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then validate NTB_AdvicePlus offer details against IH
    Examples:
      | Test cases       |
      | 5822_EML_BASE_01 |
      | 5822_EML_BASE_02 |
      | 5822_EML_BASE_03 |
      | 5822_EML_BASE_04 |
      | 5822_EML_BASE_05 |
      | 5822_EML_BASE_06 |

  @MPSAWelcomeBonusEmail @MPSAWelcomeBonusEmail_IH_Positive_Validation_5893_Sanity @5893 @EMAIL @RS22116
  Scenario Outline: MPSA Welcome Bonus Email_RS21097_5893_EMAIL Validate IH details against database and pega for Positive test cases
    Given load data from "MPSAWelcomeBonus" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    And click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate MPSA Welcome Bonus offer details against IH
    Examples:
      | Test cases       |
      | 5839_EML_BASE_01 |
      | 5839_EML_BASE_02 |
      | 5839_EML_BASE_03 |

  @TFSAFundEmail @TFSAFundEmailRemainder_IH_Sanity_Positive_Validation_5927 @5955 @EMAIL @RS21094
  Scenario Outline: TFSAContributionEmailRemainder_RS21094_5955_EMAIL Validate offer details against IH for Positive test cases
    Given load data from "TFSAFund" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate TFSA RRSP Fund remainder offer details against IH
    Examples:
      | Test cases   |
      | 5927_Base_01 |
      | 5927_Base_02 |


  @RRSPFundEmail @RRSPFundEmailRemainder_IH_Sanity_Positive_Validation_5955 @5955 @EMAIL @RS21094
  Scenario Outline: RRSPContributionEmailRemainder_RS21094_5955_EMAIL Validate offer details against IH for Positive test cases
    Given load data from "RRSPFund" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    And the user navigates to pega url
    When the user enters user name, password and click on login in pega Login screen
    And click on interaction History by customer link
    And click on actions and run in interactions history By customer screen
    When click on period link and clear today value
    And enter customer id in ih by customer screen and get IH table data
    Then validate TFSA RRSP Fund remainder offer details against IH
    Examples:
      | Test cases   |
      | 5955_BASE_01 |
      | 5955_BASE_02 |

  @D2DEarlyEngagementiTradeCrossSell @D2DiTradeCrossSell_EML_IH_Sanity_Base_Validation_5971 @5971 @EMAIL @RS23034
  Scenario Outline: D2DEarlyEngagementiTradeCrossSell_RS23034_5971_EMAIL Validate D2DEarlyEngagementiTradeCrossSell offer details against IH for Base test cases
    Given load data from "D2Ditrade_EML" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then validate D2D iTrade offer details against IH
    Examples:
      | Test cases       |
      | 5971_EML_BASE_01 |
      | 5971_EML_BASE_02 |
      | 5971_EML_BASE_03 |

    # Release : Feb 16, 2023
  @VisaDebitInterac @VisaDebitInterac_EML_IH_Base_Validation_5970 @5970 @EML @RS21132 @VisaDebitInterac
  Scenario Outline: Visa Debit Interac RS21132_5970_EML Validate IH details against database and pega for Base test cases
    Given load data from "VisaDebitInterac" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then validate Visa Debit Interac offer details against IH
    Examples:
      | Test cases                |
      | 5970_EML_BASE_Creative_01 |
      | 5970_EML_BASE_Creative_02 |
      | 5970_EML_BASE_Creative_03 |
      | 5970_EML_BASE_Creative_04 |

  @RIF_RSP_Sanity @RIF_RSP_SB_IH_Base_Validation_5723_Sanity @5723 @SB @ET02003
  Scenario Outline: RIF RSP ET02003_5723_SB Validate IH details against database and pega for Base Line test cases
    Given load data from "RSP_RIF_Conv" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then validate RIF RSP offer details against IH for "COS" Channel
    Examples:
      | Test cases      |
      | 5723_SB_BASE_01 |

  @RIF_RSP_Sanity @RIF_RSP_SB_IH_Base_Validation_5724_Sanity @5724 @SB @ET02003
  Scenario Outline: RIF RSP ET02003_5724_SB Validate IH details against database and pega for Base Line test cases
    Given load data from "RSP_RIF_Conv" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then validate RIF RSP offer details against IH for "COS" Channel
    Examples:
      | Test cases      |
      | 5724_SB_BASE_01 |

  @RIF_RSP_Sanity @RIF_RSP_MAT_IH_Base_Validation_5723_Sanity @5723 @MAT @ET02003
  Scenario Outline: RIF RSP ET02003_5723_MAT Validate IH details against database and pega for Base Line test cases
    Given load data from "RSP_RIF_Conv_MAT" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then validate RIF RSP offer details against IH for "MAT" Channel
    Examples:
      | Test cases       |
      | 5723_MAT_BASE_01 |

  @RIF_RSP_Sanity @RIF_RSP_MAT_IH_Base_Validation_5724_Sanity @5724 @MAT @ET02003
  Scenario Outline: RIF RSP ET02003_5724_MAT Validate IH details against database and pega for Base Line test cases
    Given load data from "RSP_RIF_Conv_MAT" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    Then validate RIF RSP offer details against IH for "MAT" Channel
    Examples:
      | Test cases       |
      | 5724_MAT_BASE_01 |

  @LongTermInvAdvice_MAT_IH_Base_Validation_6065_Sanity
  Scenario Outline: LongTermInvAdvice RS23078_6065_MAT Validate IH details against database and pega for Base Line test cases
    Given load data from "LongTermAdvice_MAT" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    When read cust Insights information details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then validate Long Term Investing Advice offer details against IH for "MAT" Channel
    Examples:
      | Test cases               |
      | 6065_MAT_Base_Creative_1 |


  @LongTermInvAdvice_SF_IH_Base_Validation_6065_Sanity
  Scenario Outline: LongTermInvAdvice RS23078_6065_SF Validate IH details against database and pega for Base Line test cases
    Given load data from "LongTermAdvice" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    When read cust Insights information details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then validate Long Term Investing Advice offer details against IH for "COS" Channel
    Examples:
      | Test cases              |
      | 6065_SF_Base_Creative_1 |

  @International_Money_Transfer_EML_IH_Base_Validation_6087_Sanity
  Scenario Outline: International_Money_Transfer RS23094_6087_EML Validate IH details against database and pega for Base Line test cases
    Given load data from "InternationalMoneyTransfer_EML" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    When read cust Insights information details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then validate International Money Transfer offer details against IH for "EML" Channel with "Outbound" Direction having "IPT" Outcome

    Examples:
      | Test cases                |
      | 6087_EML_BASE_Creative_01 |
      | 6087_EML_BASE_Creative_02 |
      | 6087_EML_BASE_Creative_03 |
      | 6087_EML_BASE_Creative_04 |
      | 6087_EML_BASE_Creative_05 |


  @Accidental_Death_Insurance_EML_IH_Base_Validation_6110_Sanity
  Scenario Outline: Accidental Death Insurance RS23100_6110_EML Validate IH details against database and pega for Base Line test cases
    Given load data from "ADI_EML_6110" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    When read cust Insights information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then validate Accidental Death Insurance offer details against IH for "EML" Channel with "Outbound" Direction having "IPT" Outcome
    Examples:
      | Test cases           |
      | 6110_EML_Base_Seg_01 |


  @Accidental_Death_Insurance_OPM_IH_Base_Validation_6110_Sanity
  Scenario Outline: Accidental Death Insurance RS23100_6110_OPM Validate IH details against database and pega for Base Line test cases
    Given load data from "ADI_OPM_6110" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    When read cust Insights information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then validate Accidental Death Insurance offer details against IH for "OPM" Channel with "Outbound" Direction having "IPT" Outcome
    Examples:
      | Test cases           |
      | 6110_OPM_Base_Seg_01 |

  @Itrade_Xsell_Always_on_EML_IH_Base_Validation_6109_Sanity
  Scenario Outline: Itrade_Xsell_Always_on RS23101_6109_EML Validate IH details against database and pega for Base Line test cases
    Given load data from "Itrade_Xsell_6109" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    When read cust Insights information details from excel sheet "CUST_INSIGHTS" for "<Test cases>"
    Then validate Itrade Xsell Always on offer details against IH for "EML" Channel with "Outbound" Direction having "IPT" Outcome

    Examples:
      | Test cases                |
      | 6109_EML_BASE_Creative_01 |
      | 6109_EML_BASE_Creative_02 |
      | 6109_EML_BASE_Creative_03 |
      | 6109_EML_BASE_Creative_04 |
      | 6109_EML_BASE_Creative_05 |
      | 6109_EML_BASE_Creative_06 |
      | 6109_EML_BASE_Creative_07 |

  @EMOB_Notification_EML_IH_Base_Validation_6122_Sanity
  Scenario Outline: EMOB_Notification VS16008_6122_EML Validate IH details against database and pega for Base Line test cases
    Given load data from "EMOB_Notification_6122" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then validate EMOB Notification offer details against IH for "EML" Channel with "Outbound" Direction having "IPT" Outcome

    Examples:
      | Test cases                |
      | 6122_EML_BASE_Creative_01 |


  @AdviceLeads_SF_IH_Base_Validation_6003_Sanity
  Scenario Outline: Advice Leads RS23041_6003_SF Validate IH details against database and pega for Base Line test cases
    Given load data from "Active_Leads" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then validate REL offer details against IH for "COS" Channel
    Examples:
      | Test cases                                  |
      | 6003_SF_Base_Creative_1_REL1_NoAdvicePlus   |
      | 6003_SF_Base_Creative_2_CVI1-2_NoAdvicePlus |
      | 6003_SF_Base_Creative_3_Mid_Career          |

  @Near_Primacy_D2D_Bundle_Xsell_Anniversary_Offer_EML_IH_Base_Validation_6172_Sanity
  Scenario Outline: Near_Primacy_D2D_Bundle_Xsell_Anniversary_Offer RS23146_6172_EML Validate IH details against database and pega for Base Line test cases
    Given load data from "Near_Primacy_D2D_Bundle_Xsell_Anniversary_Offer_6172" excel sheet
    Given read batch file customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    When read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then validate Xsell Anniversary Offer offer details against IH for "EML" Channel with "Outbound" Direction having "IPT" Outcome

    Examples:
      | Test cases                      |
      | 6172_EML_BASE_Creative_01_or_02 |


  @ULOC_Insurance_EML @ULOC_Insurance_EML_Base_IH_Validation_5761_Sanity @5761 @EML @RS22065
  Scenario Outline: ULOC Insurance 5761 RS22065 EML Validate Offer Details Against IH for Base Line Test Cases
    Given load data from "ULOCIns_EML_CIE5761" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    And read customer and account information details from excel sheet "CUST_ACCT_RLTNP_DIM" for "<Test cases>"
    Then validate ULOC Insurance Insurance offer details against IH

    Examples:
      | Test cases                |
      | 5761_EML_BASE_Creative_01 |
      | 5761_EML_BASE_Creative_02 |
      | 5761_EML_BASE_Creative_03 |
      | 5761_EML_BASE_Creative_04 |


  @SupplementaryCardCrossSell_EML_Base_IH_Validation_5468_Sanity
  Scenario Outline: Supplementary Card Cross Sell_RS21099_5468_EMAIL Validate IH for Base Line test cases Sep 28th 2023 Release
    Given load data from "SupplementaryCard" excel sheet
    Given read customer information details from excel sheet "CUST_DIM" for "<Test cases>"
    And read account information details from excel sheet "ACCT_DIM" for "<Test cases>"
    Then validate SuppCard Offer Details Against IH

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

