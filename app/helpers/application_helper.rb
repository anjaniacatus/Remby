# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def title(title = nil, rdfa_options = nil)
    if current_user and context_object
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

  def public_link_to(text, object)
    if object.respond_to? :published? and object.published?
      link_to text, object
    elsif is_editor?
      link_to "#{text} (private)", object
    else
      content_tag :a, text, :class => "not_a_link", :href => "#navigation"
    end
  end

  def public_url_for(object)
    polymorphic_url object
  end

  def clip(text, length = 25, tag = :span, options = {})
    content_tag tag, :title => text, :class => "truncated" do
      truncate text, options.merge({ :length => length })
    end
  end
end
