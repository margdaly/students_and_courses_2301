require 'spec_helper'

RSpec.describe Student do
  describe '#initialize' do
    it 'exists' do
      student = Student.new({name: "Morgan", age: 21})

      expect(student).to be_an_instance_of(Student)
      expect(student.name).to eq("Morgan")
      expect(student.age).to eq(21)
    end
  end

  describe 'scores/grades' do
    it 'has scores' do
      student = Student.new({name: "Morgan", age: 21})

      expect(student.scores).to be_an_instance_of(Array)
      expect(student.log_score(89)).to eq([89])
      expect(student.log_score(78)).to eq([89, 78])
      expect(student.scores.include?(34)).to eq(false)
    end

    it 'has grades' do
      student = Student.new({name: "Morgan", age: 21})

      student.log_score(89)
      student.log_score(78)

      expect(student.grade).to eq(83.5)
      expect(student.grade).to be_an_instance_of(Float)
    end
  end
end