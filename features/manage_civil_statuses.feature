Feature: Manage civil_statuses
  In order to [goal]
  [stakeholder]
  wants [behaviour]

  @inscription 
    Scenario: I want to Register and login as a new member
		  Given I am a member
		  When  I am logged in as "fenom" with password "fenom"
		  Then  I should be on the civil_statuses page
		  And   I should be able to click the link "profile"
	
	@deconnexion
	  Scenario: I want to be logged out
		  Given   I am a member 
		  And     I am logged in as "fenom" with password "fenom"
		  And     show me the page
		  When    I follow "logout"
		  Then    I should be on the home page
		  And     show me the page
  
		@acces_edition_compte
	  Scenario: I want to see the page for editing my account
       Given I am a member
			 And   I am logged in as "fenom" with password "fenom"
			 When  I follow "editer mon compte"
			 Then  I should be on the edit user page
			 And   I should not see "Roles"
			 And   show me the page
	
		@edition_compte
	  Scenario: I want to change my username and password
      Given I am a member
			And   I am logged in as "fenom" with password "fenom"
			And   I follow "editer mon compte"
			When  I fill in "Username" with "fenomchanged" 
			And   I fill in "new password" with "newpassword"
			And   I fill in "new password confirmation" with "newpassword"
		  And   I press "update" 
		  Then  I should see "fenomchanged"  
	
  	@new_civil_status
	  Scenario: Create a new civil status for a new user logged in
		  Given I am a user
		  When I am logged in as "fenomamy" with password "fenomamy"
		  And I am on the new civil_status page
		  When I go to the new civil_status page  
		  Then show me the page
		
		

