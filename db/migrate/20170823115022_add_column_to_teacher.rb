class AddColumnToTeacher < ActiveRecord::Migration[5.0]
  def change
    add_column :teachers, :full_name, :string
  end
end
