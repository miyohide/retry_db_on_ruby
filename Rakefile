require "bundler/setup"
require "active_record"
require "erb"

include ActiveRecord::Tasks

BASE_DIR = File.dirname(__FILE__)

config = YAML::load(ERB::new(File.read(File.join(BASE_DIR, "config", "database.yml"))).result)

DatabaseTasks.env = "development"
DatabaseTasks.db_dir = File.join(BASE_DIR, "db")
DatabaseTasks.database_configuration = config
DatabaseTasks.migrations_paths = File.join(BASE_DIR, "db", "migrate")

task :environment do
  ActiveRecord::Base.configurations = config
  ActiveRecord::Base.establish_connection :development
end

load "active_record/railties/databases.rake"
