require 'csv'

# The ExportCSV module, add users to csv file in 2 ways
module ExportCSV
  def to_csv
    CSV.open("#{@name}.csv", 'wb') do |csv|
      csv << %w[Name Age Email]
      csv << [@name, @age, @email]
    end
  end

  def self.included(base)
    base.extend ClassMethods
  end

  # Module contain method which extended by User to add all users
  module ClassMethods
    def users_csv
      users = class_variable_get(:@@users)

      CSV.open('users.csv', 'wb') do |csv|
        csv << %w[Name Age Email]
        users.each do |user|
          csv << [user.name, user.age, user.email]
        end
      end
    end

    def posts_csv
      posts = class_variable_get(:@@posts)

      CSV.open('posts.csv', 'wb') do |csv|
        csv << %w[Title Body Owner]
        posts.each do |post|
          csv << [post.title, post.body, post.owner_email]
        end
      end
    end
  end
end
