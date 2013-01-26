require 'rails/generators'

module SalesforceSync
	class SObject

		include ::SalesforceSync::SObjectFieldTypes

		attr :object_class

		def initialize name
			@name = name
			@client = ::SalesforceSync.client
			@object_class = @client.materialize( @name )
		end

		def self.convert_to_active_record_type salesforce_type
			::SalesforceSync::SObjectFieldTypes::TYPES[salesforce_type.downcase]
		end

		def active_record_table_name
			"#{salesforce_sync}_#{@name}".pluralize
		end

		def model_name
			"SalesforceSync::#{@name}"
		end

		def model
			self.model_name.classify.constantize
		end

		def attributes
			attr_map = []

			@object_class.attributes.each do | attribute |
				salesforce_type = @object_class.field_type( attribute )
				active_record_type = ::SalesforceSync::SObject.convert_to_active_record_type( salesforce_type )
				active_record_name = attribute.underscore == "id" ? "salesforce_id" : attribute.underscore

				attr_map.push({ salesforce_name: attribute, active_record_name:active_record_name,
					salesforce_type: salesforce_type, active_record_type: active_record_type })
			end

			attr_map
		end

		def generate_model
			Rails::Generators.invoke( "active_record:model", [self.model_name, self.format_fields_for_generator, "--migration=true"] )
		end

		def sync
			records = @object_class.all
			save_records_locally records

			while records.next_page?
				records = records.next_page
				save_records_locally
			end

		end

		def records_since_last_sync
			last_sync_date = SalesforceSync::Object.find_by_name( @name ).last_synced_at

			if last_sync_date.present?
				records = @object_class.where( "lastmodifieddate >= #{ ::SalesforceSync.format_salesforce_datetime(last_sync_date) }" )
			else
				records = @object_class.all
			end

			records
		end

		def save_records_locally records
			records.each do | record |
				local_record = self.model.new

				self.attributes.each do | attribute |
					local_record[ attribute[:active_record_name] ] = record[ attribute[:salesforce_name] ]
				end

				local_record.save
			end
		end

		protected

		def format_fields_for_generator
			self.attributes.map{ |x| "#{x[:active_record_name]}:#{x[:active_record_type]}" }
		end
	end
end