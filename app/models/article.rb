class Article < ApplicationRecord
    belongs_to :post
    belongs_to :commentable, :polymorphic => true

end
