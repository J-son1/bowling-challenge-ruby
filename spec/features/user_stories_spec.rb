describe "User Stories" do
  # As a bowler
  # so that I can start a game of bowling
  # I'd like an empty scoresheet
  it 'is an empty scorecard' do
    scorecard = Scorecard.new
    
    expect { scorecard.score }.to_not raise_error
  end
end
