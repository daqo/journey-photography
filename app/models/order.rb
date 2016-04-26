class Order < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 30 }
	validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
	validates :phone, length: { maximum: 15 }
	validates :file_number, presence: true, uniqueness: true
end
