class Post < ApplicationRecord
    has_one_attached :image
    belongs_to :user
    validates :title, presence: true
    validates :body, presence: true
    has_many :comments, :as => :commentable
    def display_image
        image.variant(resize_to_limit: [500, 500])
      end
end
