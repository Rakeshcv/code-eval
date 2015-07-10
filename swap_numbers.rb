class SwapNumbers

  @@file_name = 'swap_number.txt'

  def swap_numbers_between_words
    File.open(@@file_name).each_line do |line|
      result = ''
      words = line.split(" ")

      words.each do |word|
        first_letter = word[0]
        word[0] = word[word.length-1]
        word[word.length-1] = first_letter
        result << "#{word[0]}#{word[1...word.size-1]}#{word[word.length-1]} "

      end
      puts result
    end
  end
end

SwapNumbers.new.swap_numbers_between_words