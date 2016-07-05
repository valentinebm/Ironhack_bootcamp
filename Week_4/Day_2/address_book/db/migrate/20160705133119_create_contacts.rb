class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :address
      t.integer :phone_number
      t.string :email_address

      t.timestamps
    end
  end
end
