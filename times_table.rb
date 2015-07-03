class TimesTable
  def times_table_12

    (1..12).each { |i|
      (1..12).each { |j|
        print (i*j).to_s.rjust(4)
      }
      puts
    }
  end
end

TimesTable.new.times_table_12