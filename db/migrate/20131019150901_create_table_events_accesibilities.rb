class CreateTableEventsAccesibilities < ActiveRecord::Migration
  def change
    create_table :accessibilities_events do |t|
      t.references :event, index: true
      t.references :accessibility, index: true
    end
  end
end
