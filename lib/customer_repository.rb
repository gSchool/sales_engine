require './lib/finder'

class CustomerRepository
  include Finder
  def self.from_file(file_name='./data/customers.csv')
    customers = Loader.read(file_name, Customer)
    new(customers)
  end

  attr_reader :objects
  def initialize(customers)
    @objects = customers
  end  
end
