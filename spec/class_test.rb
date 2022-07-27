require './classroom'

require 'yaml'

describe Classroom do
  before :each do
    @classroom = Classroom.new 'TEST'
  end

  it 'print the grade' do
    expect(@classroom.label).to eq 'TEST'
  end
end
