# Given

Given /^I view the new message form$/ do
  visit("/messages/new")
end

# When

When /^I enter a valid message$/ do
  fill_in("Body", :with => "Something I want to share")
end

When /^I post the message$/ do
  click_button("Share")
end

# Then
