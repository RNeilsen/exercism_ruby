# frozen_string_literal: true

class Acronym
  def self.abbreviate(input)
    input.scan(/\b[a-zA-Z]/).join.upcase
  end
end
