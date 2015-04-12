class CreateProfileQuestionMasters < ActiveRecord::Migration
  def change
    create_table :profile_question_masters do |t|
      t.integer :section_id
      t.string :questionname
      t.integer :min_length
      t.integer :max_length
      t.string :question_type

      t.timestamps
    end
  end
end
