class Customer
  attr_reader :id, :first_name, :last_name, :created_at

  def initialize(data)
    @id = data[:id]
    @first_name = data[:first_name]
    @last_name = data[:last_name]
  end
end
