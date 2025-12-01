package com.default_project.stepdefinitions;

import com.default_project.utils.ElementUtils;
import org.junit.Assert;
import com.default_project.driverfactory.DriverFactory;
import com.default_project.pages.ChemicalProppantEmailDelPage;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
public class ChemicalProppantEmailDel extends DriverFactory {
ChemicalProppantEmailDelPage chemicalProppantEmailDelPage = new ChemicalProppantEmailDelPage(driver);
@Given("the user is logged in to the application")
public void the_user_is_logged_in_to_the_application() {
// Logic for user login
}
@When("I navigate to the Jobs section")
public void i_navigate_to_the_jobs_section() {
chemicalProppantEmailDelPage.navigateToJobsSection();
}
@And("I select a Job from the list")
public void i_select_a_job_from_the_list() {
chemicalProppantEmailDelPage.selectJobFromList();
}
@And("I choose a Well associated with the Job")
public void i_choose_a_well_associated_with_the_job() {
chemicalProppantEmailDelPage.chooseWellForJob();
}
@And("I select a Stage for the Job")
public void i_select_a_stage_for_the_job() {
chemicalProppantEmailDelPage.selectStageForJob();
}
@And("I click on the Chemical Setup option")
public void i_click_on_the_chemical_setup_option() {
chemicalProppantEmailDelPage.clickChemicalSetupOption();
}
@Then("the Chemical Setup screen loads successfully")
public void the_chemical_setup_screen_loads_successfully() {
chemicalProppantEmailDelPage.isChemicalSetupScreenLoaded();
}
@When("I click on the Proppant Setup option")
public void i_click_on_the_proppant_setup_option() {
chemicalProppantEmailDelPage.clickProppantSetupOption();
}
@Then("the Proppant Setup screen loads successfully")
public void the_proppant_setup_screen_loads_successfully() {
chemicalProppantEmailDelPage.isProppantSetupScreenLoaded();
}
@When("I click on the Email Setup option")
public void i_click_on_the_email_setup_option() {
chemicalProppantEmailDelPage.clickEmailSetupOption();
}
@Then("the Email Setup screen loads successfully")
public void the_email_setup_screen_loads_successfully() {
chemicalProppantEmailDelPage.isEmailSetupScreenLoaded();
}
@When("the user clicks on the {string} button")
public void the_user_clicks_on_the_button(String buttonName) {
chemicalProppantEmailDelPage.clickButton(buttonName);
}
@And("the user selects {string} from the chemical name dropdown")
public void the_user_selects_from_the_chemical_name_dropdown(String chemicalName) {
chemicalProppantEmailDelPage.selectChemicalFromDropdown(chemicalName);
}
@And("the user enters a valid design concentration of {string}")
public void the_user_enters_a_valid_design_concentration_of(String designConcentration) {
chemicalProppantEmailDelPage.enterDesignConcentration(designConcentration);
}
@And("the user enters a valid designed volume of {string}")
public void the_user_enters_a_valid_designed_volume_of(String designedVolume) {
chemicalProppantEmailDelPage.enterDesignedVolume(designedVolume);
}
@Then("the added {string} should appear in the list")
public void the_added_should_appear_in_the_list(String chemicalName) {
chemicalProppantEmailDelPage.isChemicalInList(chemicalName);
}
@When("the user refreshes the Chemical Setup screen")
public void the_user_refreshes_the_chemical_setup_screen() {
chemicalProppantEmailDelPage.refreshChemicalSetupScreen();
}
@Then("the user refreshes the Proppant Setup screen")
public void the_user_refreshes_the_proppant_setup_screen() {
chemicalProppantEmailDelPage.refreshProppantSetupScreen();
}
@Then("all added Proppants should appear in the list")
public void all_added_proppants_should_appear_in_the_list() {
chemicalProppantEmailDelPage.areAllProppantsDisplayed();
}
@When("the user enters a valid PO number {string}")
public void the_user_enters_a_valid_po_number(String poNumber) {
chemicalProppantEmailDelPage.enterPONumber(poNumber);
}
@When("the user enters a valid email address {string}")
public void the_user_enters_a_valid_email_address(String email) {
chemicalProppantEmailDelPage.enterEmailAddress(email);
}
@Then("the added Chemical vendor should appear in the list")
public void the_added_chemical_vendor_should_appear_in_the_list() {
chemicalProppantEmailDelPage.isVendorInList();
}
@When("the user clicks on the Meeting ID field")
public void the_user_clicks_on_the_meeting_id_field() {
chemicalProppantEmailDelPage.clickMeetingIDField();
}
@And("the user enters {string}")
public void the_user_enters(String meetingId) {
chemicalProppantEmailDelPage.enterMeetingID(meetingId);
}
@Then("the updated Meeting ID is displayed correctly")
public void the_updated_meeting_id_is_displayed_correctly() {
chemicalProppantEmailDelPage.isMeetingIDDisplayedCorrectly();
}
@Then("no validation errors occur")
public void no_validation_errors_occur() {
chemicalProppantEmailDelPage.hasValidationErrors();
}
@When("the user clicks on the Save button")
public void the_user_clicks_on_the_save_button() {
chemicalProppantEmailDelPage.clickSaveButton();
}
@Then("the delivery record should be saved successfully")
public void the_delivery_record_should_be_saved_successfully() {
chemicalProppantEmailDelPage.isDeliveryRecordSaved();
}
@Then("the user refreshes the Email Setup screen")
public void the_user_refreshes_the_email_setup_screen() {
chemicalProppantEmailDelPage.refreshEmailSetupScreen();
}
@Then("the user is on the Proppant Setup screen")
public void the_user_is_on_the_proppant_setup_screen() {
chemicalProppantEmailDelPage.isOnProppantSetupScreen();
}
@Then("the user is on the Email Setup screen")
public void the_user_is_on_the_email_setup_screen() {
chemicalProppantEmailDelPage.isOnEmailSetupScreen();
}
@Then("the chemical entry is added successfully")
public void the_chemical_entry_is_added_successfully() {
chemicalProppantEmailDelPage.isChemicalEntryAdded();
}
@Then("the proppant entry is added successfully")
public void the_proppant_entry_is_added_successfully() {
chemicalProppantEmailDelPage.isProppantEntryAdded();
}
@Then("the vendor entry is added successfully")
public void the_vendor_entry_is_added_successfully() {
chemicalProppantEmailDelPage.isVendorEntryAdded();
}
@Then("the delivery record is created successfully")
public void the_delivery_record_is_created_successfully() {
chemicalProppantEmailDelPage.isDeliveryRecordCreated();
}
@Then("the chemical entry displays the correct design concentration and volume")
public void the_chemical_entry_displays_the_correct_design_concentration_and_volume() {
chemicalProppantEmailDelPage.isChemicalEntryCorrect();
}
@Then("the proppant entry should be displayed correctly")
public void the_proppant_entry_should_be_displayed_correctly() {
chemicalProppantEmailDelPage.isProppantEntryDisplayedCorrectly();
}
@Then("the chemical entry should be displayed correctly")
public void the_chemical_entry_should_be_displayed_correctly() {
chemicalProppantEmailDelPage.isChemicalEntryDisplayedCorrectly();
}
@Then("the user should see error messages for each required field")
public void the_user_should_see_error_messages_for_each_required_field() {
chemicalProppantEmailDelPage.areErrorMessagesDisplayed();
}