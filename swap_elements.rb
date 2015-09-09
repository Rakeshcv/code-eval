class SwapElements
  @@filename = 'swap_elements.txt'

  def swap_elements
    File.open(@@filename).each_line do |line|
      swap_elements, positions_elements= line.strip.split(':')
      swap_elements = swap_elements.split(' ')
      positions = positions_elements.strip.split(',')

      positions.each do |position|
        position.strip!
        index1, index2 = position.strip.split('-').map(&:to_i)
        element1 = swap_elements[index1]
        element2 = swap_elements[index2]
        swap_elements[index1] = element2
        swap_elements[index2] = element1
      end

      puts swap_elements.join(' ')
    end
  end
end

SwapElements.new.swap_elements