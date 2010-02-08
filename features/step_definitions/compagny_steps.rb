Given /^the following compagnies:$/ do |compagnies|
  Compagny.create!(compagnies.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) compagny$/ do |pos|
  visit compagnies_url
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following compagnies:$/ do |expected_compagnies_table|
  expected_compagnies_table.diff!(tableish('table tr', 'td,th'))
end
