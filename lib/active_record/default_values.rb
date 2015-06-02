require 'active_record/default_values/version'
require 'active_record'

module ActiveRecord
  module DefaultValues
    extend ActiveSupport::Concern

    class_methods do
      def default_value(attr_name, default_value, **options)
        after_initialize if: :new_record? do
          value = default_value.respond_to?(:call) ? default_value.call : default_value
          send("#{attr_name}=", value) if send(attr_name).send(options[:if] || :nil?)
        end
      end
    end
  end
end

ActiveRecord::Base.send :include, ActiveRecord::DefaultValues
