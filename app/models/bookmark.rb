class Bookmark < ApplicationRecord
	belongs_to :user
	has_one :micropost

	validates :user_id, presence: true
end
