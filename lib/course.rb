class Course
attr_reader :name, :capacity, :students, :course_full
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @students = []
    @course_full = false
  end

  def full?
    @course_full
  end
end
