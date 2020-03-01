class HighScores
  attr_reader :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    @scores[-1]
  end

  def personal_best
    @scores.sort[-1]
  end

  def personal_top_three
    @scores.sort[[-@scores.length,-3].max..-1].reverse
  end

  def latest_is_personal_best?
    latest == personal_best
  end
end