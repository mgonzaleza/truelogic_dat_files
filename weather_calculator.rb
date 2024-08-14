def day_with_smallest_spread(file_path)
  smallest_spread = Float::INFINITY
  day_with_smallest_spread = nil

  File.open(file_path, 'r') do |file|
    # Skip the header line
    file.readline

    file.each_line do |line|
      line.strip!
      next if line.empty?

      columns = line.split

      # Skip lines where the first column is empty or not a valid number
      next if columns[0].empty? || !valid_integer?(columns[0])

      # Extract the day number, max temperature, and min temperature
      day = columns[0].to_i
      max_temp = clean_numeric_value(columns[1])
      min_temp = clean_numeric_value(columns[2])

      spread = max_temp - min_temp

      if spread < smallest_spread
        smallest_spread = spread
        day_with_smallest_spread = day
      end
    end
  end

  day_with_smallest_spread
end

file_path = 'data/weather.dat'

def clean_numeric_value(value)
  value.gsub(/[^0-9]/, '').to_i
end

def valid_integer?(str)
  /\A\d+\z/.match?(str)
end

puts "The day with the smallest spread is day number: #{day_with_smallest_spread(file_path)}"
