class InvoiceEntry
  attr_reader :product_name
  attr_accessor :quantity

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  # def update_quantity(updated_count)
  #   # prevent negative quantities from being set
  #   @quantity = updated_count if updated_count >= 0
  # end

  def update_quantity(updated_count)
  	self.quantity = updated_count if updated_count >= 0
  end
end

invoice_entry = InvoiceEntry.new('Water Bottle', 2)
puts "----- previous quantity -----"
puts invoice_entry.quantity

invoice_entry.update_quantity(10)
puts "----- new quantity -----"
puts invoice_entry.quantity

# making attr_reader :quantity to attr_accessor :quantity
# will provide setter and getter methods for quantity
# but in update_quantity method, if quantity = update_quantity ..
# will be written, it will create a new variable quantity
# whereas required is calling the setter method quantity
# hence we will use self.quantity

# second problem
# you are allowing the customer to change the quantity over the
# time, which is not really a good idea 