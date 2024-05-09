# app/models/document.rb
class Document < ApplicationRecord
  # Validations
  self.inheritance_column = :document_type

  validates :type, presence: true
  validates :titre, presence: true
  validates :isbn, uniqueness: true, presence: true
  validates :disponible, inclusion: { in: [true, false] }

  def display_name
    "#{isbn}-#{titre}"
  end
end
