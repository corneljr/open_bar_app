class User < ActiveRecord::Base
	has_secure_password
end

class Patron < User
end

class Owner < User
end

