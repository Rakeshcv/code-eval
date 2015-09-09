class MaxRangeSum

  @@filename = 'max_range_sum.txt'

  def max_range_sum
    File.open(@@filename).each_line do |line|
      days, gain_or_loss = line.strip.split(';')
      gain_or_loss =  gain_or_loss.split(' ').map(&:to_i)

      max_gain = []
      0.upto(gain_or_loss.length - days.to_i) do |x|
        sum = 0;
        x.upto(x.to_i + (days.to_i - 1)) do |y|
          # print y
          sum = sum + gain_or_loss[y]
        end
        max_gain.push(sum)
      end
      puts (max_gain.max >= 1) ? max_gain.max : 0
    end
  end
end

MaxRangeSum.new.max_range_sum