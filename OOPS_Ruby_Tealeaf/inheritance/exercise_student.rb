class Student
	attr_accessor :name
	attr_writer :grade

	def initialize(name, grade)
		@name  = name
		@grade = grade
	end

	def better_grade_than?(student)
		grade > student.grade
	end

	protected
	def grade
		@grade
	end
end

c = Student.new('Chirag', 91)
a = Student.new('Anvesh', 92)
puts (c.better_grade_than?(a)).to_s