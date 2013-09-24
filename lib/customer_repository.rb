require 'csv'

class CustomerRepository

  attr_reader :file_path

  def initialize(file_path = "")
    @file_path = file_path
  end

  def all
    @all ||= create_customers
  end

  def random
    all.sample
  end

  def find_by_id(criteria)
    all.find{|customer| customer.id == criteria}
  end

  def find_all_by_id(criteria)
    all.find_all{|customer| customer.id == criteria}
  end

  def find_by_first_name(criteria)
    all.find{|customer| customer.first_name == criteria}
  end

  def find_all_by_first_name(criteria)
    all.find_all{|customer| customer.first_name == criteria}
  end

  def find_by_last_name(criteria)
    all.find{|customer| customer.last_name == criteria}
  end

  def find_all_by_last_name(criteria)
    all.find_all{|customer| customer.last_name == criteria}
  end

  def find_by_created_at(criteria)
    all.find{|customer| customer.created_at == criteria}
  end

  def find_all_by_created_at(criteria)
    all.find_all{|customer| customer.created_at == criteria}
  end
  
  def find_by_updated_at(criteria)
    all.find{|customer| customer.updated_at == criteria}
  end

  def find_all_by_updated_at(criteria)
    all.find_all{|customer| customer.updated_at == criteria}
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
