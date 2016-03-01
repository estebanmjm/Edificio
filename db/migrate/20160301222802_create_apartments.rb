class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.integer :number
      t.integer :floor
      t.string :tower
      t.integer :inhabitants

      t.timestamps null: false
    end
  end
end
