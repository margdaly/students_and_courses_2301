require 'spec_helper'

RSpec.describe Gradebook do
  describe '#init' do
    it 'exists' do
      gradebook = Gradebook.new(1)

      expect(gradebook).to be_an_instance_of(Gradebook)
    end

    it 'has courses' do
      gradebook = Gradebook.new(1)
require 'pry'; binding.pry
      expect(gradebook.courses).to be_an_instance_of(Array)
      # expect(gradebook.courses.first).to be_an_instance_of(Course)
    end
  end
end


# course = Course.new("Calculus", 2) 
# student1 = Student.new({name: "Morgan", age: 21})
# student2 = Student.new({name: "Jordan", age: 29}) 