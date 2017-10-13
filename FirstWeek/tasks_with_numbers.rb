# Task with numbers
class TaskWithNumbers
  @@numbers = %w[
    9461055376 1098029425 1365826266 3651652057
    6639633927 9198606875 3425027805 9600912575
    8826860435 4244213108 8930423446 6975487430
    2956968315 4024720801 8882048673 4897211695
    6089600553 4272319905 4517433227 5565635133
  ]

  def numbers_in_hash # First task
    nums = {}

    @@numbers.each do |element|
      nums[element] = max_digit(element)
    end

    puts nums
  end

  def numbers_in_string # Second task
    max_min_digits = ''

    @@numbers.each do |element|
      max_min_digits << max_digit(element) << min_digit(element)
    end

    print max_min_digits
  end

  def sum_of_numbers # Third task
    sum_of_digits = 0

    @@numbers.map! do |elem|
      element.split('').sort
      sum_of_digits += [
        elem[0].to_i, elem[1].to_i, elem[-1].to_i, elem[-2].to_i
      ].sum
    end

    puts sum_of_digits
  end

  private

  def max_digit(element)
    element.split('').max
  end

  def min_digit(element)
    element.split('').min
  end
end
