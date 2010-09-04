Feature: Manage civil_statuses
  In order to make a CV
  wants to create and edit civil_status
 
  Background:
   Given I am a member
   And I am logged in as "fenom" with password "fenom"
 
   	@new_civil_status
	  Scenario: Create a new civil status for a new user logged in
		  Given I follow "profile"
		  When I fill in "Votre Nom ici" with "family_name 1"
      And I fill in "Prenom" with "name 1"
      And I select "23 july 1987" as the date
      And I fill in "Lieu de naissance" with "hometown 1"
      And I fill in "Ville" with "current_city 1"
      And I select "female" from "gender"
      And I select "single" from "status"
      And I press "Create"
      Then I should see "family_name 1"
      And I should see "name 1"
      And I should see "23 ans"
      And I should see "hometown 1"
      And I should see "current_city 1"
      And I should see "female"
      And I should see "single"
  
  @test
  Scenario: visit new civil_status_path when I have already create a civil_status 
    Given I follow "logout"
    And an other user logged in and he has already a profile 
    When I go to the new civil_status page
    Then I should be on  the civil_statuses page

		

