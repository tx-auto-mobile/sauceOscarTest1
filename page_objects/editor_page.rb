module EditorPage

  def ed_editor_field
    find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATextView[1]")
  end

  def ed_expand_button
    find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIAToolbar[1]/UIAButton[1]")
  end

  def ed_refresh_button
    find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIAToolbar[1]/UIAButton[2]")
  end

  def ed_share_button
    find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIAToolbar[1]/UIAButton[3]")
  end

  def ed_settings_button
    find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIAToolbar[1]/UIAButton[4]")
  end

  def ed_file_name
    find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIANavigationBar[1]/UIAStaticText[1]")
  end

  def ed_editor_button
    find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIANavigationBar[1]/UIASegmentedControl[1]/UIAButton[1]")
  end

  def ed_browser_button
    find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIANavigationBar[1]/UIASegmentedControl[1]/UIAButton[2]")
  end

  def ed_dual_button
    find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIANavigationBar[1]/UIASegmentedControl[1]/UIAButton[3]")
  end

end