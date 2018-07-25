require_relative '../src/formatter'
RSpec.describe Formatter do

  describe '#perform' do
    it 'should not accept wrong input' do
      expect { described_class.perform(nil) }.to raise_error('Input can not be nil')
      expect { described_class.perform('string') }.to raise_error('Should be an Array')
    end

    it 'should return proper value' do
      example = [
          {name: 'Arsenal', A: 29, F: 44},
          {name: 'Chelsea', A: 22, F: 44},
          {name: 'Leeds', A: 30, F: 29}
      ]
      expect(described_class.perform(example)).to eq('Leeds')
    end
  end
end