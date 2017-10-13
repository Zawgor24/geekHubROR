require_relative 'delete_trash'

# The first task
class ThirdTask
  include DeleteTrash

  def call
    delete_trash
    array_of_letters
  end

  def array_of_letters
    letters = []

    @@names.map! do |name|
      letters.push(name[0][0], name.split[1][0])
    end

    uniq_sorted_letters = letters.uniq.sort
    print uniq_sorted_letters
  end
end

ThirdTask.new.call
