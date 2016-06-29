module AddOptionsItems

  def add_options_table
    find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIAActionSheet[1]/UIACollectionView[1]")
  end

  def file_option
    find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIAActionSheet[1]/UIACollectionView[1]/UIACollectionCell[1]")
  end

  def directory_option
    find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIAActionSheet[1]/UIACollectionView[1]/UIACollectionCell[2]")
  end

  def download_option
    find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIAActionSheet[1]/UIACollectionView[1]/UIACollectionCell[3]")
  end

  def cancel_option
    find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIAActionSheet[1]/UIAButton[1]")
  end

end