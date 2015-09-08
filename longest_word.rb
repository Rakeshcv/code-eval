class LongestWord
  @@filename = 'longest_words.txt'

  def longest_words
    File.open(@@filename).each_line do |line|
      words = line.strip.split(' ')
      puts words.max_by {|word| word.length}
    end
  end
end

LongestWord.new.longest_words