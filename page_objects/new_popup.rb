module NewPopup

  def popup_text_field
    find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIAAlert[1]/UIAScrollView[1]/UIACollectionView[1]/UIACollectionCell[1]/UIATextField[1]")
  end

  def popup_title
    find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIAAlert[1]/UIAScrollView[1]/UIAStaticText[1]")
  end

  def popup_cancel_button
    find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIAAlert[1]/UIACollectionView[1]/UIACollectionCell[1]")
  end

  def popup_ok_button
    find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIAAlert[1]/UIACollectionView[1]/UIACollectionCell[2]")
  end

end