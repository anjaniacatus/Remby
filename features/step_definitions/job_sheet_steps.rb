Given /^the following job_sheets:$/ do |job_sheets|
  JobSheet.create!(job_sheets.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) job_sheet$/ do |pos|
  visit job_sheets_url
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following job_sheets:$/ do |expected_job_sheets_table|
  expected_job_sheets_table.diff!(tableish('table tr', 'td,th'))
end
