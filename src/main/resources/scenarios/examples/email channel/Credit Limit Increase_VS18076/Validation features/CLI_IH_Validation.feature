Feature: Validation for ChannelAdoptionEngagementPromoteMobileDeposit

  
#  As part of D2D Early Engagement Program, this welcome message will target new and existing customers
#  to introduce them to their new D2D account / Scotiabank.
#  It also include a test of the target population who are NEW TO BANK based on Customer relationship date within the last 7 days
  @CreditLimitIncrease @CreditLimitIncrease_IH_Validation @Workstream-5 @4479 @4480 @4481  @4482 @EMAIL @VS17086
  Scenario Outline: CreditLimitIncrease_VS17086_EMAIL Validate offer details against IH for Positive test cases
    Given load data from "CLI" excel sheet
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
      | Test cases           |
      | 4479_IO_ODisp_VGD-RG |
      | 4480_IO_ODisp_AXG-GC |
      | 4481_IO_ODisp_VCL-RG |
      | 4482_IO_ODisp_AXG-GC |
