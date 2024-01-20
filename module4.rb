
require 'optparse'

module Loan
  def self.loan_criteria(gdp)
    gdp > 500_000_000_000
  end
end

module UNCouncil
  def self.seat_eligibility(state)
    ['Developed', 'Developing'].include?(state)
  end
end

module War
  def self.can_win(army_strength)
    army_strength == 'Strong'
  end
end

options = {}
OptionParser.new do |opts|

  opts.on("--country COUNTRY_NAME", "Specify the country name") do |country_name|
    options[:country_name] = country_name
  end
end.parse!

if options[:country_name]
  country_data = {
    'India' => { 'GDP' => 3_180_000_000_000, 'State' => 'Developing', 'ArmyStrength' => 'Moderate', 'Population' => 1_407_600_000},  
    'USA' => { 'GDP' => 23_430_000_000_000, 'State' => 'Developed', 'ArmyStrength' => 'Very Strong', 'Population' => 331_900_000 },
    'Pakistan' => { 'GDP' => 348_260_000_000, 'State' => 'Undevelop', 'ArmyStrength' => 'weak', 'Population' => 231_400_000}
  }

  country_info = country_data[options[:country_name]]

  if country_info
    puts "Country: #{options[:country_name]}"
    puts "GDP: #{country_info['GDP']}"
    puts "State: #{country_info['State']}"
    puts "Population: #{country_info['Population']}"
    puts "Army Strength: #{country_info['ArmyStrength']}"

    #to display outputs
    puts "Loan Eligibility: #{Loan.loan_criteria(country_info['GDP']) ? 'Yes' : 'No'}"
    puts "UN Security Council Eligibility: #{UNCouncil.seat_eligibility(country_info['State']) ? 'Yes' : 'No'}"
    puts "Can Win War: #{War.can_win(country_info['ArmyStrength']) ? 'Yes' : 'No'}"
  else
    puts "Country not found."
  end
else
  puts "Give country name USA, India, Pakistan"
end


