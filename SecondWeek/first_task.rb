data = []
temperatures = {}
counters = {}

40.times do
  data << "#{rand(1..31)}.#{rand(1..12)}  #{rand(-20..40)}"
end

data.each do |elem|
  sptiled_elem = elem.split
  month = sptiled_elem[0].split('.')[1]
  temperature = sptiled_elem[1].to_i

  if temperatures.key?(month)
    temperatures[month] += temperature
    counters[month] += 1
  else
    temperatures[month] = temperature
    counters[month] = 1
  end
end

temperatures.each do |key, value|
  average_temp = value / counters[key]

  puts "Average temperature of #{key} month is #{average_temp}"
end
