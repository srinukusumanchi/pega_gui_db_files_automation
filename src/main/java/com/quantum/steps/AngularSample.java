package com.quantum.steps;

import com.paulhammant.ngwebdriver.ByAngular;
import com.paulhammant.ngwebdriver.NgWebDriver;
import com.qmetry.qaf.automation.step.QAFTestStep;
import com.qmetry.qaf.automation.step.QAFTestStepProvider;
import com.qmetry.qaf.automation.ui.WebDriverTestBase;
import com.qmetry.qaf.automation.ui.webdriver.QAFExtendedWebElement;
import com.qmetry.qaf.automation.ui.webdriver.QAFWebDriver;
import com.quantum.utils.LogHelper;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;

/**
 * AngularSample.java
 * <p>
 * This class implements the step definitions for AngularSample.feature
 *
 * @author ScotiaBank
 * @version 2.0
 * @since 2020-07-14
 */


@QAFTestStepProvider
public class AngularSample {

    static QAFWebDriver driver;
    static NgWebDriver ngWebDriver;

    @QAFTestStep(description="User navigates to {0}")
    public static void userNavigatesTo(String url){
        driver = new WebDriverTestBase().getDriver();
        driver.get(url);
        driver.manage().window().maximize();
        JavascriptExecutor executor = driver;
        ngWebDriver = new NgWebDriver(executor).withRootSelector("formApp");
        ngWebDriver.waitForAngularRequestsToFinish();
    }

    @When("^User enters name, email$")
    public static void enterNameAndEmail() {
        QAFExtendedWebElement nameField = new QAFExtendedWebElement(ByAngular.model("formData.name"));
        nameField.sendKeys("angular");
        QAFExtendedWebElement emailField = new QAFExtendedWebElement(ByAngular.model("formData.email"));
        emailField.sendKeys("test@angular.com");
    }

    @When("^User clicks on next section$")
    public void clickNextSection() {
        QAFExtendedWebElement nextSectionButton = new QAFExtendedWebElement(By.xpath("//a[contains(text(),'Next Section')]"));
        nextSectionButton.click();
    }

    @When("^User selects a console type$")
    public void selectConsoleType() {
        QAFExtendedWebElement consolePs4 = new QAFExtendedWebElement(ByAngular.model("formData.type"));
        consolePs4.click();
    }

    @Then("^User is presented with welcome screen$")
    public void verifyWelcomeScreen() {
        QAFExtendedWebElement testCompleteText = new QAFExtendedWebElement(By.xpath("//h3[contains(text(),'Test Completed')]"));
        if (testCompleteText.verifyVisible()) {
            LogHelper.logger.info("Welcome message is displayed.");
        } else {
            Assert.fail("No message displayed!");
        }
    }

}
