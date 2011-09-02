#Gmail SMTP server setup
  ActionMailer::Base.smtp_settings = {
    :address => "smtp.gmail.com",
    :enable_starttls_auto => true,
    :port => 587,
    :authentication => :plain,
    :user_name =>  "satish@auxir.com",
    :password => '94234323'
  }
 
ActionMailer::Base.default_url_options[:host] = "localhost:3000"
