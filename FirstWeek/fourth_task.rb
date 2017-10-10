require_relative 'delete_trash'

class FourthTask

  include DeleteTrash

  def call
    delete_trash
    replace_names
  end

  def replace_names
    splited_names = []

    @@names.each do |name|
      splited_names = name.split.reverse.join(' ')
      puts splited_names
    end
  end
end

FourthTask.new.call
