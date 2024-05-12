class AddAuteurToDocuments < ActiveRecord::Migration[7.1]
  def change
    add_column :documents, :auteur, :string
  end
end
