class Person
  attr_reader :id
  attr_accessor :name, :age, :permission

  def initialize(age, permission = 'true', name = 'Unknown')
    @id = Random.rand(1..500)
    @permission = permission
    @name = name
    @age = age
  end

  def can_use_services?
    return true if is_of_age? || permission

    false
  end

  private

  def of_age?
    return true if @age >= 10
  end
end
