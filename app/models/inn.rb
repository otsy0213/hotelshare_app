class Inn < ApplicationRecord
    has_many :reservations
    has_many :users, through: :reservations
    
    
    mount_uploader :image, ImageUploader
    
end
