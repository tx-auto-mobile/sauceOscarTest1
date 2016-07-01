Then(/^I should see the "([^"]*)" popup$/) do |expected_title|
  is_present = false
  actual_title = popup_title.name
  if expected_title == "Download"
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