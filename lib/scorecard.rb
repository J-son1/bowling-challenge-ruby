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

      # Adds the bonus for a strike
      if frame[FIRST_ROLL] == 10 && current_frame != 10
        if current_frame == 9
          # Adds the first and second roll in 10th frame
          @final_score += scores[i + 1][FIRST_ROLL] + scores[i + 1][SECOND_ROLL]
        elsif scores[i + 1][FIRST_ROLL] == 10
          # Adds bonus if the next 2 rolls are strikes
          if scores[i + 2][FIRST_ROLL] == 10
            @final_score += 20 
          else
            @final_score += 10 + scores[i + 2][FIRST_ROLL]
          end
        else
          # Adds bonus from the next 2 rolls in the next frame
          @final_score += scores[i + 1][FIRST_ROLL] + scores[i + 1][SECOND_ROLL]
        end
      # Adds the bonus for a spare
      elsif frame[FIRST_ROLL] + frame[SECOND_ROLL] == 10 && current_frame != 10
        @final_score += scores[i + 1][FIRST_ROLL]
      end

      @final_score += frame.sum
    end

    scores.flatten.reduce(:+)
  end
end
