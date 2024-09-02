# frozen_string_literal: true

class RemoveAgeFromInstructores < ActiveRecord::Migration[6.1]
  def change
    remove_column :instructors, :string, :string
  end
end
