class SpaceAge
  YEAR_RATIO = {mercury: 0.2408467,
                venus:   0.61519726, 
                earth:   1.0, 
                mars:    1.8808158,
                jupiter: 11.862615,
                saturn:  29.447498,
                uranus:  84.016846,
                neptune: 164.79132}

  def initialize(age_in_secs)
    @age_in_earth_years = age_in_secs.to_f / (60*60*24*365.25)
    
  end

  YEAR_RATIO.each do |planet, ratio|
    define_method "on_#{planet}" do
      (@age_in_earth_years / ratio).round 2
    end
  end
end
