class CreatePost2s < ActiveRecord::Migration[6.1]
  def change
    create_table :post2s do |t|
      t.String :name
      t.String :email

      t.timestamps
    end
  end
end
