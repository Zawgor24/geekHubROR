require_relative 'delete_trash'

# The fourth task1
class FourthTask
  include DeleteTrash

  def call
    delete_trash
    replace_names
  end

  def replace_names
    @@names.map! do |name|
      puts name.split.reverse.join(' ')
    end
  end
end

FourthTask.new.call
