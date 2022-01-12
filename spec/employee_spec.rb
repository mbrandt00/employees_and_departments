require './lib/employee'

RSpec.describe Employee do
  before(:each) do
    @bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
  end

  it 'will have a name' do
    expect(@bobbi.name).to eq('Bobbi Jaeger')
  end
end 
