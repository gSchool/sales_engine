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

  %w(id first_name last_name created_at updated_at).each do |attribute|
    define_method("find_by_#{attribute}") do |criteria| 
      all.find{|c| c.send(attribute) == criteria}
    end
  end
 
  %w(id first_name last_name created_at updated_at).each do |attribute|
    define_method("find_all_by_#{attribute}") do |criteria| 
      all.find_all{|c| c.send(attribute) == criteria}
    end
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
