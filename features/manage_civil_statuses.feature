Feature: Manage civil_statuses
  In order to [goal]
  [stakeholder]
  wants [behaviour]

   	@new_civil_status
	  Scenario: Create a new civil status for a new user logged in
		  Given I am a user
		  When I am logged in as "fenomamy" with password "fenomamy"
		  And I am on the new civil_status page
		  When I go to the new civil_status page  
		  Then show me the page
		
		

