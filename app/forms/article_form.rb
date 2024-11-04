# app/forms/article_form.rb
class ArticleForm
  include ActiveModel::Model

  # Attributes for the form
  attr_accessor :title, :body

  # Validations (similar to what you would use in an ActiveRecord model)
  validates :title, presence: true
  validates :body, presence: true

  # Initialize the form with default or given values
  def initialize(attributes = {})
    @title = attributes[:title]
    @body = attributes[:body]
  end

  # Method to simulate saving or further actions
  def save
    if valid?
      # You can perform actions here like persisting the data to the database
      puts "Article is valid with title: #{@title} and body: #{@body}"
      return true
    else
      return false
    end
  end
end
