
class Invoice

  attr_accessor :id,
    :customer_id,
    :merchant_id,
    :status,
    :created_at,
    :updated_at

  def initialize(input)
    @id = input[:id]
    @customer_id = input[:customer_id]
    @merchant_id = input[:merchant_id]
    @status = input[:status]
    @created_at = input[:created_at]
    @updated_at = input[:updated_at]
  end


  def self.add(array_of_data)
    @@invoices = array_of_data
  end

  def self.size
    @@invoices.size
  end
end
