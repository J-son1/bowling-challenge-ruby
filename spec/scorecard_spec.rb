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

  context 'when not on the 10th frame' do
    it 'adds the bonus for a spare' do
      scores = [[1, '/'], [1, 1], [1, 1], [1, 1], [1, 1], [1, 1], [1, 1], [1, 1], [1, 1], [1, '/']]
      scorecard.input_scores(scores)
    
      expect(scorecard.final_score).to eq(37)
    end

    it 'adds the bonus for a strike' do
      scores = [['X'], [1, 1], [1, 1], [1, 1], [1, 1], [1, 1], [1, 1], [1, 1], [1, 1], ['X']]
      scorecard.input_scores(scores)
    
      expect(scorecard.final_score).to eq(38)
    end
  end

  context 'when on the 10th frame' do
    context 'when not on a bonus roll' do  
      it 'adds the bonus for a strike' do
        scores = [['X'], [1, 1], [1, 1], [1, 1], [1, 1], [1, 1], [1, 1], [1, 1], [1, 1], ['X', 1, 1]]
        scorecard.input_scores(scores)
      
        expect(scorecard.final_score).to eq(40)
      end
    end

    context 'when on a bonus roll' do
      it 'does not add a strike bonus' do
        scores = [['X'], [1, 1], [1, 1], [1, 1], [1, 1], [1, 1], [1, 1], [1, 1], [1, 1], ['X', 'X', 'X']]
        scorecard.input_scores(scores)
      
        expect(scorecard.final_score).to eq(58)
      end
    end
  end
end
