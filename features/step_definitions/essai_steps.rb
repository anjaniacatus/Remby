Given /^the following essais:$/ do |essais|
  Essai.create!(essais.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) essai$/ do |pos|
  visit essais_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following essais:$/ do |expected_essais_table|
  expected_essais_table.diff!(tableish('table tr', 'td,th'))
end
