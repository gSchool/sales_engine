require 'csv'

class MerchantRepository

  attr_reader :file_path

  def initialize(file_path = "")
    @file_path = file_path
  end

  def open_file
    CSV.open file_path, headers: true    
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

  def random
    all.sample
  end

  def find_by_id(criteria)
    all.find{|merchant| merchant.id == criteria} 
  end

  def find_by_name(criteria)
    all.find{|merchant| merchant.name == criteria} 
  end

  def find_by_created_at(criteria)
    all.find{|merchant| merchant.created_at == criteria} 
  end

  def find_by_updated_at(criteria)
    all.find{|merchant| merchant.updated_at == criteria} 
  end
  
  def find_all_by_id(criteria)
    all.find_all{|merchant| merchant.id == criteria} 
  end

  def find_all_by_name(criteria)
    all.find_all{|merchant| merchant.name == criteria} 
  end

  def find_all_by_created_at(criteria)
    all.find_all{|merchant| merchant.created_at == criteria} 
  end

  def find_all_by_updated_at(criteria)
    all.find_all{|merchant| merchant.updated_at == criteria} 
  end

end
