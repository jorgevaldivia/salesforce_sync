class CreateSalesforceSyncSettings < ActiveRecord::Migration
  def change
    create_table :salesforce_sync_settings do |t|

      t.timestamps
    end
  end
end
