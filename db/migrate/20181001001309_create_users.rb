class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :mixpanel_id
      t.string :email

      t.timestamps
    end
  end
end
