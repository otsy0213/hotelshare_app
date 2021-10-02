class User < ApplicationRecord
    has_many :reservations
    has_many :inns
    
    
    mount_uploader :image, ImageUploader
    
    validates :mail, presence: true, uniqueness: true
    validates :password, confirmation: true
    validates :password_confirmation, presence: true 
    
    has_secure_password
    
    
end
