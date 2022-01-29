require 'scorecard'

describe Scorecard do
  subject(:scorecard) { described_class.new }

  it 'returns an initial score of 0' do
    expect(scorecard.final_score).to eq(0)
  end

  it 'returns a score from 1 frame' do
    scores = [[1, 1]]
    scorecard.input_scores(scores)

    expect(scorecard.final_score).to eq(2)
  end

  it 'returns a score from 10 frames' do
    scores = [[1, 1], [1, 1], [1, 1], [1, 1], [1, 1], [1, 1], [1, 1], [1, 1], [1, 1], [1, 1]]
    scorecard.input_scores(scores)

    expect(scorecard.final_score).to eq(20)
  end

  it 'adds the bonus for a spare when not the 10th frame' do
    scores = [[1, '/'], [1, 1], [1, 1], [1, 1], [1, 1], [1, 1], [1, 1], [1, 1], [1, 1], [1, '/']]
    scorecard.input_scores(scores)
  
    expect(scorecard.final_score).to eq(37)
  end
end
