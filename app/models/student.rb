class Student < ActiveRecord::Base
	has_many :classrooms
	validates :name, presence: true, length: { maximum: 45 }
	validates :register_number, presence: true, length: { maximum: 45 }
	validates :status, presence: true
end
