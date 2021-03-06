Feature: childcare test

Scenario:First Visit
Given I am logged in as "user" with password "user"
And I click "TODAY'S PATIENTS"
And I should see "CONSULTS TODAY"
When I fill in "last" with "Mendoza"
And I fill in "first" with "Allan"
And I press "Search"
And I should see "SEARCH RESULTS"
#And I choose "consult_patient_id" 
And I press "Select Patient"
And I should see "VISIT DETAILS"
And I check by value "CHILD"
And I press "Save Details"
And I should see "Child Care"
And I click "Child Care"
And I should see "NO REGISTRY ID FOR THIS PATIENT"
And I click "FIRST VISIT"
And I should see "CHILD CARE DATA FORM"
#Then the "MOTHER'S NAME" field should contain "Jen"
And I fill in "ccdev_date_reg" with "03/02/2010"
And I fill in "mother_px_id" with "0000001"
And I press "Verify"
And I should see "1" 
When I select "Housewife" from "mother_occup"
And I select "College" from "mother_educ"
And I fill in "father_name" with "Mario"
And I select "Barber" from "father_occup"
And I select "College" from "father_educ"
And I fill in "birth_weight" with "15"
And I select "Home" from "delivery_location"
When I press "Save Data"
Then I should see "PATIENT DATA"


Scenario: Services
Given I am logged in as "user" with password "user"
And I click "TODAY'S PATIENTS"
And I should see "CONSULTS TODAY"
When I fill in "last" with "Mendoza"
And I fill in "first" with "Allan"
And I press "Search"
And I should see "SEARCH RESULTS"
#And I choose "consult_patient_id" 
And I press "Select Patient"
And I should see "VISIT DETAILS"
And I check by value "CHILD"
And I press "Save Details"
And I should see "Child Care"
And I click "Child Care"
And I should see "NO REGISTRY ID FOR THIS PATIENT"
And I click "FIRST VISIT"
And I should see "CHILD CARE DATA FORM"
#Then the "MOTHER'S NAME" field should contain "Jen"
And I fill in "ccdev_date_reg" with "03/02/2010"
And I fill in "mother_px_id" with "0000001"
And I press "Verify"
And I should see "1" 
When I select "Housewife" from "mother_occup"
And I select "College" from "mother_educ"
And I fill in "father_name" with "Mario"
And I select "Barber" from "father_occup"
And I select "College" from "father_educ"
And I fill in "birth_weight" with "15"
And I select "Home" from "delivery_location"
When I press "Save Data"
Then I should see "FIRST VISIT"
And I click "SIBLINGS"
And I should see "NO FAMILY ID FOR THIS PATIENT"
And I click "SERVICES"
And I should see "SERVICES"
#And I check by value "DENT"
#And I check by value "vaccine[]"
#When I press "Update Record"
#And I should see "services[]"
#And I should see "vaccine[]"
And I click "BREASTFEEDING"
And I should see "FTITLE_CCDEV_BREASTFEED"
And I check "bfed_month[]"
And I fill in "date_bfed_six" with "03/02/2010"
And I press "Save Breastfeeding Status"
And I should see "bfed_month"
And I click "CONSULT"
And I should see "form_consult"
And I press "End Consult"
And I should see "confirm_end"
When I press "Yes"
Then I should see "CONSULTS TODAY"




