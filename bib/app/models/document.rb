# app/models/document.rb
class Document < ApplicationRecord
  # Validations
  self.inheritance_column = :document_type

  validates :type, presence: true
  validates :titre, presence: true
  validates :isbn, uniqueness: true, presence: true
  validates :disponible, inclusion: { in: [true, false] }
  validates :auteur, presence: true  # Assuming you want it to be required, adjust as needed

  def display_name
    "#{isbn}-#{titre} by #{auteur}"  # Optionally include the author in the display name
  end
end
