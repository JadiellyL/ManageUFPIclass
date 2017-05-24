json.extract! student, :id, :matricula, :name, :cpf, :telefone, :curso, :sexo, :created_at, :updated_at
json.url student_url(student, format: :json)
