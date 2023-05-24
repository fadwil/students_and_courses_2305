require 'rspec'
require './lib/course'
require './lib/student'
require './lib/gradebook'

RSpec.describe Course do
  it 'exists and has readable attributes' do
    gradebook = Gradebook.new("Jim")
    expect(gradebook).to be_a(Gradebook)
    expect(gradebook.instructor).to eq("Jim")
    expect(gradebook.courses).to eq([])
  end

  it 'can add courses' do
    gradebook = Gradebook.new("Jim")
    calculus = Course.new("Calculus", 2) 
    gradebook.add_course(calculus)
    expect(gradebook.courses).to eq([calculus])
  end

  it 'can list all students in course' do
    gradebook = Gradebook.new("Jim")
    calculus = Course.new("Calculus", 2)
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29}) 
    gradebook.add_course(calculus)
    calculus.enroll(student1) 
    calculus.enroll(student2)
    expect(gradebook.list_all_students).to eq({calculus: [student1, student2]})
  end
end