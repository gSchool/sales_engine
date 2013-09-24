require_relative 'customer'

class CustomerRepository

  attr_accessor :customers

  def initialize
    @customers = create_customers_array
  end

  def create_customers_array
    [Customer.new]
  end

  def default_filename
    'customers.csv'
  end

end
