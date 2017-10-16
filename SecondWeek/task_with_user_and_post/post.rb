require_relative 'export_csv'

# The class post
class Post
  attr_accessor :title, :body, :owner_email

  include ExportCSV

  @@posts = []

  def initialize(options = {})
    @title = options[:title]
    @body = options[:body]
    @owner_email = options[:owner_email]
  end

  def add_post
    @@posts << self
  end

  def remove_post
    @@posts.delete(self)
  end

  def update_post(options = {})
    @title = options[:title] if options[:title]
    @body = options[:body] if options[:body]
    @owner_email = options[:owner_email] if options[:owner_email]
  end

  def to_s
    "Title: #{@title}, Body: #{@body}, Owner's email: #{@owner_email}"
  end

  def self.all_posts
    @@posts.each { |post| puts post }
  end
end

first_post = Post.new(title: 'first',
                      body: 'first post',
                      owner_email: 'first@gmail.com')
second_post = Post.new(title: 'second',
                       body: 'second post',
                       owner_email: 'second@gmail.com')
third_post = Post.new(title: 'third',
                      body: 'third post',
                      owner_email: 'third@gmail.com')
fourth_post = Post.new(title: 'fourth',
                       body: 'fourth post',
                       owner_email: 'fourth@gmail.com')
fifth_post = Post.new(title: 'fifth',
                      body: 'fifth post',
                      owner_email: 'fifth@gmail.com')

first_post.add_post
second_post.add_post
third_post.add_post
fourth_post.add_post
fifth_post.add_post

third_post.remove_post

second_post.update_post(title: 'SECOND', body: 'Second Post')

Post.posts_csv

Post.all_posts
