class CreateSalesforceSyncObjects < ActiveRecord::Migration
  def change
    create_table :salesforce_sync_objects do |t|
      t.string :salesforce_id
      t.string :name
      t.datetime :last_synced_at
      t.text :last_error
      t.string :last_sync_status
      t.datetime :last_successful_synced_at
      t.string :frequency

      t.timestamps
    end
  end
end
