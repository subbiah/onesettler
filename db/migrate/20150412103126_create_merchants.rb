class CreateMerchants < ActiveRecord::Migration
  def change
    create_table :merchants do |t|
      t.integer :category_id
      t.integer :product_id

      t.timestamps
    end
  end
end
