require 'scorecard'

describe Scorecard do
  subject (:scorecard) { described_class.new }

  it 'returns an initial score of 0' do
    expect(scorecard.score).to eq(0)
  end

  it 'returns the a score after user input' do
    score = 1
    scorecard.input_score(score)

    expect(scorecard.score).to_not eq(0)
  end
end
