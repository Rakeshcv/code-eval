class StringMask
  @@file_name = 'string_mask.txt'
  def string_mask
    File.open(@@file_name).each_line do |line|
      x,y = line.strip.split(' ')

      pos = -1

      positions = []

      while (pos = y.index('1',pos+1))
        positions << pos
      end

      (0...positions.length).each { |i|
        x[positions[i]] = x[positions[i]].upcase
      }

      puts x

    end
  end
end

StringMask.new.string_mask