Devise.setup do |config|
  # default settings
  require 'devise/orm/active_record'
  config.case_insensitive_keys = [ :email ]
  config.password_length = 8..128
  config.reconfirmable = true
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 10
  config.strip_whitespace_keys = [ :email ]

  # customizations
  config.mailer_sender = "amorphid@captaincoder.io"
  config.mailer = "MyDeviseMailer"
end
