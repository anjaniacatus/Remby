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
end
