class Employee < ApplicationRecord
	validates :age,:dob, presence: { message: " %{value}kaaliga vundakudadhu" }
	validates :name, length: { in: 2..20}
	validates :name, uniqueness: true

	validate :gender_validate

	def gender_validate
		if gender != "male" && gender != "female"
			errors.add(:gender,"Should male or female")
		end
	end
end
