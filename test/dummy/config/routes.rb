Rails.application.routes.draw do

  mount SalesforceSync::Engine => "/salesforce_sync"
end
