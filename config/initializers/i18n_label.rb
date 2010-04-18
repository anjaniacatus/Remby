module ActionView
  module Helpers
    class InstanceTag
      def try_to_constantize(text)
        text.pluralize.classify.constantize
      rescue NameError
      end

      def to_label_tag_with_i18n(text = nil, options = {})
        unless text
          if method_name =~ /(.*)_id(s)?$/
            text = try_to_constantize($1).try(:human_name)
          else
            text = object.class.human_attribute_name(method_name) if object.class.respond_to?(:human_attribute_name)
          end
        end
        to_label_tag_without_i18n(text, options)
      rescue NameError
      end
      alias_method_chain :to_label_tag, :i18n
    end
  end
end