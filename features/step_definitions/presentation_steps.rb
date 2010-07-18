Given /^the following presentations:$/ do |presentations|
  Presentation.create!(presentations.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) presentation$/ do |pos|
  visit presentations_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following presentations:$/ do |expected_presentations_table|
  expected_presentations_table.diff!(tableish('table tr', 'td,th'))
end
