class CreateEmprunts < ActiveRecord::Migration[6.0]
  def change
    create_table :emprunts do |t|
      t.references :adherent, null: false, foreign_key: true
      t.references :item, polymorphic: true, null: false

      t.timestamps
    end
  end
end
