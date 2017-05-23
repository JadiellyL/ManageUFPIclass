class CreateSalas < ActiveRecord::Migration[5.0]
  def change
    create_table :salas do |t|
      t.integer :number
      t.boolean :status

      t.timestamps
    end
  end
end
