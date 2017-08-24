class Teacher < ApplicationRecord
	before_validation :fullname
	validates :full_name, presence: true

	def fullname
		self.full_name = fname + lname

		if age > 60
			self.senior_citizen = true
		else
			self.senior_citizen = false
		end
	end
end
