class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name, null: false, :limit => 45
      t.string :register_number, null: false, :limit => 45
      t.integer :status

      t.timestamps
    end
  end
end
