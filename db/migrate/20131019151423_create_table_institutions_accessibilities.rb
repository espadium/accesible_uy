class CreateTableInstitutionsAccessibilities < ActiveRecord::Migration
  def change
    create_table :accessibilities_institutions do |t|
      t.references :institution, index: true
      t.references :accessibility, index: true
    end
  end
end
