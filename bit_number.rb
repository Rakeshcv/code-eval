class BitNumber
    @@filename = 'bit_number.txt'
    def bit_number
      File.open(@@filename).each_line do |line|
        x,y,z = line.strip.split(',')
        bits = x.to_i.to_s(2)
        puts bits[bits.length - y.to_i] == bits[bits.length - z.to_i]
      end
  end
end


BitNumber.new.bit_number