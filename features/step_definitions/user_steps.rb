Given /^the following users:$/ do |users|
  User.create!(users.hashes)
end

Then /^the value of my "([^"]*)" should be "([^"]*)"$/ do |arg1, arg2|
  arg1 = arg2
end

Given /^I am a member$/ do
  user = User.create!(:username => "fenom", :email => "anja1catus@mail.fr",:password =>"fenom",:password_confirmation => "fenom",:roles => "member") 
  user.save
end

Given /^I am logged in as "([^"]*)" with password "([^"]*)"$/ do |arg1, arg2|
  visit login_url
  fill_in "Username", :with => arg1
  fill_in "Password", :with => arg2
  click_button "Login"
  response.should contain("Bienvenue: " + arg1)
    CivilStatus.create!(:family_name => "Rakoto", :name => "Bema", :birthday => "12 janvier 1987", :hometown => "Tana", :current_city =>"Tana", :status => "single", :gender => "female" )
end

Then /^I should be able to click the link "([^"]*)"$/ do |arg1|
   click_link(arg1) 
end


When /^I delete the (\d+)(?:st|nd|rd|th) user$/ do |pos|
  visit users_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following users:$/ do |expected_users_table|
  expected_users_table.diff!(tableish('table tr', 'td,th'))
end
