package com.quantum.steps;

import com.qmetry.qaf.automation.step.QAFTestStepProvider;
import com.quantum.utils.DriverUtils;
import com.quantum.utils.GigafoxHelper;
import com.quantum.utils.LogHelper;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;

@QAFTestStepProvider
public class GigafoxExample {

    @Given("^the customer opens this URL \"(.*?)\"$")
    public void customerOpensURL(String url) {
        DriverUtils.getDriver().get(url);
    }

    @Then("^the customer scrolls \"(.*?)\"$")
    public void customerScroll(String direction) {
        if (direction.equalsIgnoreCase("UP")) {
            GigafoxHelper.scrollUp();
        } else
            GigafoxHelper.scrollDown();
    }

    @Then("^the customer clicks on \"(.*?)\"$")
    public void customerClicks(String locator) {
        GigafoxHelper.clickLocator(locator);
    }

    @Then("^the customer changes screen orientation to \"(.*?)\"$")
    public void customerChangesScreenOrientation(String screenOrientation) {
        if (screenOrientation.equalsIgnoreCase("LANDSCAPE")) {
            GigafoxHelper.rotateToLandscape();
        } else
            GigafoxHelper.rotateToPortrait();
    }

    @Then("^the customer swipes the screen \"(.*?)\"$")
    public void customerSwipesScreen(String swipeDirection) {
        if (swipeDirection.equalsIgnoreCase("LEFT")) {
            GigafoxHelper.swipeLeft();
        } else if (swipeDirection.equalsIgnoreCase("RIGHT")) {
            GigafoxHelper.swipeRight();
        } else {
            LogHelper.logger.info("Illegal Swipe Direction: Use 'Left' or 'Right'");
        }
    }

    @Then("^the customer navigates to the previous screen$")
    public void customerNavigatesBack() {
        DriverUtils.getDriver().navigate().back();
    }

    @Then("^the customer goes back to the home screen$")
    public void customerGoesBackToHomeScreen() {
        GigafoxHelper.goToHomeScreen();
    }


}
