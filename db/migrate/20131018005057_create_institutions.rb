class CreateInstitutions < ActiveRecord::Migration
  def change
    create_table :institutions do |t|
      t.string :name
      t.text :description
      t.references :address

      t.timestamps
    end
    add_index :institutions, :address_id
  end
end
