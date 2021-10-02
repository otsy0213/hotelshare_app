class Inn < ApplicationRecord
    has_many :reservations
    belongs_to :user
    
    
    mount_uploader :image, ImageUploader
    
end
