module NavbarHelper
  def navbar_items
    items = [
      { name: "Home", url: root_path },
      { name: "About", url: about_index_path }
    ]

    add_active_key(items)
  end

  private

  def add_active_key(items)
    items.map do |item|
      item.merge!({ active?: current_page?(item[:url]) })
    end
  end
end
