class WordToDigit
  @@filename = 'word_to_digit.txt'

  def word_to_digit
    numbers = {
        zero: 0,
        one: 1,
        two: 2,
        three: 3,
        four: 4,
        five: 5,
        six: 6,
        seven: 7,
        eight: 8,
        nine: 9
    }

    File.open(@@filename).each_line do |line|
      words = line.strip.split(';')
      words.map! {|word| word.to_sym}
      words.each do |word|
        print numbers[word]
      end
      puts
    end
  end
end

WordToDigit.new.word_to_digit