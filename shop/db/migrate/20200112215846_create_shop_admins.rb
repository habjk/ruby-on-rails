class CreateShopAdmins < ActiveRecord::Migration[6.0]
  def change
    create_table :shop_admins do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :password
      t.references :shop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
