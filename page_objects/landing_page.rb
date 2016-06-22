module LandingPage

  def documents_title
    find_element(:id, "Documents")
    puts find_element(:id, "Documents").name
  end

  def example_folder
    find_element(:id, "example")
    puts find_element(:id, "example").name
  end

  def add_button
    find_element(:id, "Add")
    puts find_element(:id, "Add").name
  end

  def main_table
    find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATableView[1]")
  end

end

