Feature: Display Home Page
  A web site to tell people about myself
  And list links to presence on the web.

  Scenario: Home page
    Given I am viewing "/"
    Then I should see "About Me"
    And I should see "Projects"
    And I should see "Web Sites"