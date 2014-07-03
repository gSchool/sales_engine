require './lib/merchant'

class Loader
  def self.read(filename, klass, repo)
    rows = CSV.open(filename, headers: true, header_converters: :symbol)
    objects = rows.map {|row| klass.new(row, repo)}
  end
end
