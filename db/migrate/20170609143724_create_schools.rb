class CreateSchools < ActiveRecord::Migration[5.1]
  def change
    create_table :schools do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :url
      t.string :img_url

      t.timestamps
    end
  end
end
