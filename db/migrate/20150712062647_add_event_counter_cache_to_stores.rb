class AddEventCounterCacheToStores < ActiveRecord::Migration
  def self.up
    add_column :stores, :events_count, :integer, default: 0, null: false
    add_index :stores, :events_count

    Store.find_each do |s|
      Store.update_counters s.id, events_count: s.events.count
    end
  end

  def self.down
    remove_index :stores, :events_count
    remove_column :stores, :events_count
  end
end
