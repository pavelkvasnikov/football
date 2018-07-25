require_relative 'src/formatter'
require_relative 'src/reader'

task :find_team, [:file] do |task, args|
  formatted_data = Reader.perform(args[:file])
  puts Formatter.perform(formatted_data)
end