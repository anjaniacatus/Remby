Given /^the following cvs:$/ do |cvs|
  Cv.create!(cvs.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) cv$/ do |pos|
  visit cvs_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following cvs:$/ do |expected_cvs_table|
  expected_cvs_table.diff!(tableish('table tr', 'td,th'))
end
Given /^a cv$/ do 
  Cv.create!(:title => "test", :summary => "sum test", :published => false)
end

When /^cv is not published$/ do
  Cv.create!(:title => "test", :summary => "sum test", :published => false)
end


