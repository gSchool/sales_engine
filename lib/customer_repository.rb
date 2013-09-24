require 'csv'

class CustomerRepository

  attr_reader :file_path

  def initialize(file_path = "")
    @file_path = file_path
  end

  def all
    @all ||= create_customers
  end
  
  def create_customers
    csv_data = open_file
    all = csv_data.collect{|row| Customer.new(:id => row["id"],
      :first_name => row["first_name"],
      :last_name => row["last_name"],
      :created_at => row["created_at"],
      :updated_at => row["updated_at"])}
  end

  def open_file
    CSV.open file_path, headers: true
  end

end
