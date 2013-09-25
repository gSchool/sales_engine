class Transaction
  attr_reader :id, :invoice_id, :credit_card_number, :credit_card_expiration_date, :created_at, :updated_at

  def initialize(input={})
    @id = input[:id]
    @invoice_id = input[:invoice_id]
    @credit_card_number = input[:credit_card_number]
    @credit_card_expiration_date = input[:credit_card_expiration_date]
    @created_at = input[:created_at]
    @updated_at = input[:updated_at]
  end
end
