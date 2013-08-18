module Voncountjs
  module FormTagHelperExt
    def voncount_text_field_tag(name, value = nil, options = {})
      options[:class] = "von-countable #{options[:class]}"
      content_tag :div, class: "von-count-holder" do
        tag(:input, { "type" => "text", "name" => name, "id" => sanitize_to_id(name), "value" => value }.update(options.stringify_keys)) +
        content_tag(:span, '0', class: "von-counter")
      end
    end
  end

  module FormHelperExt
    def voncount_text_field(object_name, method, options = {})
      options[:class] = "von-countable #{options[:class]}"
      content_tag :div, class: "von-count-holder" do
        Tags::TextField.new(object_name, method, self, options).render +
        content_tag(:span, '0', class: "von-counter")
      end
    end
  end

  module FormBuilderExt
    include ActionView::Context
    include ActionView::Helpers::TagHelper
    def voncount_text_field(method, options = {})
      options[:class] = "von-countable #{options[:class]}"
      content_tag :div, class: "von-count-holder" do
        @template.send("text_field", @object_name, method, objectify_options(options)) +
        content_tag(:span, '0', class: "von-counter")
      end
    end
  end
end