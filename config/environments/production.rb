Blog::Application.configure do
  # Default settings
  config.action_controller.perform_caching = true
  config.active_support.deprecation = :notify
  config.assets.digest = true
  config.assets.js_compressor = :uglifier
  config.assets.version = '1.0'
  config.cache_classes = true
  config.consider_all_requests_local = false
  config.i18n.fallbacks = true
  config.log_formatter = ::Logger::Formatter.new
  config.log_level = :info
  config.eager_load = true
  config.serve_static_assets = false

  # False by default.  True fixed a bug with destroy actions in entries.
  # https://github.com/amorphid/blog/tree/a58d389b73554ddfe272154b300f44d25f854092
  config.assets.compile = true

  # sending email
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    :address              => "smtp.gmail.com",
    :port                 => 587,
    :domain               => ENV["email_domain"],
    :user_name            => ENV["email_username"],
    :password             => ENV["email_password"],
    :authentication       => "plain",
    :enable_starttls_auto => true
  }
end
