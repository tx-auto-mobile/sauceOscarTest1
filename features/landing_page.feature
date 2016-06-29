Feature: Edhita application sample tests

  @saucelabs
  Scenario: As a tester, I want to verify that the landing page is displayed when app is launched.
    Given I am in main view
    Then I should see landing page elements

  @saucelabs
  Scenario: As a tester, I want to create a new File
    Given I am in main view
    Then I tap on "Add" element
    Then I tap on "File" element
    Given I should see the "New file" popup
    Then I type "Oscar_File" in New popup
    Then I tap on "OK" element
    Then I should see "Oscar_File" file in screen

  @saucelabs
  Scenario: As a tester, I want to create a new Directory
    Given I am in main view
    Then I tap on "Add" element
    Then I tap on "Directory" element
    Given I should see the "New directory" popup
    Then I type "OscarFolder" in New popup
    Then I tap on "OK" element
    Then I should see "OscarFolder" directory in screen

  @saucelabs
  Scenario: As a tester, I want to verify if Download popup is displayed for download option
    Given I am in main view
    Then I tap on "Add" element
    Then I tap on "Download" element
    Then I should see the "Download" popup

  @saucelabs
  Scenario: As a tester, I want to verify if file editor is opened by tapping a file
    Given I am in main view
    And I tap on "Oscar_File" "file"
    Then I should see the Editor page

  @saucelabs
  Scenario: As a tester, I want to verify that text can be inserted in editor field
    Given I am in main view
#         Then I tap on "Add" element
#         Then I tap on "File" element
#         Given I should see the "New file" popup
#         Then I type "Oscar_File" in New popup
#         Then I tap on "OK" element
#         Then I should see "Oscar_File" file in screen
    And I tap on "Oscar_File" "file"
    Then I should see the Editor page
    Then I type "This is a sample text that is being written in editor field" in "Editor field"
    Then I should see "This is a sample text that is being written in editor field" in "Editor field"

  @saucelabs
  Scenario: As a tester, I want to verify that text can be inserted in editor field
    Given I am in main view
#           Then I tap on "Add" element
#           Then I tap on "File" element
#           Given I should see the "New file" popup
#           Then I type "Oscar_File" in New popup
#           Then I tap on "OK" element
#           Then I should see "Oscar_File" file in screen
    And I tap on "Oscar_File" "file"
    Then I should see the Editor page
    Then I tap on "Settings" element
    Then I should see Settings Menu

  @saucelabs
  Scenario: As a tester, I want to verify that Accessory view switch can be turned off
    Given I am in main view
#        Then I tap on "Add" element
#        Then I tap on "File" element
#        Given I should see the "New file" popup
#        Then I type "Oscar_File" in New popup
#        Then I tap on "OK" element
#        Then I should see "Oscar_File" file in screen
    And I tap on "Oscar_File" "file"
    Then I should see the Editor page
    Then I tap on "Settings" element
    And I tap on "Accessory View" element
    Then I verify that "Accessory View" is "Off"

  @saucelabs
  Scenario: As a tester, I want to verify that Accessory view switch can be turned off
    Given I am in main view
#          Then I tap on "Add" element
#          Then I tap on "File" element
#          Given I should see the "New file" popup
#          Then I type "Oscar_File" in New popup
#          Then I tap on "OK" element
#          Then I should see "Oscar_File" file in screen
    And I tap on "Oscar_File" "file"
    Then I should see the Editor page
    Then I tap on "Settings" element
    And I tap on "Accessory View" element
    Then I verify that "Accessory View" is "On"