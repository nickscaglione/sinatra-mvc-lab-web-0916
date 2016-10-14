class PigLatinizer

  def piglatinize(word)
    vowels = ['a','e','i','o','u']
    removed_from_start = ""
    if vowels.include?(word[0].downcase)
      word + 'way'
    else
      until vowels.include?(word[0].downcase) do
        removed_from_start += word[0]
        word[0] = ""
      end
      word + removed_from_start + 'ay'
    end
  end

  def to_pig_latin(phrase)

    phrase.split(" ").map do |word|
      piglatinize(word)
    end.join(" ")

  end
end
