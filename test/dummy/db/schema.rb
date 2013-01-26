# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130126205518) do

  create_table "salesforce_sync_accounts", :force => true do |t|
    t.string   "salesforce_id"
    t.boolean  "is_deleted"
    t.string   "master_record_id"
    t.string   "master_record"
    t.string   "name"
    t.string   "type"
    t.string   "parent_id"
    t.string   "parent"
    t.text     "billing_street"
    t.string   "billing_city"
    t.string   "billing_state"
    t.string   "billing_postal_code"
    t.string   "billing_country"
    t.text     "shipping_street"
    t.string   "shipping_city"
    t.string   "shipping_state"
    t.string   "shipping_postal_code"
    t.string   "shipping_country"
    t.string   "phone"
    t.string   "fax"
    t.string   "account_number"
    t.string   "website"
    t.string   "sic"
    t.string   "industry"
    t.decimal  "annual_revenue"
    t.integer  "number_of_employees"
    t.string   "ownership"
    t.string   "ticker_symbol"
    t.text     "description"
    t.string   "rating"
    t.string   "site"
    t.string   "owner_id"
    t.string   "owner"
    t.datetime "created_date"
    t.string   "created_by_id"
    t.string   "created_by"
    t.datetime "last_modified_date"
    t.string   "last_modified_by_id"
    t.string   "last_modified_by"
    t.datetime "system_modstamp"
    t.date     "last_activity_date"
    t.boolean  "is_partner"
    t.boolean  "is_customer_portal"
    t.string   "jigsaw"
    t.string   "fog_bridge_plugin__customer_priority__c"
    t.string   "fog_bridge_plugin__sla__c"
    t.string   "fog_bridge_plugin__active__c"
    t.decimal  "fog_bridge_plugin__numberof_locations__c"
    t.string   "fog_bridge_plugin__upsell_opportunity__c"
    t.string   "fog_bridge_plugin__sla_serial_number__c"
    t.date     "fog_bridge_plugin__sla_expiration_date__c"
    t.string   "fog_bridge_plugin__area__c"
    t.boolean  "reference_stor_d__import_into_reference_stor__c"
    t.string   "fog_bridge_plugin__case_title__c"
    t.string   "fog_bridge_plugin__category__c"
    t.string   "fog_bridge_plugin__fog_bugz_case_id__c"
    t.string   "bb_reporting__certificate__c"
    t.string   "bb_reporting__company_name__c"
    t.decimal  "bb_reporting__household_income__c"
    t.string   "bb_reporting__zip__c"
    t.string   "alive_chat__temporary_chat_id__c"
    t.string   "fog_bridge_plugin__ext_id__c"
    t.string   "fog_bridge_plugin__case__c"
    t.string   "fog_bridge_plugin__case__r"
    t.text     "fog_bridge_plugin__text_area__c"
    t.string   "fog_bridge_plugin__fogbugz_status__c"
    t.string   "fog_bridge_plugin__milestone__c"
    t.string   "fog_bridge_plugin__project_name__c"
    t.boolean  "fog_bridge_plugin__modified_from_sf__c"
  end

end
