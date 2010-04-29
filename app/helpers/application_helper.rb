# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def title(page_title)
    content_for(:title) {page_title}
  end
   
  def keywords(content = nil)
   if content
      @keywords = content
    else
      @keywords
    end
  end
  
  def describe(description = nil)
    if description
      @description = description
    else
      @description
    end
  end

  # Setting type of node (rdfa)
  def typeof(value=nil)
    @typeof ||= {}
    if value
      @typeof = { :typeof => value }
    else
      @typeof
    end
  end
end
