class User < ActiveRecord::Base
    
    before_save :name_capitalize # 저장하기전에 메소드를 실행해라
    
     validates_length_of :name,
     :maximum => 10,      # name 컬럼에서 10글자 제한
     :presence => true      # NULL 이 아닌지 판정 
     
     
     validates_numericality_of :age,
     :only_integer => true,      #정수 값만 받는다.
     :greater_than_or_equal_to => 20,     #20세 이상
     :less_than_or_equal_to => 29,     # 29세 이하 
     :presence => true     # NULL 이 아닌지 판정
    
     validates_uniqueness_of :mail,
     :presence => true     # NULL 이 아닌지 판정
     
     validates_format_of :mail,
     :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
     # 이메일 판정 정규표현식
     
     def name_capitalize  
         self.name.capitalize!
     end
    
    has_many :usergroups
    has_many :comments
    has_many :posts
    has_many :likes
end
