class Post < ActiveRecord::Base
    
    before_save :clean_filter
    
    
    validates_length_of :title,
    :minimum => 2, # 2글자 이상
    :maximum => 30, # 30글자 이하 
    :presence => true     # NULL 이 아닌지 판정
    
    validates :content,
    :presence => true  #NULL 이 아닌지 판정
    
    belongs_to :user
    has_many :comments
    has_many :likes
    
    def clean_filter
        self.content.gsub!(/(fuck)|(shit)/,"****")
    end
end
