
class Scorecard
  attr_reader :score
  
  def initialize
    @score = 0
  end

  def input_score(frames)
    frames.each { |frame| 
      @score += frame.sum
    }.flatten.reduce(:+)
  end
end

