Feature: Manage presentations
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Register new presentation
    Given I am on the new presentation page
    When I fill in "Title" with "title 1"
    And I fill in "Description" with "descriptin 1"
    And I press "Create"
    Then I should see "title 1"
    And I should see "descriptin 1"

  Scenario: Delete presentation
    Given the following presentations:
      |title|description|
      |title 1|description 1|
      |title 2|description 2|
      |title 3|description 3|
      |title 4|description 4|
    When I delete the 3rd presentation
    Then I should see the following presentations:
      |Title|Description|
      |title 1|description 1|
      |title 2|description 2|
      |title 4|description 4|
  
  Scenario:  See lists of presentation
    Given the following presentations:
      |title|description|
      |title 1|description 1|
      |title 2|description 2|
      |title 3|description 3|
      |title 4|description 4|
   When I go to path "/presentations"
   Then I should see presentations table 
      |title|description|
      |title 1|description 1|
      |title 2|description 2|
      |title 3|description 3|
      |title 4|description 4|



  @validation
  Scenario: Validation data
    Given I am on the new presentation page 
    When I fill in "Title" with ""
    And I fill in "Description" with "descriptin 1"
    And I press "Create"
    Then page should contain "Title can't be blank!"
    And show me the page 
