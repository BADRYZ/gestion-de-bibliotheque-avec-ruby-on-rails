class CreateMateriels < ActiveRecord::Migration[7.1]
  def change
    create_table :materiels do |t|
      t.string :type
      t.string :marque
      t.boolean :disponible

      t.timestamps
    end
  end
end
