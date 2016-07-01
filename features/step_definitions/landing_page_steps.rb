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
end

Then(/^I should see "([^"]*)" message$/) do |message|
  puts message
  puts find_element(:id, message).name
  actual_text = find_element(:id, message).name
  assert_equal(message, actual_text, "Text or element is missing")
end

And(/^I tap on "([^"]*)" "([^"]*)"$/) do |element, type|
  case type
    when "file"
       elem = lp_main_table.find_element(:id, element)
      touch_element(elem)
    when "directory"
      elem = lp_main_table.find_element(:id, element)
      touch_element(elem)
    else
      puts "Type of element is not available within the app"
  end
end