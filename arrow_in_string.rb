class ArrowInString
  @@filename = 'arrow_in_string.txt'

  @@delimiter = '>>-->'
  @@delimiter2 = '<--<<'

  def arrow_in_string
    File.open(@@filename).each_line do |line|
      x = line.strip

      positions = []

      pos = -1

      while (pos = x.index(@@delimiter, pos + 1))
        positions << pos
      end

      pos = -1

      while (pos = x.index(@@delimiter2, pos + 1))
        positions << pos
      end

      puts positions.length
    end
  end
end

ArrowInString.new.arrow_in_string