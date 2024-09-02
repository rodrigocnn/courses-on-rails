class CreateInstructors < ActiveRecord::Migration[6.1]
  def change
    create_table :instructors do |t|
      t.string :name
      t.string :email
      t.date :date_of_birth
      t.string :cpf
      t.string :phone
      t.string :subject
      t.string :string

      t.timestamps
    end
  end
end
