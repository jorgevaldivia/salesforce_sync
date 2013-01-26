module SalesforceSync
	module SObjectFieldTypes
		# Salesforce to ActiveRecord
		# TODO: some datatypes are left empty. need to decide how to map them
		TYPES = {
			"base64" => "",
			"boolean" => "boolean",
			"byte" => "",
			"date" => "date",
			"datetime" => "datetime",
			"double" => "decimal",
			"int" => "integer",
			"string" => "string",
			"time" => "",
			"anytype" => "",
			"calculated" => "string",
			"combobox" => "string",
			"currency" => "decimal",
			"datacategorygroupreference" => "",
			"email" => "string",
			"encryptedstring" => "string",
			"id" => "string",
			"masterrecord" => "string",
			"multipicklist" => "string",
			"percent" => "float",
			"phone" => "string",
			"picklist" => "string",
			"reference" => "string",
			"textarea" => "text",
			"url" => "string"
		}
	end

	
end