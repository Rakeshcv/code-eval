class LongestUniqNumbers
  @@filename = 'longest_uniq_numbers.txt'

  def longest_uniq_numbers
    File.open(@@filename).each_line do |line|
      numbers = line.strip.split(' ')
      uniq_number = numbers.select{|number| numbers.count(number) == 1}
      if uniq_number.length >= 1
        puts numbers.index(uniq_number.min) + 1
      else
        puts 0
      end
    end
  end
end


LongestUniqNumbers.new.longest_uniq_numbers