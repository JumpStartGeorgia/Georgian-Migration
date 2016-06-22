RSpec.configure do |config|
  DatabaseCleaner[
    :neo4j,
    connection: {
      type: :server_db,
      path: 'http://db:7474'
    }
  ].strategy = :deletion

  config.before do
    DatabaseCleaner.start
  end

  config.after do
    DatabaseCleaner.clean
  end
end
