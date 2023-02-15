class Course
  attr_reader :name, :capacity
  attr_accessor :students

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @students = []
  end
end
