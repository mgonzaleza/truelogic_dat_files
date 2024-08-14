def remove_html_tags(line)
  line.gsub(/<[^>]*>/, '')
end

def parse_line(line)
  fields = line.split
  team_name = fields[1..-9].join('_')  # Handle team names with spaces
  played, won, lost, drawn = fields[2..5].map(&:to_i)
  goals_for, goals_against = fields.values_at(6, 8).map(&:to_i)
  points = fields[9].to_i

  { team: team_name, played: played, won: won, lost: lost, drawn: drawn,
    for: goals_for, against: goals_against, points: points }
end

soccer_table = []

File.open('data/soccer.dat', 'r') do |file|
  file.each_line do |line|
    clean_line = remove_html_tags(line)

    # Skip the header line and any lines with dashes
    next if clean_line.strip.empty? || clean_line.include?('Team') || clean_line.include?('---')

    soccer_table << parse_line(clean_line)
  end
end

team_with_smallest_diff = soccer_table.min_by do |team|
  (team[:for] - team[:against]).abs
end

puts "The team with the smallest difference in 'for' and 'against' goals is: #{team_with_smallest_diff[:team]}."
