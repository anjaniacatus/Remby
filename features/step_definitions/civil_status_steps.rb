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

Given /^an other user logged in and he has already a profile$/ do
  user = User.create!(:username => "other", :email => "other@mail.fr",:password =>"other",:password_confirmation => "other",:roles => "member") 
  visit login_url
  fill_in "Username", :with => "other"
  fill_in "Password", :with => "other"
  click_button "Log in"
  CivilStatus.create!(:family_name => "Rakoto", :name => "Bema", :birthday => "12 janvier 1987", :hometown => "Tana", :current_city =>"Tana", :status => "single", :gender => "female", :user_id => user.id )
end

