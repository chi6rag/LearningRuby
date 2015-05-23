class Greeting
  def greet(s)
  	s
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
puts hello.hi

goodbye = Goodbye.new
puts goodbye.bye