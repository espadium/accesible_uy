class CreateAccessibilityTypes < ActiveRecord::Migration
  def change
    create_table :accessibility_types do |t|
      t.string :name
      t.string :description
      t.string :organization_link

      t.timestamps
    end
  end
end
