require 'scorecard'

describe Scorecard do
  subject (:scorecard) { described_class.new }

  it 'returns an initial score of 0' do
    expect(scorecard.score).to eq(0)
  end

  it 'returns a score from 1 frame' do
    score = [1, 1]
    scorecard.input_score(score)

    expect(scorecard.score).to eq(2)
  end
end
