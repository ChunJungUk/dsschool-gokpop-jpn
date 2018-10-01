class CreateSurveyTexts < ActiveRecord::Migration[5.1]
  def change
    create_table :survey_texts do |t|
      t.integer :question_id
      t.string :question_text
      t.string :answer1_text
      t.string :answer2_text
      t.string :answer3_text
      t.string :answer4_text
      t.string :answer5_text
      t.string :answer6_text
      t.string :answer7_text
      t.boolean :is_active

      t.timestamps
    end
  end
end
