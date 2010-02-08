Feature: Manage compagnies
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Register new compagny
    Given I am on the new compagny page
    When I fill in "Name" with "name 1"
    And I fill in "Headquaters" with "headquaters 1"
    And I fill in "Registration number" with "1"
    And I fill in "Legal form" with "legal_form 1"
    And I fill in "Activity" with "activity 1"
    And I fill in "Sector" with "sector 1"
    And I press "Create"
    Then I should see "name 1"
    And I should see "headquaters 1"
    And I should see "1"
    And I should see "legal_form 1"
    And I should see "activity 1"
    And I should see "sector 1" 
 
  Scenario: Register new invalid compagny
    Given I am on the new compagny page
    When I fill in "Name" with ""
    And I fill in "Headquaters" with ""
    And I fill in "Registration number" with ""
    And I fill in "Legal form" with ""
    And I fill in "Activity" with ""
    And I fill in "Sector" with ""
    And I press "Create"
    Then I should see "Name can't be blank"
    And I should see "Headquaters can't be blank"
    And I should see "Registration number can't be blank"
    And I should see ""
    And I should see ""
    And I should see ""

  
  Scenario: Delete compagny
    Given the following compagnies:
      |name|headquaters|registration_number|legal_form|activity|sector|
      |name 1|headquaters 1|1|legal_form 1|activity 1|sector 1|
      |name 2|headquaters 2|2|legal_form 2|activity 2|sector 2|
      |name 3|headquaters 3| 3|legal_form 3|activity 3|sector 3|
      |name 4|headquaters 4|4|legal_form 4|activity 4|sector 4|
    When I delete the 3rd compagny
    Then I should see the following compagnies:
      |Name|Headquaters|Registration number|Legal form|Activity|Sector|
      |name 1|headquaters 1| 1|legal_form 1|activity 1|sector 1|
      |name 2|headquaters 2| 2|legal_form 2|activity 2|sector 2|
      |name 4|headquaters 4| 4|legal_form 4|activity 4|sector 4|
