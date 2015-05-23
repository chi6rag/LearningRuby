# method 1
# class Computer
#   attr_accessor :template

#   def create_template
#     @template = "template 14231"
#   end

#   def show_template
#     template
#   end
# end

# method 2
class Computer
  attr_accessor :template

  def create_template
    self.template = "template 14231"
  end

  def show_template
    self.template
  end
end

c = Computer.new
puts "----- old template -----"
c.create_template
puts c.show_template
puts "----- new template -----"
c.template = "new template"
puts c.show_template


# create_template of method 1
# assigns value "template 14231" to 
# instance variable @template

# while create_template of method 2
# calls the setter method template
# to assign value "template 14231"