class MyDeviseMailer < Devise::Mailer
  helper :application

  def resource
    reset_password_url
    super
  end

  def domain
    ENV["email_domain"]
  end

  def token
    @resource.reset_password_token
  end

  def reset_password_url
    @reset_password_url = "http://#{domain}/users/password/edit?reset_password_token=#{token}"
  end
end

# http://localhost:3000/users/password/edit?reset_password_token=8oTpzBk3yQ1J99CPqLXv
