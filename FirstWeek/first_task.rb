require_relative 'delete_trash'

# The first task
class FirstTask
  include DeleteTrash

  def call
    delete_trash
    hash_of_names
  end

  def hash_of_names
    names_in_hash = {}
    splited_names = []

    @@names.each do |name|
      splited_names = name.split
      names_in_hash[splited_names[0]] = splited_names[1]
    end

    puts names_in_hash
  end
end

FirstTask.new.call
