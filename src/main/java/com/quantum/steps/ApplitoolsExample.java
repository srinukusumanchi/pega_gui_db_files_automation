package com.quantum.steps;

import com.applitools.eyes.*;
import com.applitools.eyes.selenium.ClassicRunner;
import com.applitools.eyes.selenium.Configuration;
import com.applitools.eyes.selenium.Eyes;
import com.qmetry.qaf.automation.step.QAFTestStepProvider;
import com.qmetry.qaf.automation.ui.WebDriverTestBase;
import com.quantum.config.SystemProperties;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;




/**
 * ApplitoolsExample.java
 * <p>
 * This class implements the step definitions for ApplitoolsExample.feature
 *
 * @author ScotiaBank
 * @version 2.0
 * @since 2020-11-04
 */


@QAFTestStepProvider
public class ApplitoolsExample {
    WebDriver driver ;
    Eyes  eyes ;

    @Given("^I open the  Scotia Website and validate landing page$")
    public void iOpenTheScotiaWebsiteAndValidateLandingPage()   {
        WebDriver   browser =  new WebDriverTestBase().getDriver();
        EyesRunner runner = new ClassicRunner();
        eyes = new Eyes(runner);
        eyes.setLogHandler(new StdoutLogHandler(true));
        Configuration config = new Configuration();
        config.setApiKey(SystemProperties.SETAPIKEY);
        config.setBatch(new BatchInfo("Demo batch"));
        driver=eyes.open(browser, "Applli tools", "Landing page", new RectangleSize(1000,600));
        driver.get("https://www.scotiabank.com/ca/en/personal.html");
        eyes.checkWindow();
    }

    @When("^I click on on Mortgage and validate the landing pages$")
    public void iClickOnOnMortgageAndValidateTheLandingPages()  {
        driver.findElement(By.xpath("//span[contains(text(),'Mortgages')]")).click();
        eyes.checkWindow("Mortgages");
        eyes.close();
    }

    @Then("^I click on payment calculator and validate$")
    public void iClickOnPaymentCalculatorAndValidate()  {
        driver.findElement(By.xpath("//a[@href='https://dmts.scotiabank.com/tools/mortgagecalculator/en/#launch=com']")).click();
        eyes.checkWindow("Calculator");
        eyes.close();
    }

}