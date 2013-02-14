

class Customer

  attr_accessor :id, :first_name, :last_name, :created_at, :updated_at

  def initialize(input)
    @id = input[:id]
    @first_name = input[:first_name]
    @last_name = input[:last_name]
    @created_at = input[:created_at]
    @updated_at = input[:updated_at]
  end

    def self.add(array_of_data)
    @@customers = array_of_data
  end

  def self.size
    @@customers.size
  end

  def self.random
    pick_number = @@customers.size
    random_number = rand(pick_number)
    random_customer = @@customers[random_number]
    random_customer
  end

  def self.find_by_id(id)
    @@customers.find{|customer| customer.id == id}
  end

  def self.find_by_first_name(first_name)
    @@customers.find {|customer| customer.first_name == first_name}
  end

  def self.find_all_by_first_name(first_name)
    @@customers.find_all {|customer| customer.first_name == first_name}
  end

  def self.find_by_last_name(last_name)
    @@customers.find {|customer| customer.last_name == last_name}
  end

  def self.find_all_by_last_name(last_name)
    @@customers.find_all {|customer| customer.last_name == last_name}
  end


end