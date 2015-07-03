class MagicNumber
  @@file_name = 'magic_numbers.txt'

  def new_magic
    File.open(@@file_name).each_line do |line|

      x,y = line.split(' ').map(&:to_i)

      count = 0

      while true
        index = []

        arr = x.to_s.split('')

        # for example - 11,222,333
        flag = remove_dups(arr)

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

        break if x == y
        x = x.to_i + 1
      end

      print '-1' if count == 0

      puts
    end
  end

  def remove_dups(arr)
    if arr.uniq.length == 1
      false
    else
      true
    end
  end

end

MagicNumber.new.new_magic

