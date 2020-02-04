class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :phone_number
      t.string :address
      t.string :ems_number
      t.string :ems_level
      t.string :emergency_contact_name
      t.string :emergency_contact_number
      t.string :email
      t.string :hire_date

      t.timestamps
    end
  end
end
