class MixedContent
  @@filename = 'mixed_content.txt'

  def mixed_content
    File.open(@@filename).each_line do |line|
      words = line.strip.split(',')

      numbers = []
      letters = []

      words.each do |word|
        numbers.push(word) if numeric?(word)
        letters.push(word) if letter?(word)
      end

      puts letters.join(',') << '|' << numbers.join(',') unless  letters.empty? || numbers.empty?
      puts numbers.join(',') if letters.empty?
      puts letters.join(',') if numbers.empty?
    end
  end

  def letter?(lookAhead)
    lookAhead =~ /[[:alpha:]]/
  end

  def numeric?(lookAhead)
    lookAhead =~ /[[:digit:]]/
  end
end

MixedContent.new.mixed_content

