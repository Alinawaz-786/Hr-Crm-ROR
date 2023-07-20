class Article < ApplicationRecord

  belongs_to :publisher
  has_many :documents

  validates  :act_header, :act_body, :act_type, :publish_date, presence: true

  def format_id
      "Act-#{id}".strip
  end
end
