class PrimeNumber
  @@filename = 'prime.txt'
  def prime_number
      File.open(@@filename).each_line do |line|
        print print_prime(line.to_i).join(',')
        puts
      end
  end

  def print_prime(i)
    result = []
    count = 1
    start = 2
    while true
      prime_flag = true

      x = 2

      while( x <= start/2)
        if  start % x == 0
          prime_flag = false
          break
        end

        x += 1
      end

      if prime_flag
        result << start
      end

      count+=1
      break if count == i

      start += 1
    end
    result
  end
end

PrimeNumber.new.prime_number