class AddTableFacilitiesAccessibilities < ActiveRecord::Migration
  def change
    create_table :accessibilities_facilities do |t|

      t.references :accesibility, index: true
      t.references :facility, index: true
    end
  end
end
