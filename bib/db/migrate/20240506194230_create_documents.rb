class CreateDocuments < ActiveRecord::Migration[7.1]
  def change
    create_table :documents do |t|
      t.string :type
      t.string :titre
      t.boolean :disponible
      t.string :isbn

      t.timestamps
    end
  end
end
