class User < ApplicationRecord
	validates :firstname, :lastname, :email, :password, presence: true
	validates :email, uniqueness: true
	validates :email, uniqueness: {case_sensitive: false}
	validates :password, length: {in: 6..20}

end
