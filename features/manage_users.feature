Feature: Manage users
  In order to manage the account of a user
  A user can create, edit and deactivate his account on the application 
  A user can also to connect or to disconnect on his account 
 
  Background:
    Given I am a member
    And I am logged in as "fenom" with password "fenom"
   
   @inscription 
    Scenario: I want to Register and login as a new member
		  When  I am logged in as "fenom" with password "fenom"
      Then  I should be on the new civil_status page
		  And   I should be able to click the link "profile"
	
	@deconnexion
	  Scenario: I want to be logged out
		  When    I follow "déconnexion"
		  Then    I should be on the home page
  
		@acces_edition_compte
	  Scenario: I want to see the page for editing my account
			 When  I follow "modifier compte"
			 Then  I should be on the edit user page
			 And   I should not see "Roles"
	
		@edition_compte
	  Scenario: I want to change my username and password
			When   I follow "modifier compte"
			And  I fill in "Username" with "fenomchanged" 
			And   I fill in "new password" with "newpassword"
			And   I fill in "new password confirmation" with "newpassword"
		  And   I press "update" 
		  Then  I should see "fenomchanged"  
      And   the value of my "password" should be "password"

  @create_a_new_user
  Scenario: Register new user
    Given I follow "déconnexion"
    And I follow "Inscription"
    When I fill in "Username" with "username 1"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "password"
    And I fill in "Email" with "anja1catus@yahoo.fr"
    And I select "member" from "roles"
    And I press "Submit"
    Then I should see "username 1"
    And the value of my "password" should be "password"
    And I should see "member"
  
  Scenario: Deactivate an account
  Scenario: Activate an account via mail   
