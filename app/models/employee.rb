class Employee < ApplicationRecord

    GANDER = ['Male','FEMALE'].freeze

    #Create RelationShip
    has_many :documents

    validates :first_name, :last_name, presence: true
    validates :date_of_joining, :date_of_birth, :gander, presence: true
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
