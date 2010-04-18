Feature: Manage job_sheets
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Register new job_sheet
    Given I am on the new job_sheet page
    When I fill in "Position" with "position 1"
    And I fill in "Fields" with "fields 1"
    And I fill in "Mission" with "mission 1"
    And I fill in "Competence" with "competence 1"
    And I fill in "Experience" with "experience 1"
    And I fill in "Task" with "task 1"
    And I fill in "Degree" with "degree 1"
    And I press "Create"
    Then I should see "position 1"
    And I should see "fields 1"
    And I should see "mission 1"
    And I should see "competence 1"
    And I should see "experience 1"
    And I should see "task 1"
    And I should see "degree 1"

     
  Scenario: Register new invalid job_sheet
    Given I am on the new job_sheet page
    When I fill in "Position" with ""
    And I fill in "Fields" with ""
    And I fill in "Mission" with ""
    And I fill in "Competence" with ""
    And I fill in "Experience" with ""
    And I fill in "Task" with ""
    And I fill in "Degree" with ""
    And I press "Create"
    Then I should see "Position can't be blank"
    And I should see "Fields can't be blank"
    And I should see "Mission can't be blank"
    And I should see "Competence can't be blank"
    And I should see ""
    And I should see ""
    And I should see ""


  Scenario: Delete job_sheet
    Given the following job_sheets:
      |position|fields|mission|competence|experience|task|degree|
      |position 1|fields 1|mission 1|competence 1|experience 1|task 1|degree 1|
      |position 2|fields 2|mission 2|competence 2|experience 2|task 2|degree 2|
      |position 3|fields 3|mission 3|competence 3|experience 3|task 3|degree 3|
      |position 4|fields 4|mission 4|competence 4|experience 4|task 4|degree 4|
    When I delete the 3rd job_sheet
    Then I should see the following job_sheets:
      |Position|Fields|Mission|Competence|Experience|Task|Degree|
      |position 1|fields 1|mission 1|competence 1|experience 1|task 1|degree 1|
      |position 2|fields 2|mission 2|competence 2|experience 2|task 2|degree 2|
      |position 4|fields 4|mission 4|competence 4|experience 4|task 4|degree 4|
