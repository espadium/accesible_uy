class CreateTableSubscriptionsAccesibilities < ActiveRecord::Migration
  def change
    create_table :accessibilities_subscriptions do |t|
      t.references :subscription, index: true
      t.references :accessibility, index: true
    end
  end
end
