require 'csv'

class MerchantRepository

  attr_reader :file_path

  def initialize(file_path = "")
    @file_path = file_path
  end

  def all
    @all ||= create_merchants
  end

  def create_merchants
    csv_data = open_file
    all = csv_data.collect{|row| Merchant.new(:id => row["id"],
                                              :name => row["name"],
                                              :created_at => row["created_at"],
                                              :updated_at => row["updated_at"])}
  end

  def open_file
    CSV.open file_path, headers: true    
  end

  def random
    all.sample
  end

  %w(id name created_at updated_at).each do |attribute|
    define_method("find_by_#{attribute}") do |criteria| 
      all.find{|c| c.send(attribute) == criteria}
    end
  end
 
  %w(id name created_at updated_at).each do |attribute|
    define_method("find_all_by_#{attribute}") do |criteria| 
      all.find_all{|c| c.send(attribute) == criteria}
    end
  end

end
