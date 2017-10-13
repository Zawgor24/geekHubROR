require_relative 'delete_trash'

# The second task
class SecondTask
  include DeleteTrash

  def call
    delete_trash
    hash_of_names
  end

  def hash_of_names
    names_in_hash = {}

    @@names.map! do |name|
      names_in_hash[name[0]] = name.split[1][1]
    end

    puts names_in_hash
  end
end

SecondTask.new.call
