Given(/^I am in main view$/) do
  if(documents_title && example_folder && add_button != nil)
    assert true
  else
    assert false
  end
end

Then(/^I should see landing page elements$/) do
  if(documents_title && example_folder && add_button != nil)
    assert true
  else
    assert false
  end
end

Then(/^I tap on "([^"]*)" element$/) do |elem|
  element = search_for_element(elem)
  touch_element(element)
end

Then(/^I should see "([^"]*)" message$/) do |message|
  sleep 5
  puts message
  puts find_element(:id, message).name
  actual_text = find_element(:id, message).name
  assert_equal(message, actual_text, "Text or element is missing")
end

Then(/^I type "([^"]*)" in New popup$/) do |text|
  touch_element(new_popup_text_field)
  new_popup_text_field.send_keys text
end

Then(/^I should see "([^"]*)" file in screen$/) do |text|
  element_exists = search_in_children(main_table, text)
  if element_exists != nil
    assert true
  else
    assert false
  end
end