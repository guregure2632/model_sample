class Group < ActiveRecord::Base
    
    validates_length_of :name,
    :maximum => 20, # 20글자 제한 
    :presence => true      # NULL 이 아닌지 판정 
    
    validates_uniqueness_of :name # 중복 방지
    
    has_many :usergroups
end
