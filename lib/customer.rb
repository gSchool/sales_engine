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
end