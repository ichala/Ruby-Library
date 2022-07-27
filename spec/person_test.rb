require './person'

require 'yaml'

describe Person do
  before :each do
    @person = Person.new(1, 26, 'TEST')
  end

  it 'age is correct ?' do
    expect(@person.age).to eq 26
  end

  it 'can use services ?' do
    @person.can_use_servies?.should == true
  end
end
