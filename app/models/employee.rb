class Employee < ApplicationRecord
    validates :first_name, :last_name, presence: true
    validates :email, presence: true, uniqueness: true 
    validates :country, :city, :address_line_1, :pincode, :age, presence: true

    #Make custom fucntion
    def full_name
      "#{first_name} #{last_name}".strip
    end

    def full_address
      "#{country} #{city} #{address_line_1}".strip
    end

    def format_id
      "Emp-#{id}".strip
    end


end
