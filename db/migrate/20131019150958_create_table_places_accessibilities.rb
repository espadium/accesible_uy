class CreateTablePlacesAccessibilities < ActiveRecord::Migration
  def change
    create_table :accessibilities_places do |t|
      t.references :place, index: true
      t.references :accessibility, index: true
    end
  end
end
