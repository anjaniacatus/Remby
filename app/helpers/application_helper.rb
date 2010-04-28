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

  def delete_link(context_object)
    button_to(t(:destroy), polymorphic_path(context_object), :method => :delete, :confirm => t(:confirm_item_deletion, :item => context_object.class.human_name))
  end
   def fleximage_path(record, size = nil)
    if size
      polymorphic_url(record, :format => :jpg, :fleximage_sizes => size, :role => nil, :locale => :img, :fleximage_date => record.updated_at.t("%y%m%d"))
    else
      polymorphic_url(record, :format => :jpg, :role => nil, :locale => :img, :fleximage_date => record.updated_at.t("%y%m%d"))
    end
  end
end
