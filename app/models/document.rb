class Document < ApplicationRecord

  DOC_TYPES = ['CNIC','Domain Cell','Pass board'].freeze
  belongs_to :employee
  has_one_attached :image
  # Add Validation
  validates :name, :doc_type, presence: true
end
