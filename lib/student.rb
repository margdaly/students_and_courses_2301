
class Student
  attr_reader :name, :age
  attr_accessor :scores

  def initialize(student_details)
    @name = student_details[:name]
    @age = student_details[:age]
    @scores = []
  end

  def log_score(score)
    @scores << score
  end
end