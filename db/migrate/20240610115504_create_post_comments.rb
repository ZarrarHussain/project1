class CreatePostComments < ActiveRecord::Migration[7.1]
  def change
    create_table :post_comments do |t|
      t.text :content
      t.string :commentable_id
      t.string :integer
      t.string :commentable_type

      t.timestamps
    end
  end
end
