require './teacher'

require 'yaml'

describe Teacher do
  before :each do
    @teacher = Teacher.new(102,44,'Science','TEST')
  end

  it 'instance of teacher' do
    expect(@teacher.name).to eq 'TEST'
  end

  it 'id correct' do
    expect(@teacher.id).to eq 102
  end

  it 'age is correct' do
    expect(@teacher.age).to eq 44
  end

  it 'specialization is correct' do
    expect(@teacher.specialization).to eq 'Science'
  end
end