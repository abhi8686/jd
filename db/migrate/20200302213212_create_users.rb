class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :phone_number
      t.string :email
      t.string :store_name
      t.string :unique_id
      t.boolean :status
      t.timestamps
    end
  end
end
