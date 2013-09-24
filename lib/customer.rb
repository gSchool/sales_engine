require 'date'

class Customer
  attr_reader :id, :first_name, :last_name, :created_at, :updated_at

  def initialize(data)
    @id = data[:id]
    @first_name = data[:first_name]
    @last_name = data[:last_name]
    @created_at = format_time(data[:created_at])
    @updated_at = format_time(data[:updated_at])
  end

  def format_time(time)
    DateTime.parse(time)
  end
end
