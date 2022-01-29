class Scorecard
  FIRST_ROLL = 0
  SECOND_ROLL = 1

  attr_reader :final_score

  def initialize
    @final_score = 0
  end

  def input_scores(scores)
    calculate_score(scores)
  end
  
  private

  def calculate_score(scores)
    scores.each_with_index do |frame, i|
      current_frame = i + 1

      # Adds the bonus for a spare
      if frame.include?('/')
        # Converts the symbol for a spare into an int
        frame[SECOND_ROLL] = 10 - frame[FIRST_ROLL]

        if current_frame != 10
          @final_score = scores[current_frame + 1][FIRST_ROLL]
        end
      end

      @final_score += frame.sum
    end.flatten.reduce(:+)
  end
end
