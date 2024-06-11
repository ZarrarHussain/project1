class PostComment < ApplicationRecord
    belongs_to :commentable, :polymorphic => true

end
