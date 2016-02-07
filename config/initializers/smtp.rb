ActionMailer::Base.smtp_settings = {
  :address        => ENV["SMTP_ADDRESS"],
  :port           => ENV["SMTP_PORT"],
  :authentication => ENV["SMTP_AUTHENTICATION"],
  :user_name      => ENV["SMTP_USERNAME"],
  :password       => ENV['SMTP_PASSWORD'],
  :domain         => ENV['SMTP_DOMAIN'],
  :enable_starttls_auto => true
}
