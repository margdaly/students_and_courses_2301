class Gradebook
  attr_accessor :gradebook_details, 
                :courses,
                :all_students,
                :students_below

  def initialize(semester)
    @semester = semester
    @courses = gradebook_details[:courses]
    @all_students = gradebook_details[:all_students]
    @students_below = gradebook_details[:students_below]
  end

  def gradebook_details
    gradebook_details = {
      :name=>@name,
      :instructor=>nil,
      :courses=>[], 
      :all_students=>{}, 
      :students_below=>[]
    }
  end

  def add_course(course) 
    course = Course.new(course)

if student

    course.students.select{|student| student.grade <= 59.9}
    gradebook_details[:students_below] << student
    end
    gradebook_details[:all_students]
    gradebook_details[:courses] << course
  end
  
  def list_all_students
    gradebook_details[:courses].map do |course|
      gradebook_details[:all_students] << course.students
    end
  end

  def students_below

  end
end


# def players_by_position(position)
#   @players.select {|player| player.position == position}
# end