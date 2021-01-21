# HTTParty
require "httparty"
require "httparty/request"
require "httparty/response/headers"

# Rspec
require "rspec/json_expectations"

# JsonMatchers
require "json_matchers/rspec"

# Faker
require "faker"

# Factory_bot
require 'factory_bot'

# Importando variáveis de ambiente
# Não se esqueça de instanciar adequadamente ;)
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/#{ENV['AMBIENTE']}.yml")

JsonMatchers.schema_root = "features/schemas"
