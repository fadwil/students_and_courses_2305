class Gradebook
  attr_reader :instructor, :courses
  def initialize(instructor)
    @instructor = instructor
    @courses = []
  end
  
  def add_course(course)
    @courses << course
  end

  def list_all_students
   list = []
   @courses.each do |course|
    list << course.students
   end
  end

  def students_below(threshold)
    if @student.log_score < threshold
      course.students
    end
  end
end
