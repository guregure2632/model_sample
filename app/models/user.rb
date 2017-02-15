class User < ActiveRecord::Base
    
    has_many :usergroups
    has_many :comments
    has_many :posts
    has_many :likes
end
