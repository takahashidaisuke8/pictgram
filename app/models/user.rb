class User < ApplicationRecord
    validates :name, length: { maximum: 15 }
    validates :email, format: { with: /\A[a-z0-9]+@[a-z0-9]+.[a-z]+\z/i }
    validates :password, length: { minimum: 8, maximum: 32 }, format: { with: /\A[A-Za-z0-9]+\z/}
    
    
    has_secure_password
end
