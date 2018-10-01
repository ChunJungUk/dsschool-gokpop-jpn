class CreateSurveys < ActiveRecord::Migration[5.1]
  def change
    create_table :surveys do |t|
      t.integer :user_id
      t.integer :question_id
      t.boolean :answer1_selected
      t.boolean :answer2_selected
      t.boolean :answer3_selected
      t.boolean :answer4_selected
      t.boolean :answer5_selected
      t.boolean :answer6_selected
      t.boolean :answer7_selected

      t.timestamps
    end
  end
end
