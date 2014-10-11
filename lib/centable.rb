require "centable/engine"

module Centable
  extend ActiveSupport::Concern

  module ClassMethods
    def cent_column(attribute, options={})
      cents_col = "#{attribute.to_s}_cents".to_sym
      define_method("#{attribute.to_s}=") do |val|
        num_val = cast_to_numeric(val)
        self[cents_col] = num_val.nil? ? 0 : (num_val*100).to_i
      end

      define_method("#{attribute.to_s}") do
        self[cents_col] ? BigDecimal(self[cents_col])/100 : self[cents_col]
      end
    end
  end

  def cast_to_numeric(value)
    value.is_a?(String) ? value.to_big_decimal : value
  end
end
