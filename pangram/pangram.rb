class Pangram
  def self.pangram? input
    [*'a'..'z']
      .map{ |c| input.downcase.chars.include? c }
      .reduce(:&)
  end
end
