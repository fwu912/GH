class Item < ActiveRecord::Base

	belongs_to :user	
	validates :user_id, presence: true
	validates :description, length: { maximum: 250 }
	default_scope -> { order('created_at DESC') }

	
end
