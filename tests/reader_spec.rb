require_relative '../src/reader'
RSpec.describe Reader do

  describe '#perform' do
    it 'should not accept wrong input' do
      expect { described_class.perform(nil) }.to raise_error('Input can not be nil')
    end

    it 'should return proper value' do
      file = 'example.csv'
      example = [
        {:name=>"Arsenal",      :A=> 79, :F=> 36},
        {:name=>"Liverpool",    :A=> 67, :F=> 30},
        {:name=>"Manchester_U", :A=> 87, :F=> 86},
        {:name=>"Newcastle",    :A=> 74, :F=> 52},
        {:name=>"Leeds",        :A=> 53, :F=> 37},
        {:name=>"Chelsea",      :A=> 66, :F=> 38},
        {:name=>"West_Ham",     :A=> 48, :F=> 57},
        {:name=>"Aston_Villa",  :A=> 46, :F=> 47},
        {:name=>"Tottenham",    :A=> 49, :F=> 53},
        {:name=>"Blackburn",    :A=> 55, :F=> 51}
      ]
      expect(described_class.perform(file)).to eq(example)
    end
  end
end