require 'voncount/voncount_form_helpers'
module Voncount
  class Railtie < Rails::Railtie
    initializer "voncount.voncount_form_helpers" do |app|
      ActionView::Base.send :include, FormTagHelperExt
      ActionView::Base.send :include, FormHelperExt
      ActionView::Helpers::FormBuilder.send :include, FormBuilderExt
    end
  end
end