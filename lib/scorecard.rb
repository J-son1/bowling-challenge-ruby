
class Scorecard
  attr_reader :score
  
  def initialize
    @score = 0
  end

  def input_score(frames)
    frames.each_with_index do |frame, i| 
      frame_number = i + 1

      # Adds the bonus for a spare
      if frame.length == 2 and frame.sum == 10 and frame_number != 10
        @score = frames[i + 1][0]
      end

      @score += frame.sum
    end
      .flatten.reduce(:+)

  end
end

