require 'spec_helper'

RSpec.describe Student do
  describe '#initialize' do
    it 'exists' do
      student = Student.new({name: "Morgan", age: 21})

      expect(student).to be_an_instance_of(Student)
      expect(student.name).to eq("Morgan")
      expect(student.age).to eq(21)
    end

    it 'has scores' do
      
    end
  end
end