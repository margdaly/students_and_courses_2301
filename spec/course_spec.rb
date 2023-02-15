require 'spec_helper'

RSpec.describe Course do
  describe '#initialize' do
    it 'exists' do
      course = Course.new("Calculus", 2) 

      expect(course).to be_an_instance_of(Course)
      expect(course.name).to eq("Calculus")
      expect(course.capacity).to eq(2)
    end
  end

  describe '#capacity' do
    it 'can enroll students' do
      course = Course.new("Calculus", 2) 
      student1 = Student.new({name: "Morgan", age: 21})
      student2 = Student.new({name: "Jordan", age: 29}) 

      expect(course.students).to eq([])
      expect(course.full?).to eq(false)

      course.enroll(student1)
      course.enroll(student2)

      expect(course.students).to eq([student1, student2])
      expect(course.full?).to eq(true)
      expect(course.students.size).to eq(course.capacity)
    end
  end
end