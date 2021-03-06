Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  #Access the environment variables in your app
  GMAIL_USERNAME = Rails.application.secrets.GMAIL_USERNAME
  GMAIL_PASSWORD = Rails.application.secrets.GMAIL_PASSWORD

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
  # configuration for file upload to aws
  # tutorial: https://vimeo.com/278727014
  config.active_storage.service = :amazon_dev
  Rails.application.routes.default_url_options[:host] = 'localhost:3000'

  # ActionMailer Config
  config.action_mailer.default_url_options = { :host => "localhost:3000" }
  # Setup for production - deliveries, no errors raised
  config.action_mailer.perform_deliveries = true
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.default :charset => "utf-8"

  ActionMailer::Base.delivery_method = :smtp
    # SMTP settings for gmail
  ActionMailer::Base.smtp_settings = {
     :address              => "smtp.sendgrid.net",
     :port                 => "587",
     :domain               => "heroku.com",
     :user_name            => Rails.application.secrets.SENDGRID_USERNAME,
     :password             => Rails.application.secrets.SENDGRID_PASSWORD,
     :authentication       => "plain",
     :enable_starttls_auto => true
    }
  config.action_mailer.perform_caching = false


  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Highlight code that triggered database queries in logs.
  config.active_record.verbose_query_logs = true


  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  # Use an evented file watcher to asynchronously detect changes in source code,
  # routes, locales, etc. This feature depends on the listen gem.
  config.file_watcher = ActiveSupport::EventedFileUpdateChecker
end
