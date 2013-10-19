class CreateInsterestingLinks < ActiveRecord::Migration
  def change
    create_table :insteresting_links do |t|
      t.string :url
      t.string :label
      t.text :description

      t.timestamps
    end
  end
end
