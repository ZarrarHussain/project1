class Post < ApplicationRecord
    has_one_attached :image
    belongs_to :user
    validates :title, presence: true
    validates :body, presence: true
    def display_image
        image.variant(resize_to_limit: [500, 500])
      end
end
