require './lib/merchant'

class Loader
  def self.read(filename, klass)
    rows = CSV.open(filename, headers: true, header_converters: :symbol)
    objects = rows.map {|row| klass.new(row)}
  end
end
