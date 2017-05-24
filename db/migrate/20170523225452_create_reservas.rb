class CreateReservas < ActiveRecord::Migration[5.0]
  def change
    create_table :reservas do |t|
      t.references :sala, foreign_key: true
      t.time :time_input
      t.time :time_output
      t.date :date
      t.integer :quantity

      t.timestamps
    end
  end
end
