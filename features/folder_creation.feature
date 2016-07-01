Feature: Directory creation

  @saucelabs @foldercreationtests
  Scenario: As a tester, I want to create a new Directory
    Given I am in main view
    Then I tap on "Add" element
    Then I tap on "Directory" element
    Given I should see the "New directory" popup
    Then I type "OscarFolder" in New popup
    Then I tap on "OK" element
    Then I should see "OscarFolder" directory in screen

