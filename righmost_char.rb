class RighmostChar
  @@filename = 'rightmost_char.txt'

  def rightmost_char
    count = 0;
    File.open(@@filename).each_line do |line|
      next if line.chomp.empty?
      pos = -1
      x,y = line.chomp.strip.split(',')
      if x.nil? || y.nil?
       next puts -1
      end
      position = []
      while (pos = x.index(y,pos+1))
        position << pos
      end
      puts position.length >= 1 ? position.max : -1
    end
  end
end

RighmostChar.new.rightmost_char