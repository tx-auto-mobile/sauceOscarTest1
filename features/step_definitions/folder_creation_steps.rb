Then(/^I should see "([^"]*)" directory in screen$/) do |text|
  element_exists = search_in_children(lp_main_table, text)
  if element_exists != nil
    assert true
  else
    assert false
  end
end