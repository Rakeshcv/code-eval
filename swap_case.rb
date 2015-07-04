class SwapCase
  @@file_name = 'swap_case.txt'
  def swap_case
      File.open(@@file_name).each_line do |line|
        (0...line.length).each { |i|
          line[i] = line[i] == line[i].upcase ? line[i].downcase : line[i].upcase
        }

        puts line
      end
  end
end

SwapCase.new.swap_case