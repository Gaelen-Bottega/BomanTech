class Contact
	include ActiveModel::Model
	attr_accessor :name, :email, :job_position, :company_name, :phone, :body
	validates :name, :email, :job_position, :company_name, :phone, :body, presence: true
end