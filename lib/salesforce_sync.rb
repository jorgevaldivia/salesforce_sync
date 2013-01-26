require "salesforce_sync/engine"
require "active_support/dependencies"
require "salesforce_sync/s_object_field_types"
require "salesforce_sync/s_object"
require "databasedotcom"

module SalesforceSync

	def format_salesforce_datetime d
		d.strftime( "%Y-%m-%d %H:%M:%S.0z" )
	end

	def self.client
    client = salesforce_sync_store[ :client ]

    if client.blank?
    	set_client
    	client = salesforce_sync_store[ :client ]
    end

    client
  end

  def self.set_client

  	config = YAML.load_file "#{Rails.root}/config/salesforce_sync.yml"

  	client = ::Databasedotcom::Client.new ({ verify_mode: OpenSSL::SSL::VERIFY_NONE, :client_id => config["client_id"], :client_secret => config["client_secret"] })
		token = client.authenticate :username => config["username"], :password => config["password"]

    salesforce_sync_store[ :client ] = client
  end

  private

  # Thread-safe hash to hold Reach data.
  def self.salesforce_sync_store
    Thread.current[ :salesforce_sync ] ||= {}
  end

end
