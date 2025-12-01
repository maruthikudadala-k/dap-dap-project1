
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
