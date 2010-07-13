Feature: Manage compagnies
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Register new compagny
    Given I am on the new compagny page
    When I fill in "Name" with "name 1"
    And I fill in "Headquarters" with "headquarters 1"
    And I fill in "Registration number" with "registration_number 1"
    And I fill in "Legal form" with "legal_form 1"
    And I fill in "Activity" with "activity 1"
    And I fill in "Sector" with "sector 1"
    And I uncheck "Validated"
    And I fill in "User" with "user_id 1"
    And I press "Create"
    Then I should see "name 1"
    And I should see "headquarters 1"
    And I should see "registration_number 1"
    And I should see "legal_form 1"
    And I should see "activity 1"
    And I should see "sector 1"
    And I should see "false"
    And I should see "user_id 1"

  Scenario: Delete compagny
    Given the following compagnies:
      |name|headquarters|registration_number|legal_form|activity|sector|validated|user_id|
      |name 1|headquarters 1|registration_number 1|legal_form 1|activity 1|sector 1|false|user_id 1|
      |name 2|headquarters 2|registration_number 2|legal_form 2|activity 2|sector 2|true|user_id 2|
      |name 3|headquarters 3|registration_number 3|legal_form 3|activity 3|sector 3|false|user_id 3|
      |name 4|headquarters 4|registration_number 4|legal_form 4|activity 4|sector 4|true|user_id 4|
    When I delete the 3rd compagny
    Then I should see the following compagnies:
      |Name|Headquarters|Registration number|Legal form|Activity|Sector|Validated|User|
      |name 1|headquarters 1|registration_number 1|legal_form 1|activity 1|sector 1|false|user_id 1|
      |name 2|headquarters 2|registration_number 2|legal_form 2|activity 2|sector 2|true|user_id 2|
      |name 4|headquarters 4|registration_number 4|legal_form 4|activity 4|sector 4|true|user_id 4|
