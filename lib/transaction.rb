class Transaction
  attr_reader :id,
              :invoice_id,
              :credit_card_number,
              :result,
              :created_at,
              :updated_at,
              :transaction_repository

  def initialize(data, path='data',repo)
    @id                     = data[:id]
    @invoice_id             = data[:invoice_id]
    @credit_card_number     = data[:credit_card_number]
    @result                 = data[:result]
    @created_at             = data[:created_at]
    @updated_at             = data[:updated_at]
    @transaction_repository = repo
  end

  def invoices
    transaction_repository.find_invoices(id)
  end
end
