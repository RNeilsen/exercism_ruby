class ResistorColorDuo
  COLORS = %w(black brown red orange yellow green blue violet grey white)

  def self.value(bands)
    10 * COLORS.find_index(bands[0]) + COLORS.find_index(bands[1])
  end
end