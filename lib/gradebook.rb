class Gradebook
  attr_reader :instructor, 
              :courses, 
              :students_below

  def initialize(instructor)
    @instructor = instructor
    @courses = []
   
    @students_below = []
  end

  def add_course(course)
    @courses.push(course)
  end

  def list_all_students
    course_name = @courses.map do |course|
      course.name
    end.flatten
    students =[]

    @courses.each do |student|
      students << student.students
    end
      student_hash = {
        name: course_name,
        students: students
      }
  end
end
