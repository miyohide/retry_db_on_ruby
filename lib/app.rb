BASE_DIR = __dir__

require 'erb'
require 'yaml'

config = YAML.safe_load(ERB.new(IO.read(File.expand_path('../config/database.yml', BASE_DIR))).result)
p config
