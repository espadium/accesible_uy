class CreateAccessiblePlaces < ActiveRecord::Migration
  def change
    create_table :accessible_places do |t|
      t.references :address
      t.references :accessibility_type
      t.string :name
      t.text :extra_info

      t.timestamps
    end
    add_index :accessible_places, :address_id
    add_index :accessible_places, :accessibility_type_id
  end
end
