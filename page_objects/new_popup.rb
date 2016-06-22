module NewPopup

  def new_popup_text_field
  find_elements(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIAAlert[1]/UIAScrollView[1]/UIACollectionView[1]/UIACollectionCell[1]/UIATextField[1]").first
  end

end