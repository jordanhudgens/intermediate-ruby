require 'ostruct'

class Invoice
  def initialize(name, location, good_standing)
    @name = name
    @location = location
    @good_standing = good_standing
  end

  def customer
    OpenStruct.new(name: @name, location: @location, good_standing: @good_standing)
  end

  def method_missing(method_name, *args, &block)
    if method_name.to_s =~ /customer_(.*)/
      customer.send($1, *args, &block)
    else
      super
    end
  end
  
  def respond_to_missing?(method_name, include_private = false)
    method_name.to_s.start_with?('customer_') || super
  end
end

invoice = Invoice.new("Apple", "Cupertino", true)
p invoice.customer_name
p invoice.respond_to?(:customer_location)