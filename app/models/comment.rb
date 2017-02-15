class Comment < ActiveRecord::Base
    
    before_save :clean_filter
    
    validates_length_of :content,
    :maximum => 200, # 200글자 이하
    :presence => true     # NULL 이 아닌지 판정
    
    
    belongs_to :user
    belongs_to :post
    
    
    def clean_filter
        self.content.gsub!(/(fuck)|(shit)/,"****")
    end
    
end
