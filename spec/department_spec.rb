require './lib/employee'
require './lib/department'

RSpec.describe do Department
  before(:each) do
    @customer_service = Department.new("Customer Service")
    @bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
    @aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})
  end
  describe 'initialization' do
    it 'will create an instance of department' do
      expect(@customer_service).to be_instance_of(Department)
    end
    it 'will have a name' do
      expect(@customer_service.name).to eq('Customer Service')
    end
    it 'will initially have no employees' do
      expect(@customer_service.employees).to eq([])
    end
  end
  it 'can hire employees' do
    @customer_service.hire(@bobbi)
    expect(@customer_service.employees).to eq([@bobbi])
    @customer_service.hire(@aaron)
    expect(@customer_service.employees).to eq([@bobbi, @aaron])
  end
end
