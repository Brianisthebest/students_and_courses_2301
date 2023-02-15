class Gradebook
  attr_reader :instructor, 
              :courses, 
              :list_all_students, 
              :students_below

  def initialize(instructor)
    @instructor = instructor
    @courses = []
    @list_all_students = {}
    @students_below = []
  end
end
