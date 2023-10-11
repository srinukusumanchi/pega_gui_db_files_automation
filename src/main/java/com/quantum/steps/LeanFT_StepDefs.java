package com.quantum.steps;

import com.github.javafaker.Faker;
import com.hp.lft.sdk.Desktop;
import com.hp.lft.sdk.stdwin.Button;
import com.hp.lft.sdk.stdwin.ButtonDescription;
import com.hp.lft.sdk.stdwin.*;
import com.hp.lft.sdk.web.*;
import com.qmetry.qaf.automation.step.QAFTestStepProvider;
import com.quantum.utils.LeanFTBrowserFactory;
import com.quantum.utils.LeanFTBrowserType;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

@QAFTestStepProvider
public class LeanFT_StepDefs {

    Faker faker = new Faker();

    @Given("^Open the Login page of Scotiabank$")
    public void openTheLoginPageOfScotiabank() throws Throwable {
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

    @When("^User should be able to click on \"([^\"]*)\" Menu$")
    public void user_should_be_able_to_click_on_Menu(String arg1) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
         System.out.println("Step2");
    }

    @Then("^USer should be able to select \"([^\"]*)\" radio button$")
    public void user_should_be_able_to_select_radio_button(String arg1) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        System.out.println("Step3");
    }

    @Then("^User should be able to click on \"([^\"]*)\" button$")
    public void user_should_be_able_to_click_on_button(String arg1) throws Throwable {
        // Write code here that turns the phrase above into concrete actions
        System.out.println("Step4");
    }

    @Given("^Launch notepad enter text$")
    public void Launchnotepadentertext() throws Throwable {
        // Write code here that turns the phrase above into concrete actions

        new ProcessBuilder("C:\\Windows\\System32\\notepad.exe").start();

        Thread.sleep(3000);

        Window notepadWin = Desktop.describe(Window.class,
                new WindowDescription.Builder().windowTitleRegExp("Notepad").build());

        Editor editor = notepadWin.describe(Editor.class,
                new EditorDescription.Builder().nativeClass("Edit").windowClassRegExp("Edit").build());

        editor.isFocused();
//        editor.sendKeys("This is automated text");
        System.out.println(faker.internet().emailAddress());
        Thread.sleep(5000);
        editor.click();
        editor.sendKeys(faker.internet().emailAddress());
        Thread.sleep(5000);


        Thread.sleep(3000);
        notepadWin.close();

        Desktop.describe(Window.class, new WindowDescription.Builder()
                .ownedWindow(false).childWindow(false).windowClassRegExp("Notepad").windowTitleRegExp(" Notepad").build())
                .describe(Dialog.class, new DialogDescription.Builder()
                .ownedWindow(true).childWindow(false).text("Notepad").nativeClass("#32770").build())
                .describe(Button.class, new ButtonDescription.Builder().text("Do&n't Save").nativeClass("Button").build()).click();
    }


    @Given("^Launch the Sprinter application$")
    public void LaunchtheSprinterapplication() throws Throwable {

        new ProcessBuilder("C:\\Program Files (x86)\\HP\\Sprinter\\bin\\Sprinter.exe").start();

    }

}
