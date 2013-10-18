class AddInstitutionDisabilityTypes < ActiveRecord::Migration
  def change
    create_table :accessibility_types_institutions do |t|
      t.integer :institution_id
      t.integer :accessibility_type_id
    end
  end
end
