class Post < ActiveRecord::Base
    validates :title, presence: true,
                    length: { minimum: 5 }
    
    # def published
    #     #do work here
    # end
    
    # def next_post
    #     #this work is done here
    # end
    
end
