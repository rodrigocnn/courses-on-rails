json.extract! student, :id, :name, :email, :date_of_birth, :cpf, :phone, :created_at, :updated_at
json.url student_url(student, format: :json)
