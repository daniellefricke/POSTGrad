class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :commentor
      t.string :text

      t.timestamps
      t.references :post, null: false, index:true
    end
  end
end
