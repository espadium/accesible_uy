class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :literal
      t.string :street_name
      t.float :lat
      t.float :long
      t.string :street_intersection
      t.string :street_number

      t.timestamps
    end
  end
end
