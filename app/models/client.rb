class Client < ActiveRecord::Base
	has_many :taxyear
	validates :name, presence:true, length: {minimum: 5}
end
