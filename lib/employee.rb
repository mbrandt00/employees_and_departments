class Employee
  attr_reader :name, :age, :salary 
  def initialize(hash)
    @name = hash[:name]
    @age = hash[:age]
    @salary = hash[:salary]
  end
end
