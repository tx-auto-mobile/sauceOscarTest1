module Generic

  def search_for_element(element)
    return find_elements(:id, element).first
  end

  def touch_element(element)
    element.click
  end

  def search_in_children(element, criteria)
    element.find_element(:id, criteria)
  end

end

