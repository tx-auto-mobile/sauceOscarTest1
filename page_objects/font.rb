module Font

  def ft_font_name
    find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATableView[1]/UIATableCell[1]")
  end

  def ft_font_size
    find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATableView[1]/UIATableCell[1]")
  end

  def ft_text_color
    find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATableView[1]/UIATableCell[3]")
  end

  def ft_background_color
    find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATableView[1]/UIATableCell[4]")
  end

  def ft_preview
    find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATableView[1]/UIATableCell[5]")
  end

  def ft_reset
    find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATableView[1]/UIATableCell[6]")
  end

  def ft_general_font_table
    find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATableView[1]")
  end

end