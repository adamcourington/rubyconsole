class Employee < ApplicationRecord
    validates :name,  presence: true, length: { maximum: 50 }

    before_save { self.email = email.downcase }

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 100 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true

    validates :phone_number, length: { maximum: 50 }

    validates :address, length: { maximum: 50 }

    validates :ems_number, length: { maximum: 50 }

    validates :ems_level,  presence: true, length: { maximum: 50 }

    validates :emergency_contact_name, length: { maximum: 50 }

    validates :emergency_contact_number, length: { maximum: 50 }

    validates :hire_date, length: { maximum: 50 }

end
