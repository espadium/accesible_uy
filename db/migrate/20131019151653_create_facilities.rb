class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
      t.string :name
      t.text :description
      t.references :address, index: true

      t.timestamps
    end
  end
end
