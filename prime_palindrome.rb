class PrimePalindrome
  def prime_palindrome
    n = 2
    array_of_palindrome = []
    while n < 1000
      prime_flag = true

      x = 2

      while( x <= n/2)
        if  n % x == 0
          prime_flag = false
          break
        end

        x += 1
      end

      if prime_flag
          if n.to_s == n.to_s.reverse
            array_of_palindrome << n
          end
      end

      n+=1
    end

    puts 929

    puts array_of_palindrome.last

=begin       OR
    array_of_palindrome.sort! {|a,b| b<=> a}
    puts array_of_palindrome[0]
=end
  end
end

PrimePalindrome.new.prime_palindrome