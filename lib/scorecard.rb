
class Scorecard
  attr_reader :score
  
  def initialize
    @score = 0
  end

  def input_score(score)
    @score = score
  end
end
