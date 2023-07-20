class Document < ApplicationRecord
  belongs_to :article
  
  DOC_TYPES = ['CNIC','Domain Cell','Pass board'].freeze

  belongs_to :article
  has_one_attached :image

  validates :name, :doc_type, presence: true

end
