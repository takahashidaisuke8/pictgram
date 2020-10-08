class User < ApplicationRecord
    validates :name, length: { maximum: 15 }
    validates :email, presence: true
    validates :password, length: { minimum: 8, maximum: 32 }
    
    
    has_secure_password
    
    has_many :topics
end
