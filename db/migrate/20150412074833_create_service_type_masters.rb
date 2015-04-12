class CreateServiceTypeMasters < ActiveRecord::Migration
  def change
    create_table :service_type_masters do |t|

      t.timestamps
    end
  end
end
