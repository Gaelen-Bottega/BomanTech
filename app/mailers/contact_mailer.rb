class ContactMailer < ApplicationMailer

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

    mail to: "kaden@bottega.tech", from: contact.email
  end
end
