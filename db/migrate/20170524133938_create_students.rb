class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :matricula
      t.string :name
      t.string :cpf
      t.string :telefone
      t.string :curso
      t.string :sexo

      t.timestamps
    end
  end
end
