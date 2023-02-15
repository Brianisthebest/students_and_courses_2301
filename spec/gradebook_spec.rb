require 'rspec'
require './lib/gradebook'
require './lib/course'
require './lib/student'

RSpec.describe Gradebook do
  before(:each) do
    @gradebook = Gradebook.new("Mr. John")
    @course1 = Course.new("Calculus", 2)
    @course2 = Course.new("Math", 3)
    @course3 = Course.new("English", 4)
    @student1 = Student.new({name: "Morgan", age: 21})
    @student2 = student2 = Student.new({name: "Jordan", age: 29})
    @student3 = student3 = Student.new({name: "John", age: 30})
    @student4 = student4 = Student.new({name: "Maria", age: 27})
  end

  describe '#initialize' do
    it 'exists' do
      expect(@gradebook).to be_a(Gradebook)
      expect(@gradebook.instructor).to eq("Mr. John")
      expect(@gradebook.courses).to eq([])
      expect(@gradebook.list_all_students).to eq({})
      expect(@gradebook.students_below).to eq([])
    end
  end
end
