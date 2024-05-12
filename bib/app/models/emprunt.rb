class Emprunt < ApplicationRecord
  # belongs_to :adherent
  # belongs_to :item, polymorphic: true

  # validate :check_max_emprunts
  # validates :item_type, inclusion: { in: ['livre', 'Materiel', ''], message: "%{value} is not a valid item type" }

  # private

  # def check_max_emprunts
  #   if item_type == 'Document' && adherent.emprunts.where(item_type: 'Document').count >= 5
  #     errors.add(:base, "Un adhérent ne peut emprunter plus de cinq documents.")
  #   elsif item_type == 'Materiel' && adherent.emprunts.where(item_type: 'Materiel').count >= 1
  #     errors.add(:base, "Un adhérent ne peut emprunter qu'un seul matériel.")
  #   end
  # end

  belongs_to :item, optional: true
  belongs_to :adherent
  belongs_to :item, polymorphic: true

  validate :check_max_emprunts
  after_create :mark_item_as_unavailable




  private
  def check_max_emprunts
    if item_type == 'Document' && adherent.document_count.to_i >= 5
      errors.add(:base, "Un adhérent ne peut emprunter plus de cinq livres.")
    elsif item_type == 'Materiel' && adherent.materiel_count.to_i >= 1
      errors.add(:base, "Un adhérent ne peut emprunter qu'un seul ordinateur portable.")
    end
  end
  def mark_item_as_unavailable
    item.update(disponible: false)
  end

end
