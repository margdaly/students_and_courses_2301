class Course
  attr_reader :name, :capacity
  attr_accessor :students

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @students = []
  end

  def full?
    if @students.size >= @capacity
      true
    else
      false
    end
  end

  def enroll(student)
    @students << student
  end
end
