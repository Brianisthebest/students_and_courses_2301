class Gradebook
  attr_reader :instructor, 
              :courses

  def initialize(instructor)
    @instructor = instructor
    @courses = []
  end

  def add_course(course)
    @courses.push(course)
  end

  def list_all_students
    course_name = @courses.map do |course|
      course.name
    end.flatten
    
    students = []
    @courses.each do |student|
      students << student.students
    end
      student_hash = {
        name: course_name,
        students: students
      }
  end

  def students_below(threshold)
    students = []
    @courses.each do |course|
      students << course.students
    end
    students_below = []
    students_below << students.each do |student|
      student.select do |grade|
        grade.grade <= threshold
      end
      require 'pry'; binding.pry
      students_below
    end
  end
end
