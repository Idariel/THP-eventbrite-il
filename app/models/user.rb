class User < ApplicationRecord
	has_and_belongs_to_many :events
	validates :name, length: { maximum: 140 },
                      presence: true

end

