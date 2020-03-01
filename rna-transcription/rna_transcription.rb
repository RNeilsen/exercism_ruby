class Complement
  BASES = {'A'=>'U', 'C'=>'G', 'G'=>'C', 'T'=>'A'}

  def self.of_dna(input)
    input.chars.map{|b| BASES[b]}.join
  end
end