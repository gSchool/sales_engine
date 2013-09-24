require_relative 'customer'
require_relative 'base_repository'

class CustomerRepository < BaseRepository

  def initialize
    @collection_array = create_customers_array
  end

  def create_customers_array
    [Customer.new]
  end

  def default_filename
    'customers.csv'
  end

end