Feature: File creation

  @saucelabs @filecreationtests
  Scenario: As a tester, I want to create a new File
    Given I am in main view
    Then I tap on "Add" element
    Then I tap on "File" element
    Given I should see the "New file" popup
    Then I type "Oscar_File" in New popup
    Then I tap on "OK" element
    Then I should see "Oscar_File" file in screen