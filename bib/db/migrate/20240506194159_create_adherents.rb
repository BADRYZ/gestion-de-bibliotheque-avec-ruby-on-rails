class CreateAdherents < ActiveRecord::Migration[7.1]
  def change
    create_table :adherents do |t|
      t.string :nom
      t.string :prenom
      t.string :cin

      t.timestamps
    end
  end
end
