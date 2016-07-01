Then(/^I type "([^"]*)" in New popup$/) do |text|
  touch_element(popup_text_field)
  popup_text_field.send_keys text
end

Then(/^I should see "([^"]*)" file in screen$/) do |text|
  element_exists = search_in_children(lp_main_table, text)
  if element_exists != nil
    assert true
  else
    assert false
  end
end