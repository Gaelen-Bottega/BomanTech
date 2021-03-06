class ContactController < ApplicationController
	def new
		@contact = Contact.new
		@page_title = "Boman | Start a Partnership"
	end

	def create
		@contact = Contact.new contact_params

		if @contact.valid? && verify_recaptcha
			ContactMailer.contact_us(@contact).deliver_now
			redirect_to new_contact_url, notice: "Message sent, we will contact you soon. Thank you!"
		else
			flash.delete(:recaptcha_error)
			flash[:error] = "Please check the recaptcha"
			render :new
		end
	end

	private

	def contact_params
		params.require(:contact).permit(:name, :email, :job_position, :company_name, :phone, :body)
	end
end
