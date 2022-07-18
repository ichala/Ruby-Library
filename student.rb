require './person'

class Student < Person
  attr_accessor :classroom

  def initialize(classroom, age, name = 'Unknown', permission = 'true')
    super(age, name, permission)
    @classroom = classroom
  end

  def play_hooky
    return '¯\(ツ)/¯'
  end
end
