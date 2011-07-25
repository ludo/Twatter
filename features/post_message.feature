Feature: Post message
  As a Visitor
  I want to post a message
  So that I can share my thoughts

  Scenario: Post a valid message
    Given I am on the new message page
    When I enter a valid message
    And I post the message
    Then I should see my newly created message
