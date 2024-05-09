# app/models/materiel.rb
class Materiel < ApplicationRecord
  # Assume that Materiel can be of different types, handled via Single Table Inheritance (STI)
  self.inheritance_column = :Ttype

  # Validations
  validates :materiel_id, uniqueness: true, presence: true
  validates :marque, presence: true
  validates :type, presence: true
  validates :disponible, inclusion: { in: [true, false] }

  def display_name
    "#{materiel_id}-#{marque}"
  end

  # Vous pouvez ajouter des méthodes personnalisées ici pour gérer la logique spécifique au matériel
end
