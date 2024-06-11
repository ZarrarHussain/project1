class Article < ApplicationRecord
    belongs_to :post
    has_many :post_comments, :as => :commentable

end
