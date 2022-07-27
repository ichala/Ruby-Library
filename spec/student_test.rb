require './student'

require 'yaml'

describe Student do
  before :each do
    @student = Student.new(1,26,'TEST','TEST')
  end

  it 'instance of student' do
    expect(@student.name).to eq 'TEST'
  end

  it 'if age is correct' do
    expect(@student.age).to eq 26
  end
end