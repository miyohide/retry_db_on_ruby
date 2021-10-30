module MyApp
  class Database
    def self.connect(config, env = 'production')
      p config
    end
  end
end
