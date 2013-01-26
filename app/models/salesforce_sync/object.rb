module SalesforceSync
  class Object < ActiveRecord::Base
    attr_accessible :frequency, :last_error, :last_successful_synced_at, :last_sync_status, :last_synced_at, :name, :salesforce_id
  end
end
