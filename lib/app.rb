BASE_DIR = __dir__

require 'erb'
require 'yaml'
require_relative './my_app/database'

config = YAML.safe_load(ERB.new(IO.read(File.expand_path('../config/database.yml', BASE_DIR))).result)
MyApp::Database.new.connect(config)
