Given /^the following civil_statuses:$/ do |civil_statuses|
  CivilStatus.create!(civil_statuses.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) civil_status$/ do |pos|
  visit civil_statuses_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following civil_statuses:$/ do |expected_civil_statuses_table|
  expected_civil_statuses_table.diff!(tableish('table tr', 'td,th'))
end

Given /^I am a member$/ do
  user = User.create!(:username => "fenom", :email => "anja1catus@mail.fr",:password =>"fenom",:password_confirmation => "fenom",:roles => "member") 
  user.save
end

Given /^I am logged in as "([^"]*)" with password "([^"]*)"$/ do |arg1, arg2|
  visit login_url
  fill_in "Username", :with => arg1
  fill_in "Password", :with => arg2
  click_button "Log in"

end

Then /^I should be able to click the link "([^"]*)"$/ do |arg1|
   click_link(arg1) 
end


