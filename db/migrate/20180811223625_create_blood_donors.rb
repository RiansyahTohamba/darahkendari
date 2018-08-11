class CreateBloodDonors < ActiveRecord::Migration[5.2]
  def change
    create_table :blood_donors do |t|
      t.string :name
      t.string :phone_number
      t.string :blood_type
      t.string :address

      t.timestamps
    end
  end
end
