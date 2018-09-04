class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :name
      t.text :description
      t.string :start_time
      t.datetime :end_time
      t.integer :status
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end