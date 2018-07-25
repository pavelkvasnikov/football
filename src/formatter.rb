
class Formatter

  def self.perform(teams)
    if teams.nil?
      raise 'Input can not be nil'
    elsif !teams.is_a?(Array)
      raise 'Should be an Array'
    end
    teams.map { |team| { name: team[:name], score: (team[:A] - team[:F]).abs } }.sort_by {|team| team[:score] }.first[:name]
  end
end