# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :port           => ENV['MAILGUN_SMTP:PORT'],
  :address        => ENV['MAILGUN_SMTP:SERVER'],
  :user_name      => ENV['MAILGUN_SMTP:LOGIN'],
  :password       => ENV['MAILGUN_SMTP:PASSWORD'],
  :domain         => 'enigmatic-harbor-35040.herokuapp.com',
  :authentication => :plain,
}
ActionMailer::Base.delivery_method = :smtp