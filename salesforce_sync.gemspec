$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "salesforce_sync/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "salesforce_sync"
  s.version     = SalesforceSync::VERSION
  s.authors     = ["Jorge Valdivia", "Garrett Heinlen"]
  s.email       = ["jorge@valdivia.me", "heinleng@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "Streamline syncing of Salesforce data into a Rails app."
  s.description = "TODO: Description of SalesforceSync."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.6"
  s.add_dependency "databasedotcom", "1.3.2"

  s.add_development_dependency "sqlite3"
end
