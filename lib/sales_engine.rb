class SalesEngine

  def startup

  end

  def customer_repository(filepath= "./data/customers.csv")
    CustomerRepository.new(filepath)
  end

end
