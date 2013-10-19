class CreateInstitutions < ActiveRecord::Migration
  def change
    create_table :institutions do |t|
      t.string :name
      t.references :address, index: true
      t.string :email
      t.string :web
      t.text :description

      t.timestamps
    end
  end
end
