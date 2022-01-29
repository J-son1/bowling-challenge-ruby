require 'scorecard'

describe Scorecard do
  subject (:scorecard) { described_class.new }

  it 'returns an initial score of 0' do
    expect(scorecard.score).to eq(0)
  end
end
