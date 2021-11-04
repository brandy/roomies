class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :looking_for
      t.integer :age
      t.string :gender
      t.integer :budget
      t.date :move_in_data
      t.integer :stay_length
      t.string :occupation
      t.string :children
      t.boolean :is_non_smoker
      t.boolean :is_cat
      t.boolean :is_dog
      t.boolean :is_student
      t.boolean :is_lgbt
      t.boolean :is_cannabis
      t.text :description

      t.timestamps
    end
  end
end
