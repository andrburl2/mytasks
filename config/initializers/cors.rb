Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://remember-the-tasks.herokuapp.com'

    resource '*',
      headers: :any,
      methods: [:get, :post, :patch]
  end
end