Feature: Manage essais
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Register new essai
    Given I am on the new essai page
    When I fill in "Essai name" with "essai_name 1"
    And I fill in "Desc" with "desc 1"
    And I press "Create"
    Then I should see "essai_name 1"
    And I should see "desc 1"

  Scenario: Delete essai
    Given the following essais:
      |essai_name|desc|
      |essai_name 1|desc 1|
      |essai_name 2|desc 2|
      |essai_name 3|desc 3|
      |essai_name 4|desc 4|
    When I delete the 3rd essai
    Then I should see the following essais:
      |Essai name|Desc|
      |essai_name 1|desc 1|
      |essai_name 2|desc 2|
      |essai_name 4|desc 4|
