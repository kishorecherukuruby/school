class CreateTeachers < ActiveRecord::Migration[5.0]
  def change
    create_table :teachers do |t|
      t.string :fname
      t.string :lname
      t.integer :age
      t.boolean :senior_citizen

      t.timestamps
    end
  end
end
