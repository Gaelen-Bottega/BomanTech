class ContactMailer < ApplicationMailer
  require 'mailgun'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.contact_us.subject
  #
  def contact_us(contact)
  	@name = contact.name
  	@email = contact.email
  	@job_position = contact.job_position
  	@company_name = contact.company_name
  	@phone = contact.phone
    @body = contact.body

    mg_client = Mailgun::Client.new ENV['mailgun_secret_api_key']
    contact_params = {:from => contact.email,
                      :to => ENV['email'],
                      :subject => 'Contact Form',
                      :text => [contact.name, contact.body]}
    mg_client.send_message ENV['mailgun_domain'], contact_params
  end
end
