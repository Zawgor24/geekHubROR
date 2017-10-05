require_relative 'delete_trash'

class ThirdProblem

  include DeleteTrash

  def call
    delete_trash
    array_of_letters
  end

  def array_of_letters
    splited_names = []
    letters = []

    @@names.each do |name|
      splited_names = name.split
      letters.push(splited_names[0][0], splited_names[1][0])
    end
    
    uniq_sorted_letters = letters.uniq.sort
    print uniq_sorted_letters
  end
end

ThirdProblem.new.call
