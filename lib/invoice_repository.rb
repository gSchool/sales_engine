require_relative 'invoice'
require_relative 'base_repository'

class InvoiceRepository < BaseRepository

  def initialize
    @collection_array = create_invoices_array
  end

  def create_invoices_array
    [Invoice.new]
  end

  def default_filename
    'invoices.csv'
  end

end
