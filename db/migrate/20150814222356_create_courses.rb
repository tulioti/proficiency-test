class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name, null: false, :limit => 45
      t.text :description, null: false, :limit => 45
      t.integer :status, null: false

      t.timestamps
    end
  end
end
