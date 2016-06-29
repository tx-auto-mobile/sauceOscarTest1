module LandingPage

  def lp_documents_title
    find_element(:id, "Documents")
    puts find_element(:id, "Documents").name
  end

  def lp_example_folder
    find_element(:id, "example")
    puts find_element(:id, "example").name
  end

  def lp_add_button
    puts find_element(:id, "Add").name
    find_element(:id, "Add")
  end

  def lp_main_table
    find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATableView[1]")
  end

  #TODO: Check if this works globally
  def lp_back_button
    find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIANavigationBar[1]/UIAButton[1]")
  end

  def lp_bottom_bar
    find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIAToolbar[1]/UIAStaticText[1]")
  end


end

