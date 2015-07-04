class RollerCoaster
  @@filename = 'roller_coaster.txt'

  def roller_coaster
    File.open(@@filename).each_line do |line|
     line = line.strip

      pos = -1

      positions = []

      while (pos = line.index(/[A-z]/,pos+1))
        positions << pos
      end

     (0...positions.length).each {|i|
        line[positions[i]] = i % 2 == 0? line[positions[i]].upcase : line[positions[i]].downcase
     }

      puts line

    end
  end
end

RollerCoaster.new.roller_coaster