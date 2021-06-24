class CreateDepartmentsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :departments do |t|
      t.string :section
    end
  end
end
