class CleanUpWords
  @@filename = 'cleanupwords.txt'

  def clean_up_words
    File.open(@@filename).each_line do |line|
      puts line.strip.downcase.gsub(/[^a-z]+/, ' ').strip
    end
  end
end

CleanUpWords.new.clean_up_words