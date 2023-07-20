class Publisher < ApplicationRecord
    has_many :publisher

    validates :first_name ,:last_name, :email ,:country, :city, :address, :dob, :age,  presence: true

    GANDER = ['Male','FEMALE'].freeze

     def format_id
          "Pub-#{id}".strip
     end

end
