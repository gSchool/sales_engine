require './lib/invoice'

class InvoiceRepository

  attr_accessor :invoices

  def initialize
    @invoices = create_invoices_array
  end

  def create_invoices_array
    [Invoice.new]
  end

  def default_filename
    'invoices.csv'
  end

end
