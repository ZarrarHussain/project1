class AddAdditionalContentToArticles < ActiveRecord::Migration[7.1]
  def change
    add_column :articles, :additional_content, :text
  end
end
