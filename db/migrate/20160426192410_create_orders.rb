class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.datetime :date
      t.string :name
      t.string :email
      t.string :phone
      t.integer :file_number

      t.timestamps null: false
    end
  end
end
