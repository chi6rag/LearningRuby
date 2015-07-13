class Student
	attr_accessor :name
	attr_writer :grade

	def initialize(name, grade)
		self.name = name
		self.grade = grade
	end

	def better_grade_than(student)
		@grade > student.grade
	end

	protected
	
	def grade
		@grade
	end

end

chirag = Student.new("Chirag", 95)
shikhar = Student.new("Shikhar", 96)
puts chirag.better_grade_than shikhar