class CreateCategoryMasters < ActiveRecord::Migration
  def change
    create_table :category_masters do |t|
      t.string :categoryname

      t.timestamps
    end
  end
end
