class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :author
      t.string :content
      t.string :timestamp

      t.timestamps
      t.references :school, null: false, index:true
    end
  end
end
