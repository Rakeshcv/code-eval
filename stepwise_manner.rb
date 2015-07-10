class StepwiseManner

  @@file_name = 'step_wise.txt'

  def step_wise_manner
    File.open(@@file_name).each_line do |line|
      next if line.strip.empty?
      word =  line.strip.split(' ').sort! {|a,b| b.length <=> a.length }

      letter = word[0].split('')

      result = ''
      letter.each_with_index { |l,i |
        result << '*' * i + l + ' '
      }

      puts result

    end
  end
end

StepwiseManner.new.step_wise_manner