Then(/^I should see the Editor page$/) do
  if ed_editor_button && ed_browser_button && ed_dual_button && ed_editor_field
    assert true
  else
    assert false
  end
end

Then(/^I type "([^"]*)" in "([^"]*)"$/) do |text, locator|
  case locator
    when "Editor field"
      ed_editor_field.send_keys text
    else
      puts "Locator has not been found"
  end
end

Then(/^I should see "([^"]*)" in "([^"]*)"$/) do |expected_text, locator|
  case locator
    when "Editor field"
      actual_text = ed_editor_field.text
      puts actual_text
      assert_equal(expected_text, actual_text)
  end
end

Then(/^I should see Settings Menu$/) do
  if st_done_button && st_accessory_view_switch && st_font_option && st_acknowledgements_option != nil
    assert true
  else
    assert false
  end
end

Then(/^I verify that "([^"]*)" is "([^"]*)"$/) do |element, value|
  if value == "Off"
    expected_value = 0
  end
  if value == "On"
    expected_value = 1
  end

  case element
    when "Accessory View"
      actual_value = st_accessory_view_switch.value
      puts actual_value
      assert_equal(actual_value, expected_value)
  end
end