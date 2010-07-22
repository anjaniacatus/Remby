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

