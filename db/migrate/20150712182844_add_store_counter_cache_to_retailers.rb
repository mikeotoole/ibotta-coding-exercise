class AddStoreCounterCacheToRetailers < ActiveRecord::Migration
  def self.up
    add_column :retailers, :stores_count, :integer, default: 0, null: false
    add_index :retailers, :stores_count

    Retailer.find_each do |r|
      Retailer.update_counters r.id, stores_count: r.stores.count
    end
  end

  def self.down
    remove_index :retailers, :stores_count
    remove_column :retailers, :stores_count
  end
end
