# Given

Given /^I view the new message form$/ do
  visit("/messages/new")
end

# When

When /^I enter a valid message$/ do
  fill_in("Body", :with => "Something I want to share")
end

# Then
