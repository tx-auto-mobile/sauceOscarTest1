Given(/^I am in main view$/) do
  if(lp_documents_title && lp_example_folder && lp_add_button != nil)
    assert true
  else
    assert false
  end
end

Then(/^I should see landing page elements$/) do
  if(lp_documents_title && lp_example_folder && lp_add_button != nil)
    assert true
  else
    assert false
  end
end

Then(/^I tap on "([^"]*)" element$/) do |elem|

  case elem
    when "Add"
      touch_element(lp_add_button)
    when "File"
      touch_element(file_option)
    when "OK"
      touch_element(popup_ok_button)
    when "Directory"
      touch_element(directory_option)
    when "Download"
      touch_element(download_option)
    when "Settings"
      touch_element(ed_settings_button)
    when "Accessory View"
      touch_element(st_accessory_view_switch)
    else
      puts "Element has not been found"
  end
  #element = search_for_element(elem)
  #touch_element(element)
end

Then(/^I should see "([^"]*)" message$/) do |message|
  sleep 5
  puts message
  puts find_element(:id, message).name
  actual_text = find_element(:id, message).name
  assert_equal(message, actual_text, "Text or element is missing")
end

Then(/^I type "([^"]*)" in New popup$/) do |text|

  #time = Time.now
  #@current_date = time.day.to_s + time.hour.to_s + time.min.to_s + time.sec.to_s
  #puts text+@current_date
  touch_element(popup_text_field)
  popup_text_field.send_keys text#+@current_date
end

Then(/^I should see "([^"]*)" file in screen$/) do |text|
  element_exists = search_in_children(lp_main_table, text)#+@current_date)
  if element_exists != nil
    assert true
  else
    assert false
  end
end


Then(/^I should see "([^"]*)" directory in screen$/) do |text|
  element_exists = search_in_children(lp_main_table, text)#+@current_date)
  if element_exists != nil
    assert true
  else
    assert false
  end
end

Then(/^I should see the "([^"]*)" popup$/) do |expected_title|
  is_present = false
  actual_title = popup_title.name
  if(expected_title == "Download")
    if actual_title == expected_title && popup_text_field.text == "http://"
      is_present = true
    end
  else
    if actual_title == expected_title
      is_present = true
    end
  end

  assert is_present

end

And(/^I tap on "([^"]*)" "([^"]*)"$/) do |element, type|
  case type
    when "file"
       elem = lp_main_table.find_element(:id, element)#+@current_date)
      touch_element(elem)
    when "directory"
      elem = lp_main_table.find_element(:id, element)
      touch_element(elem)
    else
      puts "Type of element is not available within the app"
  end
end

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