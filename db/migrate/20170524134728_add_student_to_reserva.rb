class AddStudentToReserva < ActiveRecord::Migration[5.0]
  def change
    add_reference :reservas, :student, foreign_key: true
  end
end
