# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def title(title = nil, rdfa_options = nil)
    if is_editor? and context_object
      @title = "#{t(controller.action_name.to_sym)}/#{controller.controller_name.singularize.camelcase.constantize.human_name}"
      @title << "&nbsp;: #{context_object.name}" if context_object.respond_to?(:new_record?) and !context_object.new_record?
      @title
    else
      @rdfa_options = rdfa_options
      @title ||= ""
      if title
        @title << title
      else
        @title
      end
    end
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
