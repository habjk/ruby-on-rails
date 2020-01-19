class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.string :catagory
      t.string :name
      t.text :detail
      t.string :location

      t.timestamps
    end
  end
end
