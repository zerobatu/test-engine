# This migration comes from postulation (originally 20130524172736)
class CreatePostulationPosts < ActiveRecord::Migration
  def change
    create_table :postulation_posts do |t|
      t.string :name
      t.text :comment

      t.timestamps
    end
  end
end
