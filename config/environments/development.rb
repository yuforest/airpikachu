Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable/disable caching. By default caching is disabled.
  # Run rails dev:cache to toggle caching.
  if Rails.root.join('tmp', 'caching-dev.txt').exist?
    config.action_controller.perform_caching = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => "public, max-age=#{2.days.to_i}"
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end

  # Store uploaded files on the local file system (see config/storage.yml for options)
  config.active_storage.service = :local

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = true

  config.action_mailer.perform_caching = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Highlight code that triggered database queries in logs.
  config.active_record.verbose_query_logs = true

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Suppress logger output for asset requests.
  config.assets.quiet = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  # Use an evented file watcher to asynchronously detect changes in source code,
  # routes, locales, etc. This feature depends on the listen gem.
  config.file_watcher = ActiveSupport::EventedFileUpdateChecker

   config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
   config.action_mailer.delivery_method = :smtp
   # config.action_mailer.smtp_settings = {
   #  address: 'smtp.mailgun.org',
   #  port: 587,
   #  domain: 'sandboxa77e5cf9cb31425db2e7e28a3cf1626f.mailgun.org',
   #  authentication: 'plain',
   #  user_name: 'postmaster@sandboxa77e5cf9cb31425db2e7e28a3cf1626f.mailgun.org',
   #  password: '0ae19452824d3ef4f14c220c0b415351-a3d67641-501205c8'
   # }
   config.action_mailer.smtp_settings = {
    address: 'smtp.gmail.com',
    port: 587,
    eneble_starttls_auto: true,
    authentication: 'plain',
    user_name: ENV['MAIL_ADDRESS'],
    password: ENV['MAIL_PASSWORD']
   }

   config.paperclip_defaults = {
    storage: :s3,
    path: ':class/:attachment/:id/:style/:filename',
    s3_host_name: 's3-ap-northeast-1.amazonaws.com',
    s3_credentials: {
      bucket: 'airpikachu100',
      access_key_id: 'AKIAIQWKRZEF6JRWU7NQ',
      secret_access_key: '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',
      s3_region: 'ap-northeast-1'
     }
   }
end
