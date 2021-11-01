require 'active_record'

module MyApp
  class Database
    def connect(config, env = 'production')
      ActiveRecord::Base.configurations = config
      ActiveRecord::Base.establish_connection(env.to_sym)
    end
  end
end
