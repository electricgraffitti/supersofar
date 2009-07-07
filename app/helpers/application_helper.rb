# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def page_title(page_title)
    content_for(:title) { page_title }
  end
  
end
