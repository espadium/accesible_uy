class AddShortcutToAccessibility < ActiveRecord::Migration
  def change
    add_column :accessibilities, :shortcut, :string
  end
end
