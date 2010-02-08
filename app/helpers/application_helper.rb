# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
   def title(title = nil)
    if title
    @title = title 
    else
      @title ||= "Remby"
      @title
    end
  end

end
