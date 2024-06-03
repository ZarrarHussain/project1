# app/models/comment.rb

class Comment < ApplicationRecord
    has_many :article # Assuming comments belong to articles
  
    validates :content, presence: true # Example validation, adjust as needed
  end
  