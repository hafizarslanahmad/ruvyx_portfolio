class Project < ApplicationRecord
    has_many_attached :images

    enum category: {designing: 0, web_development: 1, mobile: 2}

    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "description", "id", "id_value", "title", "updated_at", "image"]
    end
   
end
