class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :itemCatagory
      t.string :picPath
      t.string :videoPath
      t.text :detail
      t.numeric :price
      t.references :shop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
