class Department
  attr_reader :name, :employees, :expense
  def initialize(name)
    @name = name
    @employees = []
    @expense = 0
  end

  def hire(employee)
    @employees << employee
  end

end
