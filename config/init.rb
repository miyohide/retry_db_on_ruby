require "active_record"
require "active_support/time"
require "erb"

CONFIG_DIR = File.dirname(__FILE__)

config = YAML::load(ERB::new(File.read(File.join(CONFIG_DIR, "database.yml"))).result)

Time.zone = "Tokyo"
app_env = ENV['APP_ENV'] || 'development'
ActiveRecord::Base.establish_connection(config[app_env])
ActiveRecord::Base.time_zone_aware_attributes = true

PROJECT_ROOT_DIR = File.expand_path("..", CONFIG_DIR)

model_files = File.join(PROJECT_ROOT_DIR, "app", "models", "**", "*.rb")
Dir.glob(model_files).map do |f|
  require f
end
