/* Copyright (C) Bank of Nova Scotia - All Rights Reserved
 * Unauthorized copying of this file, via any medium is strictly prohibited
 * Proprietary and confidential
 */
package com.quantum.steps;

import com.github.javafaker.Faker;
import com.qmetry.qaf.automation.step.QAFTestStepProvider;
import com.qmetry.qaf.automation.ui.WebDriverTestBase;
import com.qmetry.qaf.automation.ui.webdriver.QAFExtendedWebElement;
import com.quantum.utils.LogHelper;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.support.ui.Select;

/**
 * ScotiaBank.java
 * <p>
 * This class implements the step definitions for ScotiaBank.feature
 *
 * @author ScotiaBank
 * @version 2.0
 * @since 2019-12-31
 */
@QAFTestStepProvider
public class ScotiaBank {
    Faker faker = new Faker();

    @Given("^User is on Visa Scotia homepage$")
    public void userIsOnVisaScotiaHomepage() {
        // Write code here that turns the phrase above into concrete actions
        new WebDriverTestBase().getDriver().get("http://www.scotiabank.com");
    }

    @When("^User perform the actions to navigate to Personal Information page$")
    public void userPerformTheActionsToNavigateToPersonalInformationPage() throws InterruptedException {
        // Write code here that turns the phrase above into concrete actions
        QAFExtendedWebElement personalBankingLinkElement = new QAFExtendedWebElement("css=ul#main-nav a.personal-banking");
        QAFExtendedWebElement englishLanguageLinkElement = new QAFExtendedWebElement("css=a.lang-en");
        QAFExtendedWebElement productLinkElement = new QAFExtendedWebElement("css=div#personal-banking-content-links");
        QAFExtendedWebElement northAmericaLinkElement = new QAFExtendedWebElement("css=div#background-location a.north-america");
        QAFExtendedWebElement canadaLinkElement = new QAFExtendedWebElement("css=div#background-location ul.country-list li:nth-child(1) a");
        QAFExtendedWebElement applyNowBtnElement = new QAFExtendedWebElement("css=li:nth-child(1) div.visible-desktop a.btn-primary");
        QAFExtendedWebElement applyNowLinkElement = new QAFExtendedWebElement("css=div.cta-secondary a");
        QAFExtendedWebElement termsandconChkbxElement = new QAFExtendedWebElement("css=div.inputContainer input#DISC_AGREE");
        QAFExtendedWebElement startBtnElement = new QAFExtendedWebElement("css=div.buttons button.red-btn ");


        personalBankingLinkElement.click();
        Thread.sleep(5000);
        englishLanguageLinkElement.click();
        productLinkElement.click();
        northAmericaLinkElement.click();
        canadaLinkElement.click();
        applyNowBtnElement.click();
        applyNowLinkElement.click();
        termsandconChkbxElement.click();
        startBtnElement.click();
        Thread.sleep(5000);
    }

    @Then("^User should be able to see Personal Information page$")
    public void userShouldBeAbleToSeePersonalInformationPage() throws InterruptedException {
        // Write code here that turns the phrase above into concrete actions
        QAFExtendedWebElement personalInformationTextElement = new QAFExtendedWebElement("css=div.progress-bar div.sub-title h2");
        QAFExtendedWebElement titleSelectElement = new QAFExtendedWebElement("css=#TITLE");
        QAFExtendedWebElement firstNameInputTextElement = new QAFExtendedWebElement("css=#FNAME");
        QAFExtendedWebElement initialInputTextElement = new QAFExtendedWebElement("css=#INITIAL");
        QAFExtendedWebElement lastNameInputTextElement = new QAFExtendedWebElement("css=#LNAME");

        personalInformationTextElement.verifyText("Step 1 of 4: Personal Information");
        Select titleSelect = new Select(titleSelectElement);
        titleSelect.selectByVisibleText("Mr");
        Thread.sleep(5000);
        firstNameInputTextElement.sendKeys("Nikhil");
        Thread.sleep(5000);
        initialInputTextElement.sendKeys("NA");
        Thread.sleep(5000);
        lastNameInputTextElement.sendKeys("Agrawal");
        Thread.sleep(5000);
    }

    @And("^User should be able to see helpline number on the Personal Information page$")
    public void userShouldBeAbleToSeeHelplineNumberOnThePersonalInformationPage() {
        // Write code here that turns the phrase above into concrete actions
        QAFExtendedWebElement contactScotiaBankTextElement = new QAFExtendedWebElement("css=span#helpLine span.phone");
        contactScotiaBankTextElement.verifyText("1-888-882-8958");
    }

    @Given("^User is on Mastercard Scotia homepage$")
    public void userIsOnMastercardScotiaHomepage() {
        // Write code here that turns the phrase above into concrete actions
        new WebDriverTestBase().getDriver().get("http://www.scotiabank.com/ca/en/personal/credit-cards/mastercard/momentum-card.html");
    }

    @When("^User perform the actions to navigate to Enter Your Info page$")
    public void userPerformTheActionsToNavigateToEnterYourInfoPage() throws InterruptedException {
        // Write code here that turns the phrase above into concrete actions
        QAFExtendedWebElement applyNowBtnMasterCardElement = new QAFExtendedWebElement("css=section#product-cta div.product-cta-content a.button--primary");
        QAFExtendedWebElement acceptAndContinueBtnMasterCardElement = new QAFExtendedWebElement("css=div.disclosureAccept button.button-primary");

        Thread.sleep(5000);
        applyNowBtnMasterCardElement.click();
        Thread.sleep(5000);
        acceptAndContinueBtnMasterCardElement.click();
    }

    @Then("^User should be able to see Enter Your Info page$")
    public void userShouldBeAbleToSeeEnterYourInfoPage() throws InterruptedException {
        // Write code here that turns the phrase above into concrete actions
        QAFExtendedWebElement enterYourInfoTextElement = new QAFExtendedWebElement("css=div.progress-text span");
        QAFExtendedWebElement emailAddressLblElement = new QAFExtendedWebElement("css=#lblRow_Email_AboutYou");
        QAFExtendedWebElement emailAddressTextElement = new QAFExtendedWebElement("css=#email");
        enterYourInfoTextElement.verifyText("Step 1 of 3: Enter your info");
        emailAddressLblElement.click();
        Thread.sleep(5000);
        LogHelper.logger.info(faker.internet().emailAddress());
        Thread.sleep(5000);
        emailAddressTextElement.click();
        emailAddressTextElement.sendKeys(faker.internet().emailAddress());
        Thread.sleep(5000);
    }

    @And("^User should be able to see Contact Us link on Enter Your Info page$")
    public void userShouldBeAbleToSeeContactUsLinkOnEnterYourInfoPage() {
        // Write code here that turns the phrase above into concrete actions
        QAFExtendedWebElement contactUsLinkElement = new QAFExtendedWebElement("css=div.page-header li a.tooltip-toggle");
        contactUsLinkElement.verifyPresent();
    }
}
