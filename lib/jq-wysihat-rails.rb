require 'wysihat/rails'

module ActionView
  module Helpers
    module FormHelper
      def editor_field(object_name, method, options ={})
        InstanceTag.new(object_name, method, self, options.delete(:object)).to_editor_tag options
      end
    end

    class InstanceTag
      def to_editor_tag(options = {})
        options = DEFAULT_TEXT_AREA_OPTIONS.merge(options.stringify_keys)
        add_default_name_and_id options

        size = options.delete 'size'
        options['cols'], options['rows'] = size.split('x') if size.respond_to? :split

        if options['buttons'] == nil || options['buttons'] == :all
          buttons = [:bold, :italic, :underline, :strikethrough, :insert_unordered_list]
        else
          buttons = options['buttons']
        end

        javascript = "jQuery(function() {" <<
          "wysiHatify('##{tag_id}', ['#{buttons.join('\', \'')}']);" <<
          "});"

        content_tag(:script, javascript.html_safe, type: 'text/javascript') <<
        content_tag(:textarea, options.delete('value') || value_before_type_cast(object), options.merge(class: 'wysihat_editor'))
      end
    end

    class FormBuilder
      def editor_field(method, options = {})
        @template.editor_field @object_name, method, options
      end
    end
  end
end
