require "date"
numbers = [
  2007, 2002, 2011, 12, 2010, 2, 16, 24, 12, 2007,
  10, 24, 14, 8, 2002, 3, 6, 2015, 2007, 2001, 18,
  6, 6, 26, 12, 16, 2003, 3, 2, 1
]

true_data = []
count = 0

numbers.each do |year|
  numbers.each do |month|
    if month < 13
      numbers.each do |day|
        if day < 32
          true_data << Date.new(year, month, day).to_s if Date.new(year, month, day)
        end
      end
    end 
  end
end
puts true_data.length