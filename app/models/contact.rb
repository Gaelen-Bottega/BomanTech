class Contact
	include ActiveModel::Model
	attr_accessor :name, :email, :job_position, :company_name, :phone, :body
	validate :name, :email, :job_position, :company_name, :phone, :body
end