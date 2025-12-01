
Feature: Chemical,Proppant,Email&Del
  @feature_user_login
  Background: 
    Given the user is logged in to the application

  @validate_navigation_to_setup_screens
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When I navigate to the Jobs section
    And I select a Job from the list
    And I choose a Well associated with the Job
    And I select a Stage for the Job
    And I click on the Chemical Setup option
    Then the Chemical Setup screen loads successfully
    When I click on the Proppant Setup option
    Then the Proppant Setup screen loads successfully
    When I click on the Email Setup option
    Then the Email Setup screen loads successfully

    Examples:
      | Job      | Well       | Stage     |
      | Job1     | Well1      | Stage1    |
      | Job2     | Well2      | Stage2    |

  @feature_user_login
  @add_acid_chemical
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When the user clicks on the "Add Chemical" button
    And the user selects "<chemical_name>" from the chemical name dropdown
    And the user enters a valid design concentration of "<design_concentration>"
    And the user enters a valid designed volume of "<designed_volume>"
    And the user clicks on the "Save" button
    And the user refreshes the Chemical Setup screen
    Then the added "<chemical_name>" should appear in the list

    Examples:
      | chemical_name | design_concentration | designed_volume |
      | Acid          | 15%                  | 1000 liters     |

  @feature_user_login
  @add_slickwater
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When the user clicks on the "Add Chemical" button
    And the user selects "<chemical_name>" from the chemical name dropdown
    And the user enters a valid design concentration "<design_concentration>"
    And the user enters a valid designed volume "<designed_volume>"
    And the user clicks on the "Save" button
    And the user refreshes the Chemical Setup screen
    Then the added "<chemical_name>" appears in the list

    Examples:
      | chemical_name | design_concentration | designed_volume |
      | Slickwater    | 20%                  | 500 liters      |

  @add_diverters
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When the user clicks on the "Add Chemical" button
    And the user selects "Diverters" from the chemical name dropdown
    And the user enters a valid design concentration "<design_concentration>"
    And the user enters a valid designed volume "<designed_volume>"
    And the user clicks on the "Save" button
    And the user refreshes the Chemical Setup screen
    Then the added Diverters should appear in the list

    Examples:
      | design_concentration | designed_volume |
      | 10%                  | 300 liters      |

  @feature_user_login
  @add_linear_gel
  Scenario Outline: Chemical Setup for Linear Gel
    Given the user is on the Chemical Setup screen
    When the user clicks on the "Add Chemical" button
    And the user selects "<chemical_name>" from the chemical name dropdown
    And the user enters a valid design concentration of "<design_concentration>"
    And the user enters a valid designed volume of "<designed_volume>"
    And the user clicks on the "Save" button
    And the user refreshes the Chemical Setup screen
    Then the added "<chemical_name>" should appear in the list

    Examples:
      | chemical_name | design_concentration | designed_volume |
      | Linear Gel    | 25%                  | 800 liters      |

  @feature_user_login
  @add_proppant
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When the user clicks on the "Add Proppant" button
    And the user selects "<proppant_name>" from the dropdown
    And the user enters a valid total design volume of "<total_design_volume>"
    And the user clicks on the "Save" button
    Then the Proppant is saved successfully

    Examples:
      | proppant_name | total_design_volume |
      | Proppant A    | 1000                |
      | Proppant B    | 1000                |
      | Proppant C    | 1000                |
      | Proppant D    | 1000                |

  @refresh_proppant_list
  Scenario: Verify all added Proppants appear in the list
    When the user refreshes the Proppant Setup screen
    Then all added Proppants appear in the list

  @feature_user_login
  @add-vendor
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When the user clicks on the "Add Vendor" button
    And the user selects "Chemical Vendor" from the vendor type dropdown
    And the user enters a valid PO number "<po_number>"
    And the user enters a valid email address "<email>"
    And the user clicks on the "Save" button
    And the user refreshes the Email Setup screen
    Then the added Chemical vendor should appear in the list

    Examples:
      | po_number | email               |
      | PO12345   | vendor@example.com   |

  @feature_user_login
  @update_meeting_id
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    Given the user navigates to the Email Setup screen
    And the user locates the "Others" section
    When the user clicks on the Meeting ID field
    And the user enters "<meeting_id>"
    And the user clicks on the "Save" button
    Then the user refreshes the Email Setup screen
    And the updated Meeting ID is displayed correctly
    And no validation errors occur

    Examples:
      | meeting_id   |
      | Meeting123   |

  @feature_email_setup
  @validate_email_recipients
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When I locate the Email Address section
    And I click on the first email address field
    And I enter "<first_email>"
    And I click on the second email address field
    And I enter "<second_email>"
    And I click on the Save button
    Then the Email Setup screen refreshes without errors

    Examples:
      | first_email              | second_email             |
      | recipient1@example.com   | recipient2@example.com   |

  @feature_user_login
  @create_delivery_record
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When the user clicks on the "Add Delivery Record" button
    And the user selects "<vendor>" from the vendor dropdown
    And the user selects "<PO>" from the PO dropdown
    And the user selects "<chemical_type>" from the chemical type dropdown
    And the user enters a valid BOL number "<BOL>"
    And the user enters a valid received quantity "<quantity>"
    And the user clicks on the "Save" button
    Then the delivery record should be saved successfully

    Examples:
      | vendor        | PO       | chemical_type        | BOL       | quantity |
      | vendor_name   | PO12345  | chemical_type_name   | BOL12345  | 500      |

  @feature_user_login
  @validate_dropdowns
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When the user clicks on the chemical name dropdown
    Then all expected chemical names are displayed

    When the user navigates to the Proppant Setup screen
    And the user clicks on the proppant name dropdown
    Then all expected proppant names are displayed

    When the user navigates to the Email Setup screen
    And the user clicks on the vendor type dropdown
    Then the vendor type dropdown is clicked

  Examples:
    | chemical_name_dropdown | proppant_name_dropdown | vendor_type_dropdown |
    | click                  | click                 | click                |

  @feature_user_login
  @add_save_new_chemical
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When I click on the "Add Chemical" button
    And I fill in "<chemical_name>", "<chemical_type>", "<quantity>", "<supplier>", "<email>", "<delivery_date>"
    And I click "Save"
    Then the chemical is saved successfully
    When I click on the "Add Chemical" button again
    And I fill in "<chemical_name>", "<chemical_type>", "<quantity>", "<supplier>", "<email>", "<delivery_date>"
    And I click "Save & New"
    Then the new chemical entry is created and the form is reset
    When I navigate to the Proppant Setup screen
    And I click on the "Save" button after adding a proppant
    Then the proppant is saved successfully

    Examples:
      | chemical_name | chemical_type | quantity | supplier   | email            | delivery_date |
      | Chemical A    | Type A        | 100      | Supplier A | email@domain.com | 2023-10-01    |
      | Chemical B    | Type B        | 200      | Supplier B | email@domain.com | 2023-10-02    |

  @feature_user_login
  @validate_workflow
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    Given the user is on the Chemical Setup screen
    When I add a chemical with name "<chemical_name>" and quantity "<chemical_quantity>"
    And I save the chemical
    Then the chemical is added successfully
    And the chemical is saved without errors
    Given the user is on the Proppant Setup screen
    When I add a proppant with name "<proppant_name>" and quantity "<proppant_quantity>"
    And I save the proppant
    Then the proppant is added successfully
    And the proppant is saved without errors
    Given the user is on the Email Setup screen
    When I add a vendor with name "<vendor_name>" and email "<vendor_email>"
    And I save the vendor
    Then the vendor is added and saved without errors

    Examples:
      | chemical_name       | chemical_quantity | proppant_name        | proppant_quantity | vendor_name       | vendor_email           |
      | Hydrochloric Acid  | 1000              | Ceramic Proppant     | 500               | ABC Chemicals      | vendor@abc.com        |

  @feature_user_login
  @validate_chemical_proppant_persistence
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    Given the user is on the Chemical Setup screen
    When the user adds a chemical and saves it
    And the user refreshes the Chemical Setup screen
    Then the added chemical is still present in the list
    And the user navigates to the Proppant Setup screen
    When the user adds a proppant and saves it
    And the user refreshes the Proppant Setup screen
    Then the added proppant is still present in the list

  Examples:
    | chemical       | proppant       |
    | <chemical>     | <proppant>     |

  @feature_user_login
  @chemical_setup_accessibility
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    Given the user navigates to the <setup_screen> Setup screen
    When the user uses keyboard navigation to focus on the first input field
    Then the input field has an accessible label
    When the user uses the Tab key to navigate through all fields
    Then ARIA roles are present in the HTML elements

  Examples:
    | setup_screen |
    | Chemical     |
    | Proppant     |
    | Email        |

  @feature_chemical_setup
  @validate_chemical_values
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When I add a chemical with the following details:
      | Name       | Concentration | Volume        |
      | <chemical1> | <concentration1> | <volume1>    |
    And I save the chemical
    And I refresh the Chemical Setup screen
    And I locate the added chemical in the list
    Then the displayed values match the entered values for "<chemical1>"
    
    When I add a chemical with the following details:
      | Name        | Concentration | Volume        |
      | <chemical2> | <concentration2> | <volume2>    |
    And I save the chemical
    And I refresh the Chemical Setup screen
    And I locate the added chemical in the list
    Then the displayed values match the entered values for "<chemical2>"
    Then all values are correct for both chemicals

    Examples:
      | chemical1   | concentration1 | volume1     | chemical2  | concentration2 | volume2      |
      | Acid        | 15%            | 1000 liters | Slickwater  | 20%            | 500 liters   |

  @feature_user_login
  @validate_proppant_setup
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When I add a proppant with specific values "<proppant_name>" and "<proppant_weight>"
    And I save the proppant
    And I refresh the Proppant Setup screen
    And I locate the added proppant in the list
    Then the displayed values for "<proppant_name>" match the entered values
    And I repeat the process for "<second_proppant_name>" and "<second_proppant_weight>"
    Then all values are correct for both proppants

    Examples:
      | proppant_name | proppant_weight | second_proppant_name | second_proppant_weight |
      | Proppant A    | 1000 lbs        | Proppant B          | 1500 lbs                |

  @feature_user_login
  @vendor_email_validation
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When I add a vendor with the email address "<email>"
    And I save the vendor
    And I refresh the Email Setup screen
    And I locate the added vendor in the list
    Then the displayed email address matches the entered email address

    Examples:
      | email               |
      | vendor@example.com  |
      | vendor2@example.com |

  @feature_user_login
  @invalid_design_concentration
  Scenario Outline: Chemical Setup with Invalid Design Concentration
    When the user clicks on the "Add Chemical" button
    And the user selects "<chemical_name>" from the chemical name dropdown
    And the user enters "<design_concentration>"
    And the user enters "<designed_volume>"
    And the user clicks on the "Save" button
    Then an error message is displayed
    And the chemical is not added to the list

    Examples:
      | chemical_name | design_concentration | designed_volume |
      | Acid          | -5%                  | 1000 liters     |

  @feature_user_login
  @error_message_no_name
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When the user clicks on the "Add Proppant" button
    And the proppant name field is empty
    And the user enters "<total_design_volume>"
    And the user clicks on the "Save" button
    Then an error message is displayed
    And the proppant is not added to the list
    And the form remains on the Proppant Setup screen

    Examples:
      | total_design_volume |
      | 1000 lbs           |

  @feature_user_login
  @invalid_email
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When the user clicks on the "Add Vendor" button
    And the user selects "Chemical Vendor" from the vendor type dropdown
    And the user enters a valid PO number "<po_number>"
    And the user enters an invalid email address "<email>"
    And the user clicks on the "Save" button
    Then an error message should be displayed
    And the vendor should not be added to the list

    Examples:
      | po_number | email         |
      | PO12345   | vendor@.com   |

  @feature_user_login
  @error_message_displayed
  Scenario Outline: Chemical Delivery Setup without BOL Number
    When the user clicks on the "Add Delivery Record" button
    And the user selects "<vendor>" from the vendor dropdown
    And the user selects "<po>" from the PO dropdown
    And the user selects "<chemical_type>" from the chemical type dropdown
    And the user leaves the BOL number field empty
    And the user enters "<received_quantity>" as the received quantity
    And the user clicks on the "Save" button
    Then an error message is displayed

    Examples:
      | vendor     | po     | chemical_type | received_quantity |
      | Vendor A   | PO123  | Chemical X    | 500               |
      | Vendor B   | PO456  | Chemical Y    | 500               |

  @feature_user_login
  @invalid_chemical_volume
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When the user clicks on the "Add Chemical" button
    And the user selects "<chemical_name>" from the chemical name dropdown
    And the user enters a valid design concentration "<design_concentration>"
    And the user enters an invalid designed volume "<designed_volume>"
    And the user clicks on the "Save" button
    Then an error message is displayed
    And the chemical is not added to the list

    Examples:
      | chemical_name | design_concentration | designed_volume  |
      | Slickwater    | 20%                  | 10000 liters     |

  @feature_user_login
  @invalid_design_volume
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When the user clicks on the "Add Proppant" button
    And the user selects "<proppant_name>" from the dropdown
    And the user enters "<total_design_volume>" as the total design volume
    And the user clicks on the "Save" button
    Then the user should see an error message
    And the proppant should not be added to the list
    And the form should remain on the Proppant Setup screen

    Examples:
      | proppant_name | total_design_volume |
      | Proppant A    | -500                |

  @feature_email_delivery_setup
  @empty_email_recipient
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When the user clicks on the "Add Vendor" button
    And the user selects "Chemical Vendor" from the vendor type dropdown
    And the user enters a valid PO number "<po_number>"
    And the user leaves the email address field empty
    And the user clicks on the "Save" button
    Then an error message should be displayed
    And the vendor should not be added to the list

    Examples:
      | po_number |
      | PO12345   |

  @feature_user_login
  @invalid-received-quantity
  Scenario Outline: Chemical Delivery Setup for Job Stages
    When the user clicks on the "Add Delivery Record" button
    And the user selects "<vendor>" from the vendor dropdown
    And the user selects "<po>" from the PO dropdown
    And the user selects "<chemical_type>" from the chemical type dropdown
    And the user enters "<bol_number>" as the BOL number
    And the user enters "<received_quantity>" as the received quantity
    And the user clicks on the "Save" button
    Then the error message is displayed
    And the delivery record is not created

    Examples:
      | vendor          | po       | chemical_type | bol_number | received_quantity |
      | abcd pvt.ltd   | PO12345  | Chemical A    | BOL12345   | -100              |

  @feature_user_login
  @duplicate_email_error
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    Given the user clicks on the "Add Vendor" button
    When the user selects "Chemical Vendor" from the vendor type dropdown
    And the user enters a valid PO number "<po_number>"
    And the user enters a valid email address "<email>"
    And the user clicks the "Save" button
    And the user clicks on the "Add Vendor" button again
    And the user enters the same email address "<email>" 
    And the user clicks "Save"
    Then an error message is displayed for duplicate email address

    Examples:
      | po_number | email              |
      | PO12345   | vendor@example.com  |

  @feature_user_login
  @error_message_empty_name
  Scenario Outline: Verify error message when adding chemical without name
    When the user clicks on the "Add Chemical" button
    And the user leaves the chemical name field empty
    And the user enters a valid design concentration "<design_concentration>"
    And the user enters a valid designed volume "<designed_volume>"
    And the user clicks on the "Save" button
    Then an error message is displayed
    And the chemical is not added to the list

    Examples:
      | design_concentration | designed_volume |
      | 15%                  | 1000 liters     |

  @feature_user_login
  @validate_maximum_chemicals
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When the user clicks on the "Add Chemical" button
    And the user selects "<chemical_name>" from the chemical name dropdown
    And the user enters "<design_concentration>" as the design concentration
    And the user enters "<designed_volume>" as the designed volume
    And the user clicks on the "Save" button
    Then the user verifies that all added chemicals appear in the list

    Examples:
      | chemical_name | design_concentration | designed_volume |
      | Acid          | 15%                  | 1000 liters     |
      | Acid          | 15%                  | 1000 liters     |
      | Acid          | 15%                  | 1000 liters     |
      | Acid          | 15%                  | 1000 liters     |
      | Acid          | 15%                  | 1000 liters     |
      | Acid          | 15%                  | 1000 liters     |
      | Acid          | 15%                  | 1000 liters     |
      | Acid          | 15%                  | 1000 liters     |
      | Acid          | 15%                  | 1000 liters     |
      | Acid          | 15%                  | 1000 liters     |

  @feature_user_login
  @valid_proppant_addition
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When I click on the "Add Proppant" button
    And I select "<proppant_name>" from the dropdown
    And I enter a valid total design volume of "<total_design_volume>"
    And I click on the "Save" button
    And I repeat steps 2 to 5 for the maximum number of proppants allowed
    And I refresh the Proppant Setup screen
    Then all added proppants should appear in the list

    Examples:
      | proppant_name | total_design_volume |
      | Proppant A    | 1000 lbs           |
      | Proppant B    | 1500 lbs           |
      | Proppant C    | 2000 lbs           |
      | Proppant D    | 2500 lbs           |

  @feature_user_login
  @add_chemical_edge_volume
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When the user clicks on the "Add Chemical" button
    And the user selects "<chemical>" from the chemical name dropdown
    And the user enters a valid design concentration of "<design_concentration>"
    And the user enters a designed volume of "<designed_volume>"
    And the user clicks on the "Save" button
    Then the chemical should be added successfully

    Examples:
      | chemical | design_concentration | designed_volume |
      | Acid     | 15%                  | 0 liters        |
      | Acid     | 15%                  | 10000 liters    |

  @feature_user_login
  @add_proppant_edge_volume
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When the user clicks on the "Add Proppant" button
    And the user selects "<proppant_name>" from the dropdown
    And the user enters a total design volume of "<total_design_volume>" lbs
    And the user clicks on the "Save" button
    Then the proppant should be added successfully

    Examples:
      | proppant_name | total_design_volume |
      | Proppant A    | 0                   |
      | Proppant A    | 5000                |

  Then all added proppants should appear in the list

  @feature_user_login
  @create_delivery_record_edge_values
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When the user clicks on the "Add Delivery Record" button
    And the user selects "<vendor>" from the vendor dropdown
    And the user selects "<po>" from the PO dropdown
    And the user selects "<chemical_type>" from the chemical type dropdown
    And the user enters a valid BOL number "<bol_number>"
    And the user enters a received quantity of <received_quantity> liters
    And the user clicks on the "Save" button
    Then the delivery record should be saved successfully

    Examples:
      | vendor             | po                | chemical_type        | bol_number  | received_quantity |
      | valid_vendor_name  | valid_po_number   | valid_chemical_type  | BOL12345    | 0                 |

  @feature_user_login
  @valid-delivery-record-creation
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When the user clicks on the "Add Delivery Record" button
    And the user selects a vendor "<vendor>" from the vendor dropdown
    And the user selects a PO "<PO>" from the PO dropdown
    And the user selects a chemical type "<chemical_type>" from the chemical type dropdown
    And the user enters a valid BOL number "<BOL>"
    And the user enters a received quantity of maximum allowed liters "<received_quantity>"
    And the user clicks on the "Save" button
    Then the delivery record is saved successfully

    Examples:
      | vendor         | PO       | chemical_type | BOL       | received_quantity |
      | abcd pvt.ltd   | PO12345  | Chemical A    | BOL12345  | 10000             |

  @feature_user_login
  @valid_chemical_addition
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When the user clicks on the "Add Chemical" button
    And the user selects "<chemical_name>" from the chemical name dropdown
    And the user enters a valid design concentration of "<design_concentration>"
    And the user enters a valid designed volume of "<designed_volume>"
    And the user clicks on the "Save" button
    Then the chemical should be added successfully

    Examples:
      | chemical_name | design_concentration | designed_volume |
      | Acid          | 0%                   | 1 liter         |
      | Acid          | 100%                 | 500 liters      |

  @feature_user_login
  @add_proppant_unusual_totals
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When the user clicks on the "Add Proppant" button
    And the user selects "<proppant_name>" from the dropdown
    And the user enters a total design volume of "<total_design_volume>" lbs
    And the user clicks on the "Save" button
    Then the proppant should be added successfully
    And the user repeats the process for another unusual combination
    When the user clicks on the "Add Proppant" button
    And the user selects "<proppant_name>" from the dropdown
    And the user enters a total design volume of "<total_design_volume_2>" lbs
    And the user clicks on the "Save" button
    Then the second proppant should be added successfully
    And all added proppants should appear in the list

    Examples:
      | proppant_name | total_design_volume | total_design_volume_2 |
      | Proppant A    | 0                  | 5000                  |

  @feature_user_login
  @create_delivery_record
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When the user clicks on the "Add Delivery Record" button
    And the user selects "<vendor>" from the vendor dropdown
    And the user selects "<PO>" from the PO dropdown
    And the user selects "<chemical_type>" from the chemical type dropdown
    And the user enters a valid BOL number "<BOL_number>"
    And the user enters a received quantity of "<received_quantity>" liters
    And the user clicks on the "Save" button
    Then the delivery record is saved successfully

    Examples:
      | vendor       | PO        | chemical_type | BOL_number | received_quantity |
      | Vendor A    | PO123    | Chemical X    | BOL12345   | 0                 |

  @feature_user_login
  @validate_navigation
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When I select a Job from the list
    And I choose a Well associated with the Job
    And I select a Stage for the Job
    And I click on the Chemical Setup option
    Then the Chemical Setup screen should load correctly
    And all UI elements on the Chemical Setup screen are functional
    And I click on the Proppant Setup option
    Then the Proppant Setup screen should load correctly
    And all UI elements on the Proppant Setup screen are functional

    Examples:
      | Job   | Well   | Stage   |
      | Job1  | WellA  | Stage1  |
      | Job2  | WellB  | Stage2  |

  @feature_user_login
  @add_chemical
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    Given the user clicks on the "Add Chemical" button
    When the user selects "<chemical_name>" from the chemical name dropdown
    And the user enters a valid design concentration "<design_concentration>"
    And the user enters a valid designed volume "<designed_volume>"
    And the user clicks on the "Save" button
    Then a confirmation message appears indicating successful save
    And the Chemical Setup screen refreshes without errors
    And the added "<chemical_name>" is displayed in the list with correct details

    Examples:
      | chemical_name | design_concentration | designed_volume |
      | Acid          | 15%                  | 1000 liters     |

  @feature_user_login
  @add_slickwater
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When the user clicks on the "Add Chemical" button
    And the user selects "<chemical_name>" from the chemical name dropdown
    And the user enters "<design_concentration>"
    And the user enters "<designed_volume>"
    And the user clicks on the "Save" button
    And the user refreshes the Chemical Setup screen
    Then the added "<chemical_name>" should appear in the list

    Examples:
      | chemical_name | design_concentration | designed_volume |
      | Slickwater    | 20%                  | 500 liters      |

  @feature_user_login
  @add_proppant
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When the user clicks on the "Add Proppant" button
    And the user selects "<proppant>" from the dropdown
    And the user enters "<total_design_volume>"
    And the user clicks on the "Save" button
    Then a confirmation message should appear indicating successful save

    Examples:
      | proppant    | total_design_volume |
      | Proppant A  | 2000 lbs           |
      | Proppant B  | 2000 lbs           |
      | Proppant C  | 2000 lbs           |
      | Proppant D  | 2000 lbs           |

  @verify_proppants_displayed
  Scenario Outline: Verify Added Proppants Displayed in List
    When the user refreshes the Proppant Setup screen
    Then all added Proppants should appear in the list

    Examples:
      | proppant    |
      | Proppant A  |
      | Proppant B  |
      | Proppant C  |
      | Proppant D  |

  @feature_user_login
  @add_chemical_vendor
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When the user clicks on the "Add Vendor" button
    And the user selects "<vendor_type>" from the dropdown
    And the user enters a valid PO number "<po_number>"
    And the user clicks on the "Save" button
    Then a confirmation message appears indicating successful save
    And the user refreshes the Email Setup screen
    Then both vendors are displayed in the list with correct details

    Examples:
      | vendor_type       | po_number |
      | Chemical Vendor   | 12345     |

  @add_proppant_vendor
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When the user clicks on the "Add Vendor" button
    And the user selects "<vendor_type>" from the dropdown
    And the user enters a valid PO number "<po_number>"
    And the user clicks on the "Save" button
    Then a confirmation message appears indicating successful save
    And the user refreshes the Email Setup screen
    Then both vendors are displayed in the list with correct details

    Examples:
      | vendor_type       | po_number |
      | Proppant Vendor   | 12345     |

  @feature_user_login
  @update_meeting_id
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    Given the user locates the "Others" section
    When the user clicks on the Meeting ID field
    And the user enters a valid Meeting ID "<meeting_id>"
    And the user clicks on the "Save" button
    And the user refreshes the Email Setup screen
    Then the updated Meeting ID is displayed correctly
    And no validation errors occur

    Examples:
      | meeting_id  |
      | Meeting123  |

  @feature_user_login
  @create_delivery_record
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When the user clicks on the "Create Delivery Record" button
    And the user selects "<vendor>" from the dropdown
    And the user enters a valid PO number "<po_number>"
    And the user selects a chemical type from the dropdown
    And the user enters a valid BOL number "<bol_number>"
    And the user enters received quantity "<received_quantity>" and UOM "<uom>"
    And the user clicks on the "Save" button
    Then a confirmation message appears indicating successful save

    Examples:
      | vendor           | po_number | bol_number | received_quantity | uom    |
      | abcd pvt.ltd    | 54321     | BOL123     | 100               | liters |

  @feature_user_login
  @verify_dropdowns
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When I click on the chemical name dropdown
    Then all expected chemical names are listed without omissions
    When I click on the design concentration dropdown
    Then valid concentration options are displayed without errors
    When I click on the designed volume dropdown
    Then valid volume options are displayed without errors
    Then no errors occur during dropdown interactions

  Examples:
    | chemical_name_dropdown | design_concentration_dropdown | designed_volume_dropdown |
    | valid_chemical_names   | valid_concentration_options   | valid_volume_options     |

  @feature_user_login
  @add_and_save_chemical
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When the user clicks on the "Add Chemical" button
    And the user fills in valid details for a chemical
      | chemical_name       | chemical_formula | molecular_weight | supplier_name      | supplier_email             | quantity | unit | delivery_date |
      | <chemical_name>     | <chemical_formula> | <molecular_weight> | <supplier_name> | <supplier_email>         | <quantity> | <unit> | <delivery_date> |
    And the user clicks the "Save" button
    Then a confirmation message appears indicating successful save
    When the user clicks on the "Add Chemical" button again
    And the user fills in valid details for another chemical
      | chemical_name       | chemical_formula | molecular_weight | supplier_name      | supplier_email             | quantity | unit | delivery_date |
      | <chemical_name>     | <chemical_formula> | <molecular_weight> | <supplier_name> | <supplier_email>         | <quantity> | <unit> | <delivery_date> |
    And the user clicks the "Save & New" button
    Then a confirmation message appears indicating successful save and new entry
    And the new chemical entry is displayed in the list

    Examples:
      | chemical_name     | chemical_formula | molecular_weight | supplier_name      | supplier_email             | quantity | unit | delivery_date |
      | Sodium Chloride   | NaCl             | 58.44            | ABC Chemicals      | supplier@abcchemicals.com | 100      | kg   | 12/5/2025     |
      | Potassium Sulfate  | K2SO4           | 174.26           | XYZ Chemicals      | supplier@xyzchemicals.com | 200      | kg   | 12/10/2025    |

  @feature_user_login
  @validate_workflow
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When the user adds a valid chemical entry "<chemical_name>"
    Then the chemical entry is added successfully without errors
    When the user navigates to the Proppant Setup screen
    Then the user is on the Proppant Setup screen
    When the user adds a valid proppant entry "<proppant_name>"
    Then the proppant entry is added successfully without errors
    When the user navigates to the Email Setup screen
    Then the user is on the Email Setup screen
    When the user adds a valid vendor entry "<vendor_name>"
    Then the vendor entry is added successfully without errors
    When the user navigates to the Chemical Delivery Tracking screen
    Then the user is on the Chemical Delivery Tracking screen
    When the user creates a valid delivery record with ID "<delivery_record_id>"
    Then the delivery record is created successfully without errors

    Examples:
      | chemical_name      | proppant_name       | vendor_name | delivery_record_id |
      | Sodium Chloride    | Ceramic Proppant    | Vendor A    | DEL123456          |

  @feature_user_login
  @accessibility_validation
  Scenario Outline: Validate Accessibility Features in Chemical Setup
    When I use keyboard navigation to focus on the chemical name dropdown
    Then the dropdown should have an ARIA label
    When I use keyboard navigation to focus on the design concentration field
    Then the field should have an ARIA label
    When I use keyboard navigation to focus on the designed volume field
    Then the field should have an ARIA label
    Then the tooltips should be accessible via keyboard navigation

  Examples:
    | action                                      |
    | Navigate to the Chemical Setup screen.     |
    | Use keyboard navigation to focus on the chemical name dropdown. |
    | Verify that the dropdown has an ARIA label.|
    | Use keyboard navigation to focus on the design concentration field. |
    | Verify that the field has an ARIA label.   |
    | Use keyboard navigation to focus on the designed volume field. |
    | Verify that the field has an ARIA label.   |
    | Ensure that tooltips are accessible via keyboard navigation. |

  @feature_chemical_setup
  @validate_chemical_entry
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When the user clicks on the "Add Chemical" button
    And the user selects "<chemical_name>" from the chemical name dropdown
    And the user enters a design concentration of "<design_concentration>"
    And the user enters a designed volume of "<designed_volume>"
    And the user clicks on the "Save" button
    Then a confirmation message appears indicating successful save
    And the user refreshes the Chemical Setup screen
    Then the "<chemical_name>" entry displays the correct design concentration and volume

    Examples:
      | chemical_name | design_concentration | designed_volume  |
      | Diverter      | 10%                  | 1500 liters      |

  @feature_user_login
  @validate_total_design_volume
  Scenario Outline: Validate total design volume input for Proppants
    When the user clicks on the "Add Proppant" button
    And the user selects "<proppant>"
    And the user enters "<total_design_volume>"
    And the user clicks on the "Save" button
    Then an error message should be displayed for invalid input
    When the user enters "<valid_total_design_volume>"
    And the user clicks on the "Save" button again
    Then a confirmation message should appear indicating successful save

    Examples:
      | proppant  | total_design_volume | valid_total_design_volume |
      | Proppant E| -500 lbs           | 2500 lbs                 |

  @feature_email_setup
  @invalid_email_handling
  Scenario Outline: Validate Email Setup with Invalid and Valid Addresses
    When the user clicks on the "Add Email Recipient" button
    And the user enters "<email_input>"
    And the user clicks on the "Save" button
    Then an error message is displayed indicating invalid email format
    And the user is prompted to correct the input
    When the user enters "<valid_email>"
    And the user clicks on the "Save" button again
    Then a confirmation message appears indicating successful save
    And the valid email address is displayed in the recipient list

    Examples:
      | email_input         | valid_email          |
      | invalid-email       | krishna@gmail.com    |
      | abc@                | krishna@gmail.com    |

  @feature_user_login
  @empty_fields_error
  Scenario Outline: Chemical Delivery Tracking Handles Empty Fields
    When the user clicks on the "Create Delivery Record" button
    And the user leaves all fields empty
    And the user clicks on the "Save" button
    Then the error messages are displayed for each required field

    Examples:
      | field name |
      |            |
      |            |
      |            |
      |            |
      |            |
      |            |
      |            |

  @valid_details_submission
  Scenario Outline: Chemical Delivery Tracking Create Delivery Record Successfully
    When the user fills in valid details for each field
    And the user clicks on the "Save" button again
    Then the delivery record is created and displayed in the list

    Examples:
      | field name |
      | Valid1     |
      | Valid2     |
      | Valid3     |
      | Valid4     |
      | Valid5     |
      | Valid6     |
      | Valid7     |

  @feature_user_login
  @concurrent_access
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    Given User A navigates to the Chemical Setup screen
    And User B navigates to the same Chemical Setup screen
    When User A adds a new chemical entry
    And User B adds a different chemical entry simultaneously
    And both users click on the Save button
    And both users refresh their screens
    Then both entries are displayed correctly
    And no data loss or errors occur

    Examples:
      | title                                                        |
      | Chemical, Proppant, Email & Delivery Setup for Job Stages  |

  @feature_email_setup
  @invalid_po_number
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When the user clicks on the "Add Vendor" button
    And the user enters a PO number "<po_number>"
    And the user clicks on the "Save" button
    Then an error message is displayed indicating the limit
    And the user is prompted to correct the input
    When the user enters a valid PO number "<valid_po_number>"
    And the user clicks on the "Save" button again
    Then a confirmation message appears indicating successful save
    And the valid PO number is displayed in the vendor list

    Examples:
      | po_number         | valid_po_number |
      | aaaaaaaaaaaaaaaaaa| PO123456        |

  @feature_user_login
  @valid-chemical-entries
  Scenario Outline: Chemical Setup with Large Number of Entries
    Given the user is on the Chemical Setup screen
    When the user adds "<chemical_name>" as a chemical entry
    And the user clicks the "Save" button
    Then a confirmation message should appear
    And the user refreshes the Chemical Setup screen
    Then all entries should be displayed correctly

    Examples:
      | chemical_name      |
      | chemical name 1    |
      | chemical name 2    |
      | chemical name 3    |
      | chemical name 4    |
      | chemical name 5    |
      | chemical name 6    |
      | chemical name 7    |
      | chemical name 8    |
      | chemical name 9    |
      | chemical name 10   |
      | chemical name 11   |
      | chemical name 12   |
      | chemical name 13   |
      | chemical name 14   |
      | chemical name 15   |
      | chemical name 16   |
      | chemical name 17   |
      | chemical name 18   |
      | chemical name 19   |
      | chemical name 20   |
      | chemical name 21   |
      | chemical name 22   |
      | chemical name 23   |
      | chemical name 24   |
      | chemical name 25   |
      | chemical name 26   |
      | chemical name 27   |
      | chemical name 28   |
      | chemical name 29   |
      | chemical name 30   |
      | chemical name 31   |
      | chemical name 32   |
      | chemical name 33   |
      | chemical name 34   |
      | chemical name 35   |
      | chemical name 36   |
      | chemical name 37   |
      | chemical name 38   |
      | chemical name 39   |
      | chemical name 40   |
      | chemical name 41   |
      | chemical name 42   |
      | chemical name 43   |
      | chemical name 44   |
      | chemical name 45   |
      | chemical name 46   |
      | chemical name 47   |
      | chemical name 48   |
      | chemical name 49   |
      | chemical name 50   |
      | chemical name 51   |
      | chemical name 52   |
      | chemical name 53   |
      | chemical name 54   |
      | chemical name 55   |
      | chemical name 56   |
      | chemical name 57   |
      | chemical name 58   |
      | chemical name 59   |
      | chemical name 60   |
      | chemical name 61   |
      | chemical name 62   |
      | chemical name 63   |
      | chemical name 64   |
      | chemical name 65   |
      | chemical name 66   |
      | chemical name 67   |
      | chemical name 68   |
      | chemical name 69   |
      | chemical name 70   |
      | chemical name 71   |
      | chemical name 72   |
      | chemical name 73   |
      | chemical name 74   |
      | chemical name 75   |
      | chemical name 76   |
      | chemical name 77   |
      | chemical name 78   |
      | chemical name 79   |
      | chemical name 80   |
      | chemical name 81   |
      | chemical name 82   |
      | chemical name 83   |
      | chemical name 84   |
      | chemical name 85   |
      | chemical name 86   |
      | chemical name 87   |
      | chemical name 88   |
      | chemical name 89   |
      | chemical name 90   |
      | chemical name 91   |
      | chemical name 92   |
      | chemical name 93   |
      | chemical name 94   |
      | chemical name 95   |
      | chemical name 96   |
      | chemical name 97   |
      | chemical name 98   |
      | chemical name 99   |
      | chemical name 100  |

  @feature_user_login
  @validate_proppant_data_retention
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When the user clicks on the "Add Proppant" button
    And the user selects "<proppant_name>" from the dropdown
    And the user enters "<total_design_volume>"
    And the user clicks on the "Save" button
    And the user refreshes the Proppant Setup screen
    Then "<proppant_name>" should be displayed in the list
    And the total design volume should be "<total_design_volume>"

    Examples:
      | proppant_name | total_design_volume |
      | Proppant F    | 3000 lbs            |

  @feature_user_login
  @invalid_fields
  Scenario Outline: Chemical Delivery Tracking Error Messages for Required Fields
    When the user clicks on the "Create Delivery Record" button
    And the user leaves all fields empty
    And the user clicks on the "Save" button
    Then the user should see error messages for each required field

    Examples:
      | field_name |
      |            |
      |            |
      |            |
      |            |
      |            |
      |            |

  @valid_submission
  Scenario Outline: Successful Creation of Delivery Record
    When the user clicks on the "Create Delivery Record" button
    And the user fills in valid details:
      | Company Name     | Contact Person | Email               | Phone      | Address | City     | Zip Code   | Delivery Date |
      | <Company Name>   | <Contact Person>| <Email>            | <Phone>    | <Address>| <City>   | <Zip Code> | <Delivery Date> |
    And the user clicks on the "Save" button again
    Then the delivery record should be created successfully

    Examples:
      | Company Name     | Contact Person | Email               | Phone      | Address | City     | Zip Code   | Delivery Date |
      | abcd pvt.ltd     | krishna        | krishna@gmail.com   | 231235     | ramu    | ramu     | 9876543210 | 12/5/2025     |

  @feature_user_login
  @chemical_setup
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When the user clicks on the "Add Chemical" button
    And the user selects "<chemical_name>" from the chemical name dropdown
    And the user enters "<design_concentration>"
    And the user enters "<designed_volume>"
    And the user clicks on the "Save" button
    Then a confirmation message appears indicating successful save

    Examples:
      | chemical_name | design_concentration | designed_volume |
      | Linear Gel    | 25%                  | 2000 liters     |
      | Diverter      | 25%                  | 2000 liters     |
      | Slickwater    | 25%                  | 2000 liters     |

  @refresh_chemical_list
  Scenario Outline: Refresh the Chemical Setup Screen
    When the user refreshes the Chemical Setup screen
    Then all chemical entries should be displayed correctly in the list

    Examples:
      |            |
      |            |

  @feature_user_login
  @valid-proppant-setup
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When the user clicks on the "Add Proppant" button
    And the user selects "<proppant>" from the dropdown
    And the user enters a total design volume of <total_design_volume>
    And the user clicks on the "Save" button
    Then a confirmation message appears indicating successful save

    Examples:
      | proppant   | total_design_volume |
      | Proppant G | 1500 lbs           |
      | Proppant H | 1500 lbs           |
      | Proppant I | 1500 lbs           |

    Then the user refreshes the Proppant Setup screen
    Then all proppant entries are displayed correctly in the list

  @feature_user_login
  @invalid_design_concentration
  Scenario Outline: Chemical Setup displays error for invalid design concentration
    When the user clicks on the "Add Chemical" button
    And the user selects "<chemical_name>" from the chemical name dropdown
    And the user enters "<design_concentration>"
    And the user enters "<designed_volume>"
    And the user clicks on the "Save" button
    Then an error message is displayed

    Examples:
      | chemical_name | design_concentration | designed_volume |
      | Acid          | -5%                  | 1000 liters     |

  @valid_design_concentration
  Scenario Outline: Chemical Setup accepts valid design concentration
    When the user clicks on the "Add Chemical" button
    And the user selects "<chemical_name>" from the chemical name dropdown
    And the user enters "<design_concentration>"
    And the user enters "<designed_volume>"
    And the user clicks on the "Save" button
    Then the chemical is saved successfully

    Examples:
      | chemical_name | design_concentration | designed_volume |
      | Acid          | 10%                  | 1000 liters     |

  @feature_user_login
  @invalid_total_design_volume
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When the user clicks on the "Add Proppant" button
    And the user selects "<proppant>" from the dropdown
    And the user enters an invalid total design volume <total_design_volume>
    And the user clicks on the "Save" button
    Then an error message is displayed indicating invalid volume
    When the user corrects the total design volume to <valid_total_design_volume>
    And the user clicks on the "Save" button
    Then a confirmation message appears indicating successful save

    Examples:
      | proppant   | total_design_volume | valid_total_design_volume |
      | Proppant J | -100 lbs           | 100 lbs                   |

  @feature_user_login
  @invalid-email
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When the user clicks on the "Add Email Recipient" button
    And the user enters an invalid email address "<invalid_email>"
    And the user clicks on the "Save" button
    Then an error message should be displayed indicating invalid email format
    When the user enters a valid email address "<valid_email>"
    And the user clicks on the "Save" button
    Then a confirmation message should appear indicating successful save
    And the invalid email address should not be displayed in the recipient list

    Examples:
      | invalid_email       | valid_email          |
      | user@domain        | krishna@gmail.com    |

  @feature_user_login
  @empty_fields_error
  Scenario Outline: Chemical Delivery Tracking Setup for Job Stages
    When the user clicks on the "Create Delivery Record" button
    And leaves all fields empty
    And the user clicks on the "Save" button
    Then error messages are displayed for each required field
    And the user is prompted to fill in the required fields
    When the user fills in valid details for each field
      | Field Name             | Value                |
      | Company                | "<company>"         |
      | Contact Person         | "<contact_person>"   |
      | Email                  | "<email>"           |
      | Phone Number           | "<phone_number>"    |
      | Added By               | "<added_by>"        |
      | Completed By           | "<completed_by>"    |
      | Delivery Date          | "<delivery_date>"   |
    And the user clicks on the "Save" button again
    Then a confirmation message appears indicating successful save
    And the delivery record is created and displayed in the list

    Examples:
      | company         | contact_person | email                | phone_number | added_by | completed_by | delivery_date |
      | abcd pvt.ltd   | krishna        | krishna@gmail.com    | 9876543210   | ramu     | ramu         | 12/5/2025     |

  @feature_email_setup
  @invalid_email_limit
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When the user clicks on the "Add Vendor" button
    And the user enters an email address exceeding the maximum limit "<invalid_email>"
    And the user clicks on the "Save" button
    Then an error message should be displayed
    And the user is prompted to correct the input
    When the user enters a valid email address "<valid_email>"
    And the user clicks on the "Save" button again
    Then a confirmation message should appear indicating successful save
    And the valid email address should be displayed in the vendor list

    Examples:
      | invalid_email               | valid_email          |
      | a * 256 characters          | krishna@gmail.com    |

  @feature_user_login
  @invalid_bol_entry
  Scenario Outline: Chemical Delivery Tracking with Invalid BOL Number
    When the user clicks on the "Create Delivery Record" button
    And the user enters an invalid BOL number "<invalid_bol>"
    And the user clicks on the "Save" button
    Then an error message is displayed indicating invalid BOL format
    And the user is prompted to correct the input
    When the user enters a valid BOL number "<valid_bol>" and saves again
    Then a confirmation message appears indicating successful save
    And the invalid BOL number is not displayed in the delivery records

    Examples:
      | invalid_bol | valid_bol   |
      | BOL@123     | BOL123456   |

  @feature_user_login
  @invalid_quantity_check
  Scenario Outline: Validate that the Chemical Delivery Tracking screen displays an error when an invalid received quantity is entered
    Given the user clicks on the "Create Delivery Record" button
    When the user enters an invalid received quantity "<invalid_quantity>"
    And the user clicks on the "Save" button
    Then an error message should be displayed
    And the user is prompted to correct the input
    When the user enters a valid received quantity "<valid_quantity>"
    And the user clicks on the "Save" button
    Then a confirmation message should appear indicating successful save
    And the invalid received quantity should not be displayed in the delivery records

    Examples:
      | invalid_quantity | valid_quantity |
      | -50 liters      | 100 liters     |

  @feature_user_login
  @invalid-uom
  Scenario Outline: Chemical Delivery Tracking with Invalid UOM
    When the user clicks on the "Create Delivery Record" button
    And the user enters "<uom>"
    And the user clicks on the "Save" button
    Then an error message should be displayed indicating invalid UOM format
    And the user is prompted to correct the input
    When the user enters "<valid_uom>"
    And the user clicks on the "Save" button
    Then a confirmation message should appear indicating successful save
    And the invalid UOM should not be displayed in the delivery records

    Examples:
      | uom         | valid_uom |
      | invalidUOM  | liters    |

  @feature_user_login
  @invalid-inventory-type
  Scenario Outline: Validate Chemical Delivery Tracking with Invalid Inventory Type
    When the user clicks on the "Create Delivery Record" button
    And the user enters an invalid inventory type "<invalid_inventory_type>"
    And the user clicks on the "Save" button
    Then an error message is displayed indicating invalid inventory type
    And the user is prompted to correct the input
    When the user enters a valid inventory type "<valid_inventory_type>"
    And the user clicks on the "Save" button
    Then a confirmation message appears indicating successful save
    And the invalid inventory type is not displayed in the delivery records

    Examples:
      | invalid_inventory_type | valid_inventory_type |
      | invalidType            | validInventoryType   |

  @feature_user_login
  @unauthorized_access
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When the user attempts to navigate to the Job Setup screen
    Then access is denied
    And an appropriate error message is displayed
    When the user attempts to access the Chemical Setup screen
    Then access is denied
    And an appropriate error message is displayed
    When the user logs out of the application
    Then the user is logged out successfully

  Examples:
    | username | password |
    | unauthorized_user | no_password_required |

  @feature_user_login
  @max-chemical-entries
  Scenario Outline: Chemical Setup can handle maximum chemical entries
    When the user adds the maximum number of chemical entries allowed
    And the user clicks on the "Save" button after each entry
    And the user refreshes the Chemical Setup screen
    Then all entries should be displayed correctly
    And there should be no performance lag during the process
    And the UI should remain responsive
    And no errors should occur during the save and refresh actions

  Examples:
    | MaxEntries |
    | 50         |

  @feature_user_login
  @max_proppant_entries
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When I add the maximum number of proppant entries allowed
    And I click on the Save button after each entry
    And I refresh the Proppant Setup screen
    Then all entries should be displayed correctly
    And no performance lag is experienced
    And the UI remains responsive
    And no errors occur during the save and refresh actions

    Examples:
      | proppant_count |
      | 20             |

  @feature_email_setup
  @max_email_recipients
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When I add "<recipient>"
    And I click on the "Save" button
    Then I should see a confirmation message
    When I refresh the Email Setup screen
    Then all recipients should be displayed correctly
    And I should experience no performance lag
    And the UI should remain responsive
    And no errors should occur during the save and refresh actions

    Examples:
      | recipient            |
      | email recipient 1    |
      | email recipient 2    |
      | email recipient 3    |
      | email recipient 4    |
      | email recipient 5    |
      | email recipient 6    |
      | email recipient 7    |
      | email recipient 8    |
      | email recipient 9    |
      | email recipient 10   |

  @feature_user_login
  @max_delivery_records
  Scenario Outline: Validate that the Chemical Delivery Tracking screen can handle the maximum number of delivery records allowed without performance issues
    When I add the maximum number of delivery records allowed
    And I click on the "Save" button after each entry
    And I refresh the Chemical Delivery Tracking screen
    Then all delivery records should be displayed correctly
    And no performance lag should be experienced
    And the UI should remain responsive
    And no errors should occur during the save and refresh actions

    Examples:
      | maximum_records |
      | 100             |

  @feature_user_login
  @special_character_handling
  Scenario Outline: Validate Special Characters in Chemical Names
    Given the user is on the Chemical Setup screen
    When the user clicks on the "Add Chemical" button
    And the user enters a chemical name "<chemical_name>"
    And the user enters a valid design concentration "<design_concentration>"
    And the user enters a valid designed volume "<designed_volume>"
    And the user clicks on the "Save" button
    And the user refreshes the Chemical Setup screen
    Then the user should see the chemical entry displayed correctly

    Examples:
      | chemical_name | design_concentration | designed_volume |
      | Acid & Base   | 15%                  | 1000 liters     |

  @feature_user_login
  @validate_whitespace_handling
  Scenario Outline: Chemical Setup Handles Leading and Trailing Whitespace
    When I click on the "Add Chemical" button
    And I enter a chemical name "<chemical_name>"
    And I enter a design concentration "<design_concentration>"
    And I enter a designed volume "<designed_volume>"
    And I click on the "Save" button
    And I refresh the Chemical Setup screen
    Then the chemical entry is displayed correctly without whitespace

    Examples:
      | chemical_name | design_concentration | designed_volume |
      | Acid          | 15%                  | 1000 liters     |

  @feature_user_login
  @long_chemical_name
  Scenario Outline: Chemical Setup handles long chemical names
    When I click on the "Add Chemical" button
    And I enter "<long_chemical_name>"
    And I enter "<design_concentration>"
    And I enter "<designed_volume>"
    And I click on the "Save" button
    And I refresh the Chemical Setup screen
    Then the chemical entry should be displayed correctly

    Examples:
      | long_chemical_name                                | design_concentration | designed_volume |
      | Super Long Chemical Name That Exceeds Normal Length | 15%                  | 1000 liters     |

  @feature_user_login
  @validate_special_characters
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When the user clicks on the "Add Proppant" button
    And the user enters a proppant name "<proppant_name>"
    And the user enters a total design volume "<total_design_volume>"
    And the user clicks on the "Save" button
    And the user refreshes the Proppant Setup screen
    Then the proppant entry "<proppant_name>" should be displayed correctly
    And no errors should occur during the process

    Examples:
      | proppant_name    | total_design_volume |
      | Proppant & Mix   | 2000 lbs           |

  @feature_user_login
  @proppant_whitespace_test
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When the user clicks on the "Add Proppant" button
    And the user enters a proppant name with leading/trailing whitespace "<proppant_name>"
    And the user enters a valid total design volume "<total_design_volume>"
    And the user clicks on the "Save" button
    And the user refreshes the Proppant Setup screen
    Then the proppant entry is displayed correctly without leading/trailing whitespace
    And no errors occur during the process

    Examples:
      | proppant_name | total_design_volume |
      |  Proppant     | 2000 lbs           |

  @feature_user_login
  @long_proppant_name
  Scenario Outline: Chemical, Proppant, Email & Delivery Setup for Job Stages
    When the user clicks on the "Add Proppant" button
    And the user enters a long proppant name "<proppant_name>"
    And the user enters a valid total design volume "<total_design_volume>"
    And the user clicks on the "Save" button
    And the user refreshes the Proppant Setup screen
    Then the proppant entry should be displayed correctly
    And no errors occur during the process

    Examples:
      | proppant_name                                             | total_design_volume |
      | Super Long Proppant Name That Exceeds Normal Length      | 2000                |
