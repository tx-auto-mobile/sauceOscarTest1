Feature: Download from URL

  @saucelabs @downloadtests
  Scenario: As a tester, I want to verify if Download popup is displayed for download option
    Given I am in main view
    Then I tap on "Add" element
    Then I tap on "Download" element
    Then I should see the "Download" popup