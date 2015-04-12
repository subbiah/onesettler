class CreateProductProfiles < ActiveRecord::Migration
  def change
    create_table :product_profiles do |t|
      t.string :name

      t.timestamps
    end
  end
end
