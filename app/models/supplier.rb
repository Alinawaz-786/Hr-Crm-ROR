class Supplier < ApplicationRecord

    GANDER = ['Male','FEMALE'].freeze

    #Create RelationShip
    has_many :documents

    validates :company_name, :contact_fn,:contact_ln , :contact_title ,presence: true
    validates :address1, :address2, :city,:state,:country, presence: true
    validates :email, presence: true, uniqueness: true
    validates :phone, :fax, :url, :pay_methods, :discount_type,:types_goods,:discount_available, :postal_code, presence: true

    #Make custom fucntion
    def full_name
      "#{contact_fn} #{contact_ln}".strip
    end

    def full_address
      "#{country} #{city} #{address1}".strip
    end

    def format_id
      "Sup-#{id}".strip
    end


end
