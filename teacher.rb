require './person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(
    specialization, age, name = 'Unknown', permission = 'true'
  )
    super(age, name, permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
