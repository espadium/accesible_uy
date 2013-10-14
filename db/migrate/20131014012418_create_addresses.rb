class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :lat
      t.string :lon
      t.string :literal
      t.string :street_name
      t.string :street_number
      t.string :corner_street_name

      t.timestamps
    end
  end
end
