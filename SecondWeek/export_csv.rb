require 'csv'

# The ExportCSV module, add users to csv file in 2 ways
module ExportCSV
  def to_csv
    CSV.open("#{@name}.csv", 'a+') do |csv|
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

      CSV.open('users.csv', 'a+') do |csv|
        csv << %w[Name Age Email]
        users.each do |user|
          csv << [user.name, user.age, user.email]
        end
      end
    end
  end
end
