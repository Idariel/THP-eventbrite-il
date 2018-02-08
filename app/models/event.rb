class Event < ApplicationRecord
	has_and_belongs_to_many :user
	# validates :description, length: { maximum: 140 },
 #                      presence: true
	# validates :date,
 #                      presence: true
 #  validates :place, length: { maximum: 60 },
 #                      presence: true

end

# 