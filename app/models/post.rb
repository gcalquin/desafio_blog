class Post < ApplicationRecord

    validates :title, presence:true
    validates :content, presence:true
    validates :image_url, presence:true

    before_save :chao_spoiler

    def chao_spoiler
        self.content = self.content.gsub("spoiler", " ")
    end

end
