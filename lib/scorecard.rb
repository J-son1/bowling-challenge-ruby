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
    # Converts a strike or spare to an integer
    scores = scores.map do |frame|
      frame.each_with_index do |roll, current_roll|
        if roll == 'X'
          frame[current_roll] = 10 
        elsif  roll == '/'
          frame[SECOND_ROLL] = 10 - frame[FIRST_ROLL]
        end
      end
    end

    # Calculates score
    scores = scores.each_with_index do |frame, i|
      current_frame = i + 1

      if frame[FIRST_ROLL] == 10
        # Adds the bonus for a strike
        if current_frame != 10
          if scores[current_frame + 1][FIRST_ROLL] == 10
            @final_score += 20 if scores[cureent_frames + 2][FIRST_ROLL] == 10
          else
            @final_score += scores[current_frame + 1][FIRST_ROLL] + scores[current_frame + 1][SECOND_ROLL]
          end
        end
      # Adds the bonus for a spare
      elsif frame[FIRST_ROLL] + frame[SECOND_ROLL] == 10
        if current_frame != 10
          @final_score += scores[current_frame + 1][FIRST_ROLL]
        end
      end

      @final_score += frame.sum
    end

    scores.flatten.reduce(:+)
  end
end
