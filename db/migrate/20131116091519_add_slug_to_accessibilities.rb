class AddSlugToAccessibilities < ActiveRecord::Migration
  def change
    add_column :accessibilities, :slug, :string
    add_index :accessibilities, :slug, unique: true

    Accessibility.all.each do |a|
      a.slug = nil
      a.save
    end
  end
end
