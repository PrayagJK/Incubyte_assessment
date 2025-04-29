class StringCalculator
    def self.add(numbers)
        return 0 if numbers.strip.empty?
        
        delimiter = ","
        if numbers.start_with?("//")
          header, numbers = numbers.split("\n", 2) 
          delimiter = header[2]
        end

        #sperating numbers based on delimeter but also replacing newline with delimiter
        numbers = numbers.gsub("\n", delimiter)
        nums = numbers.split(delimiter).map(&:to_i)

        negatives = nums.select { |n| n < 0 }
        #check for negatives and raise error if there are any negative numbers
        unless negatives.empty?
            raise ArgumentError, "negative numbers not allowed: #{negatives.join(', ')}"
        end

        nums.sum #final sum return after checking for negatives
    end
end
