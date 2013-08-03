class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string :title
      t.date :date
      t.string :agenda
      t.string :content
      t.string :actionpoints

      t.timestamps
    end
  end
end
