class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.references :address, index: true
      t.string :name
      t.string :description
      t.string :link
      t.string :tel

      t.timestamps
    end
  end
end
