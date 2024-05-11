# # app/models/adherent.rb
# class Adherent < ApplicationRecord
#   # Validations
#   validates :nom, presence: true
#   validates :prenom, presence: true
#   validates :cin, uniqueness: true, presence: true

#   # Associations (si nécessaire)
#   has_many :emprunts
#   has_many :documents, through: :emprunts, source: :item, source_type: 'Document'
#   has_many :materiels, through: :emprunts, source: :item, source_type: 'Materiel'

#   def full_name
#     "#{nom} #{prenom}"
#   end
# end
# # app/models/adherent.rb
class Adherent < ApplicationRecord
  # Validations
  validates :nom, presence: true
  validates :prenom, presence: true
  validates :cin, uniqueness: true, presence: true

  # Associations (si nécessaire)
  has_many :emprunts, dependent: :destroy

  has_many :emprunts
  has_many :documents, through: :emprunts, source: :item, source_type: 'Document'
  has_many :materiels, through: :emprunts, source: :item, source_type: 'Materiel'

  def document_count
    documents.count
  end

  def materiel_count
    materiels.count
  end

  def full_name
    "#{nom} #{prenom}"
  end
end
