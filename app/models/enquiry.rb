class Enquiry < ApplicationRecord

    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "description", "email", "id", "id_value", "name", "subject", "updated_at"]
      end
end
