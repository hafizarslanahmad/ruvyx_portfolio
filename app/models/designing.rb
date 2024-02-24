class Designing < ApplicationRecord
    has_many_attached :images

    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "description", "id", "id_value", "title", "updated_at", "image"]
    end
end
