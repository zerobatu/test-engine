class CreatePostulationPostulationProcesses < ActiveRecord::Migration
  def change
    create_table :postulation_postulation_processes do |t|
      t.string :name
      t.string :place
      t.text :description
      t.integer :salary

      t.timestamps
    end
  end
end
