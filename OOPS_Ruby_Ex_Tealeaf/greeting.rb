class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def hi
  	greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

hello = Hello.new
# hello.hi #> Hello

# goodbye = Goodbye.new
# goodbye.bye #> Goodbye

# hello.bye #> NoMethodError
# hello.greet("Goodbye") #> Goodbye

Hello.hi #> NoMethodError