Feature: Manage cvs
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
	Background:
   Given I am a member
	 And I am logged in as "fenom" with password "fenom"
  Scenario: Register new cv
		Given I am on the new cv page
    When I fill in "Titre" with "title 1"
    And I fill in "Description" with "summary 1"
    And I uncheck "Published"
    And I press "Create"
    Then I should see "title 1"
    And I should see "summary 1"
    And I should see "false"

  Scenario: Delete cv
    Given the following cvs:
      |title|summary|published|
      |title 1|summary 1|false|
      |title 2|summary 2|true|
      |title 3|summary 3|false|
      |title 4|summary 4|true|
    When I delete the 3rd cv
    Then I should see the following cvs:
      |Title|Summary|Published|
      |title 1|summary 1|false|
      |title 2|summary 2|true|
      |title 4|summary 4|true|
