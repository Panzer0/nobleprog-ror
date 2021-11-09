class CreatePostFs < ActiveRecord::Migration[6.1]
  def change
    create_table :post_fs do |t|
      t.string :title
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
