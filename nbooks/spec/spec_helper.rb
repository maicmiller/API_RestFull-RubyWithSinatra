# Importação que valerá para todos os arquivos de testes.
require "faker"
require_relative "base_api.rb"
require_relative "../app.rb"

Book .delete_all

RSpec.configure do |config|

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
    
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true

  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end
