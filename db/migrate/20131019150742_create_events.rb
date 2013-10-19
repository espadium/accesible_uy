class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.references :address, index: true
      t.string :name
      t.text :description
      t.datetime :date
      t.string :link

      t.timestamps
    end
  end
end
