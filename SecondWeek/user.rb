require_relative 'export_csv'

# The user class
class User
  include ExportCSV

  @@users = []

  attr_accessor :name, :age, :email

  def initialize(name, age, email)
    @name = name
    @age = age
    @email = email
  end

  def add_user
    @@users.push(self)
  end

  def remove_user
    @@users.delete(self)
  end

  def update_user(name: @name, age: @age, email: @email)
    @name = name if name
    @age = age if age
    @email = email if email
  end

  def to_s
    "Name: #{@name.capitalize}, Age: #{@age}, Email: #{@email}"
  end

  def self.all_users
    @@users.each do |user|
      puts user
    end
  end
end

igor = User.new('igor', 21, 'zawgorodskiy.2012@gmail.com')
egor = User.new('egor', 22, 'egorgor@gmail.com')
max = User.new('max', 31, 'max@gmail.com')
ruslan = User.new('ruslan', 22, 'jambo29@gmail.com')
zheka = User.new('zheka', 22, 'mixas@gmail.com')

egor.add_user
igor.add_user
max.add_user
ruslan.add_user
zheka.add_user

egor.remove_user

max.update_user(email: 'maximus132@gmail.com', age: 21)

igor.to_csv
ruslan.to_csv

User.users_csv

User.all_users
