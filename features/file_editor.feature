Feature: File editor

  @saucelabs @fileeditortests
  Scenario: As a tester, I want to verify if file editor is opened by tapping a file
    Given I am in main view
    Then I tap on "Add" element
    Then I tap on "File" element
    Given I should see the "New file" popup
    Then I type "Oscar_File1" in New popup
    Then I tap on "OK" element
    Then I should see "Oscar_File1" file in screen
    And I tap on "Oscar_File1" "file"
    Then I should see the Editor page

  @saucelabs @fileeditortests
  Scenario: As a tester, I want to verify that text can be inserted in editor field
    Given I am in main view
    Then I tap on "Add" element
    Then I tap on "File" element
    Given I should see the "New file" popup
    Then I type "Oscar_File2" in New popup
    Then I tap on "OK" element
    Then I should see "Oscar_File2" file in screen
    And I tap on "Oscar_File2" "file"
    Then I should see the Editor page
    Then I type "This is a sample text that is being written in editor field" in "Editor field"
    Then I should see "This is a sample text that is being written in editor field" in "Editor field"

  @saucelabs @fileeditortests
  Scenario: As a tester, I want to verify that Settings options are displayed
    Given I am in main view
    Then I tap on "Add" element
    Then I tap on "File" element
    Given I should see the "New file" popup
    Then I type "Oscar_File3" in New popup
    Then I tap on "OK" element
    Then I should see "Oscar_File3" file in screen
    And I tap on "Oscar_File3" "file"
    Then I should see the Editor page
    Then I tap on "Settings" element
    Then I should see Settings Menu

  @saucelabs @fileeditortests
  Scenario: As a tester, I want to verify that Accessory view switch can be turned off
    Given I am in main view
    Then I tap on "Add" element
    Then I tap on "File" element
    Given I should see the "New file" popup
    Then I type "Oscar_File4" in New popup
    Then I tap on "OK" element
    Then I should see "Oscar_File4" file in screen
    And I tap on "Oscar_File4" "file"
    Then I should see the Editor page
    Then I tap on "Settings" element
    And I tap on "Accessory View" element
    Then I verify that "Accessory View" is "Off"

  @saucelabs @fileeditortests
  Scenario: As a tester, I want to verify that Accessory view switch can be turned off
    Given I am in main view
    Then I tap on "Add" element
    Then I tap on "File" element
    Given I should see the "New file" popup
    Then I type "Oscar_File5" in New popup
    Then I tap on "OK" element
    Then I should see "Oscar_File5" file in screen
    And I tap on "Oscar_File5" "file"
    Then I should see the Editor page
    Then I tap on "Settings" element
    And I tap on "Accessory View" element
    Then I verify that "Accessory View" is "On"