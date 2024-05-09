class AddMaterielIdToMateriels < ActiveRecord::Migration[7.1]
  def change
    add_column :materiels, :materiel_id, :string
  end
end
