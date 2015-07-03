class MagicNumber
  @@file_name = 'magic_numbers.txt'

  def new_magic
    File.open(@@file_name).each_line do |line|

      x,y = line.split(' ')
      a = x.to_i
      b = y.to_i
      count = 0

      while a <= b
        index = []
        flag = true

        arr = x.to_s.split('')

        if arr.uniq.length == 1
         flag = false
        end

        start_index = 0
        mod = 0

        arr.each do
          if !flag
            break
          end

          if arr[mod].to_i == 0
            break
          else
            mod = (mod + arr[mod].to_i) % arr.size
          end

          index << mod

        end

        is_magic = index.detect { |n| index.count(n) > 1 }.nil?

        if start_index == mod && is_magic && flag
          count +=1
          print "#{x} "
        end

        x = x.to_i + 1
        a+=1
      end

      print '-1' if count == 0

      puts
    end
  end

end

MagicNumber.new.new_magic

