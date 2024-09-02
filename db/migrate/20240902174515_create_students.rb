class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.date :date_of_birth
      t.string :cpf
      t.string :phone

      t.timestamps
    end
  end
end
