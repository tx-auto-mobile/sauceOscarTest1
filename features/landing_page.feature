Feature: Edhita application sample tests


  Scenario: As a tester, I want to verify that the landing page is displayed when app is launched.
    Given I am in main view
    Then I should see landing page elements

  @test
  Scenario: As a tester, I want to create a new File
    Given I am in main view
    Then I tap on "Add" element
    Then I tap on "File" element
    Then I type "Oscar_File" in New popup
    Then I tap on "OK" element
    Then I should see "Oscar_File" file in screen