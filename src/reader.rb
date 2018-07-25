require 'csv'
class Reader
  def self.perform(file)
    if file.nil?
      raise 'Input can not be nil'
    end
    formatted_data = []
    csv = CSV.read(file)[1..-1]
    csv.each do |row|
      formatted_data << { name: row[0], A: row[5].to_i, F: row[6].to_i }
    end
    formatted_data
  end
end