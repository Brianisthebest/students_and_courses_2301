require 'rspec'
require './lib/course'
require './lib/student'

RSpec.describe Student do
  before(:each) do
    @course = Course.new("Calculus", 2)
    @student1 = Student.new({name: "Morgan", age: 21})
    @student2 = student2 = Student.new({name: "Jordan", age: 29})
  end

  describe '#initialize' do
    expect(@course).to be_a(Course)
    expect(@course.name).to eq("Calculus")
    expect(@course.capacity).to eq(2)
    expect(@course.students).to eq([])
    expect(course.full?).to eq(false)
  end