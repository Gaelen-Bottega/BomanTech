def send_simple_message
  RestClient.post "https://api:73967007f424f5189a7621a534c13486-c9270c97-3ff375dc"\
  "@api.mailgun.net/v3/bomantechnologies.com/messages",
  :from => "Excited User <mailgun@bomantechnologies.com>",
  :to => "gaelenrhoads@gmail.com, gaelen@bomantechnologies.com",
  :subject => "Hello",
  :text => "Testing some Mailgun awesomness!"
end