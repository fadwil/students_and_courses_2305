class Course
  attr_reader :name, :capacity, :students

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @students = []
    @is_full = false
  end

  def full?
    if @students.length == @capacity
      @is_full = true
    else
      false
    end
  end

  def enroll(student)
    @students << student
  end

end
