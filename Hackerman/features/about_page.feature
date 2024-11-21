Feature: About Page

  As a user
  I want to view the About page
  So that I can learn more about the website

  Background:
    Given I am on the Home page

  Scenario: Navigate to About page from navigation bar
    When I click on the "About" link in the navigation bar
    Then I should be on the About page
    And I should see the heading "About Us"
    And I should see the description "Learn more about our buggy website and its intentional issues."

  Scenario: Check footer content on About page
    Given I am on the About page
    Then I should see the footer text "© 2024 Hackathon Challenge. All rights reserved."
