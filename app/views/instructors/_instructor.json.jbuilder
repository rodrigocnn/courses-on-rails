# frozen_string_literal: true

json.extract! instructor, :id, :name, :email, :date_of_birth, :cpf, :phone, :subject, :string, :created_at, :updated_at
json.url instructor_url(instructor, format: :json)
