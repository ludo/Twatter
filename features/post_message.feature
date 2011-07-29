@javascript
Feature: Post message
  As a Visitor
  I want to post a message
  So that I can share my thoughts

  Scenario: Post a valid message
    Given I view the new message form
    When I enter a valid message
    And I post the message
    Then I should see my newly created message

  @wip
  Scenario: Post an invalid message
    Given I view the new message form
    When I enter an invalid message
    And I post the message
    Then I should stay on the new message form
    And I should see an error
