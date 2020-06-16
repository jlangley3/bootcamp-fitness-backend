class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :muscle_group
      t.boolean :equipment
      t.text :description

      t.timestamps
    end
  end
end
