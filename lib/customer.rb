class Customer

  attr_reader :first_name, :last_name, :id, :created_at, :updated_at

  def initialize(input = {})
    @first_name = input[:first_name]
    @last_name = input[:last_name]
    @id = input[:id]
    @created_at = input[:created_at]
    @updated_at = input[:updated_at]
  end

end
