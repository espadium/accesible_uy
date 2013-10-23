class ChangeInsterestingLinksToInterestingLinks < ActiveRecord::Migration
  def change
    rename_table :insteresting_links, :interesting_links
  end
end
