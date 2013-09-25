class InvoiceItemsRepository
  
  attr_reader :file_path

  def initialize(file_path = "")
    @file_path = file_path
  end

  def open_file
    CSV.open file_path, headers: true    
  end

  def all
    @all ||= create_invoice_items
  end

  def create_invoice_items
    csv_data = open_file
    all = csv_data.collect{|row| InvoiceItems.new(:id => row["id"],
                                              :item_id => row["item_id"],
                                              :invoice_id => row["invoice_id"],
                                              :quantity => row["quantity"],
                                              :unit_price => row["unit_price"],
                                              :created_at => row["created_at"],
                                              :updated_at => row["updated_at"])}
  end

  def random
    all.sample 
  end
 
  %w(id item_id invoice_id quantity unit_price created_at updated_at).each do |attribute|
    define_method("find_by_#{attribute}") do |criteria| 
      all.find{|c| c.send(attribute) == criteria}
    end
  end
 
  %w(id item_id invoice_id quantity unit_price created_at updated_at).each do |attribute|
    define_method("find_all_by_#{attribute}") do |criteria| 
      all.find_all{|c| c.send(attribute) == criteria}
    end
  end


end
