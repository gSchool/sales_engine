require './lib/finder'

class InvoiceRepository
  include Finder
  def self.from_file(file_name='./data/invoices.csv')
    invoices = Loader.read(file_name, Invoice)
    new(invoices)
  end

  attr_reader :objects
  def initialize(invoices)
    @objects = invoices
  end
end
