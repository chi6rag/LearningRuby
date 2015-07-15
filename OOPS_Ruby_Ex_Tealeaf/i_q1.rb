# 1 ----------
# class BankAccount
#   attr_reader :balance

#   def initialize(starting_balance)
#     @balance = starting_balance
#   end

#   def positive_balance?
#     balance >= 0
#   end
# end
# Ben is right, everything is fine here
# You don't need to add an @ before balance
# in positive_balance? method, because balance
# would look for the instance level balance getter
# ---------- 1

# 2 ----------
# class InvoiceEntry
#   attr_reader :quantity, :product_name

#   def initialize(product_name, number_purchased)
#     @quantity = number_purchased
#     @product_name = product_name
#   end

#   def update_quantity(updated_count)
#     # prevent negative quantities from being set
#     quantity = updated_count if updated_count >= 0
#   end
# end
# invoice_entry = InvoiceEntry.new("Nirma", 1000)
# puts invoice_entry.quantity
# invoice_entry.update_quantity(-8000)
# puts invoice_entry.quantity
# Yes, it will fail because quantity will create a
# local variable quantity and return the same while
# the expected result is to update it then and there
# and return the result.
# Solutions:
#   - In update quantity method, use @quantity = 
#   - Make attr_reader :quantity to attr_accessor :quantity
#     and use self.quantity
# ---------- 2

# 3 ----------
# class InvoiceEntry
#   attr_reader :quantity, :product_name

#   def initialize(product_name, number_purchased)
#     @quantity = number_purchased
#     @product_name = product_name
#   end

#   def update_quantity(updated_count)
#     quantity = updated_count if updated_count >= 0
#   end
# end
# we don't want the user of the app to change the quantity with
# invoice_entry_instance.quantity = new_quantity
# instead, we want the change to happen using update_quantity
# instance method
# ---------- 3

# 4 ----------
# class Greeting
# 	def greet(arg)
# 		puts arg
# 	end
# end

# class Hello < Greeting
# 	def hi
# 		greet("Hello")
# 	end
# end

# class GoodBye < Greeting
# 	def bye
# 		greet("Bye")
# 	end
# end
# hello = Hello.new
# hello.hi
# good_bye = GoodBye.new
# good_bye.bye
# ---------- 4

# 5 ----------
# class KrispyKreme
#   def initialize(filling_type, glazing)
#     @filling_type = filling_type
#     @glazing = glazing
#   end

#   def to_s
#   	# if filling_type && glazing, both are nil -> Plain
#   	# if filling_type != nil && glazing == nil -> filling_type
#   	# if filling_type == nil && galzing != nil -> Plain with Glazing
#   	# if filling_type and glazing, both != nil -> filling_type with glazing
#   	donut_name = ""
#   	@filling_type != nil ? donut_name << @filling_type : donut_name << "Plain"
#   	@glazing != nil ? donut_name << " with #{@glazing}" : donut_name << ""
#   	donut_name
#   end
# end
# donut1 = KrispyKreme.new(nil, nil)
# donut2 = KrispyKreme.new("Vanilla", nil)
# donut3 = KrispyKreme.new(nil, "sugar")
# donut4 = KrispyKreme.new(nil, "chocolate sprinkles")
# donut5 = KrispyKreme.new("Custard", "icing")

# puts donut1
#   => "Plain"

# puts donut2
#   => "Vanilla"

# puts donut3
#   => "Plain with sugar"

# puts donut4
#   => "Plain with chocolate sprinkles"

# puts donut5
#   => "Custard with icing"
# ---------- 5

# 6 ----------
class Computer
  attr_accessor :template

  def create_template
    @template = "template 14231"
  end

  def show_template
    template
  end
end

class Computer
  attr_accessor :template

  def create_template
    self.template = "template 14231"
  end

  def show_template
    self.template
  end
end
# No difference at all
# Why:
#   - Case 1: 
#     show_template method calls the template getter
#     create_template assigns "template 14231" to
#     instance variable template
#   - Case 2: 
#     self.template method calls the template getter 
#     create_template assigns "template 14231" to
#     instance variable template via setter template
# ---------- 6

# 7 ----------
class Light
  attr_accessor :brightness, :color


  def initialize(brightness, color)
    @brightness = brightness
    @color = color
  end

  def self.information
    "I want to turn on the light with a brightness level of super high and a colour of green"
  end
end
# Have .information instead of light_information
# ---------- 7