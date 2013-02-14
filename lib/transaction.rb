class Transaction

  attr_accessor :id,
    :invoice_id,
    :credit_card_number,
    :credit_card_expiration_date,
    :result,
    :created_at,
    :updated_at

  def initialize(input)
    @id = input[:id]
    @invoice_id = input[:invoice_id]
    @credit_card_number = input[:credit_card_number]
    @credit_card_expiration_date = input[:credit_card_expiration_date]
    @result = input[:result]
    @created_at = input[:created_at]
    @updated_at = input[:updated_at]
  end


  def self.add(array_of_data)
    @@transactions = array_of_data
  end

  def self.size
    @@transactions.size
  end
end
