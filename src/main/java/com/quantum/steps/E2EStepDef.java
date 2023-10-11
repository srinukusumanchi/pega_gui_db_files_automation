package com.quantum.steps;

import com.hp.lft.sdk.Desktop;
import com.hp.lft.sdk.HorizontalVisualRelation;
import com.hp.lft.sdk.VerticalVisualRelation;
import com.hp.lft.sdk.VisualRelation;
import com.hp.lft.sdk.stdwin.Button;
import com.hp.lft.sdk.stdwin.ButtonDescription;
import com.hp.lft.sdk.stdwin.*;
import com.hp.lft.sdk.web.*;
import com.hp.lft.verifications.Verify;
import com.qmetry.qaf.automation.step.QAFTestStepProvider;
import com.qmetry.qaf.automation.ui.WebDriverTestBase;
import com.qmetry.qaf.automation.ui.webdriver.QAFExtendedWebElement;
import com.quantum.utils.LeanFTBrowserFactory;
import com.quantum.utils.LeanFTBrowserType;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

@QAFTestStepProvider
public class E2EStepDef {

    //Declaring global string variable
    public static String GetText1;

//    @Before
//    public void LeanFT_StepDefs () throws Exception {
//
//        if (ConfigurationManager.getBundle().getString("leanft.test", "").contains("true")) {
//            ModifiableSDKConfiguration config = new ModifiableSDKConfiguration();
//            config.setServerAddress(new URI(ConfigurationManager.getBundle().getString("serverAddress", " ")));
//            SDK.init(config);
//        }
//    }
    @Given("^Open the Login page of Scotiabank - LeanFT$")
    public void openTheLoginPageOfScotiabankLeanFT() throws Throwable {
        // Write code here that turns the phrase above into concrete actions

        Browser browser = LeanFTBrowserFactory.launch(LeanFTBrowserType.BROWSER_NAME);

        browser.navigate("http://www.scotiabank.com/ca/en/0,,2,00.html");
        browser.sync();
        browser.describe(Link.class, new LinkDescription.Builder()
                .role("")
                .accessibilityName("")
                .tagName("A")
                .innerText("Credit Cards ")
                .index(0).build()).click();


        browser.describe(WebElement.class, new WebElementDescription.Builder()
                .tagName("DIV")
                .innerText("Travel ").build()).click();

        browser.describe(WebElement.class, new WebElementDescription.Builder()
                .tagName("DIV")
                .innerText("Cash Back ").build()).click();

        browser.describe(WebElement.class, new WebElementDescription.Builder()
                .tagName("DIV")
                .innerText("Partner ").build()).click();

        browser.describe(WebElement.class, new WebElementDescription.Builder()
                .tagName("DIV")
                .innerText("Student ").build()).click();

        browser.close();
    }

    @When("^Open the Login Page of Scotiabank - Quantum$")
    public void Open_the_Login_Page_of_Scotiabank_Quantum() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        System.out.println("Step2");
        new WebDriverTestBase().getDriver().get("http://www.scotiabank.com/ca/en/personal/credit-cards/mastercard/momentum-card.html");

        QAFExtendedWebElement applyNowBtnMasterCardElement = new QAFExtendedWebElement("css=section#product-cta div.product-cta-content a.button--primary");
        QAFExtendedWebElement acceptAndContinueBtnMasterCardElement = new QAFExtendedWebElement("css=div.disclosureAccept button.button-primary");

        Thread.sleep(5000);
        applyNowBtnMasterCardElement.click();
        Thread.sleep(5000);
        acceptAndContinueBtnMasterCardElement.click();

        QAFExtendedWebElement enterYourInfoTextElement = new QAFExtendedWebElement("css=div.progress-text span");
        enterYourInfoTextElement.verifyText("Step 1 of 3: Enter your info");
        GetText1 = enterYourInfoTextElement.getText();
        System.out.println(GetText1);


        QAFExtendedWebElement contactUsLinkElement = new QAFExtendedWebElement("css=div.page-header li a.tooltip-toggle");
        contactUsLinkElement.verifyPresent();
    }

    @Then("^Enter value in notepad captured in previous step$")
    public void Enter_value_notepad_captured_previous_step() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        System.out.println("Step3");

        new ProcessBuilder("C:\\Windows\\System32\\notepad.exe").start();

        Thread.sleep(3000);

        Window notepadWin = Desktop.describe(Window.class,
                new WindowDescription.Builder().windowTitleRegExp("Notepad").build());

        Editor editor = notepadWin.describe(Editor.class,
                new EditorDescription.Builder().nativeClass("Edit").windowClassRegExp("Edit").build());

        editor.isFocused();
//        editor.sendKeys("This is automated text");
        editor.sendKeys(GetText1);


        Thread.sleep(3000);

//        WebElement element = driver.findElement(By.name("btnK"));
//        RenderedImage snapshot = Utils.getSnapshot(element);
//        RenderedImage snapshot = Utils.getSnapshot((org.openqa.selenium.WebElement) notepadWin);

        notepadWin.close();

        Desktop.describe(Window.class, new WindowDescription.Builder()
                .ownedWindow(false).childWindow(false).windowClassRegExp("Notepad").windowTitleRegExp(" Notepad").build())
                .describe(Dialog.class, new DialogDescription.Builder()
                        .ownedWindow(true).childWindow(false).text("Notepad").nativeClass("#32770").build())
                .describe(Button.class, new ButtonDescription.Builder().text("Do&n't Save").nativeClass("Button").build()).click();
    }

    @Then("^Play with calculator$")
    public void Play_with_calculator() throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        System.out.println("Step4");

        //Launch the Calculator application.. Manually launch the application on remote machine
        Process calc = new ProcessBuilder("C:\\Windows\\System32\\calc.exe").start();

        //Pause to ensure Calculator has fully opened.
        Thread.sleep(4 * 1000);

        try {
            //Create the WindowDescription object for the Calculator application window.
            WindowDescription calculatorDescription = new WindowDescription.Builder().nativeClass("CalcFrame").build();

            // Locate the Calculator window and assign it to an Window object.
            Window calculator = Desktop.describe(Window.class, calculatorDescription);

            // Identify the Calculator window static text.
            Static textBox = calculator.describe(Static.class, new StaticDescription.Builder().windowId(150).nativeClass("Static").build());

            // Locate the number 2 and number 4 buttons on the Calculator.
            Button button4 = calculator.describe(Button.class, new ButtonDescription.Builder().windowId(134).nativeClass("Button").build());
            Button button2 = calculator.describe(Button.class, new ButtonDescription.Builder().windowId(132).nativeClass("Button").build());

            // Locate the number 1 button on the Calculator based on the location of the number 2 and 4 buttons.
            Button button1 = calculator.describe(Button.class, new ButtonDescription.Builder().nativeClass("Button").
                    vri(
                            // The number 2 button is to the right of the number 1 button.
                            new VisualRelation().setTestObject(button2).setHorizontalRelation(HorizontalVisualRelation.RIGHT),
                            // The number 4 button is above the number 1 button.
                            new VisualRelation().setTestObject(button4).setVerticalRelation(VerticalVisualRelation.ABOVE)).build());

            // Click the number 1 button.
            button1.click();
            button1.click();
            button1.click();
            button1.click();
            button2.click();
            button4.click();
            button4.click();
            button4.click();
            button1.click();
            button2.click();
            button1.click();
            button2.click();
            // The number 1 should appear on the Calculator's output screen.
            String visibleText = textBox.getVisibleText();
            // Ensure that the number 1 appears on the screen.
            Verify.areEqual("1", visibleText, "TestCalcButtonsUsingVri", "Verify that the number '1' appears on the calculator's output screen.");

        } finally {
            // Exit and close the Calculator.
            calc.destroy();
        }
    }


}
