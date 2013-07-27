class CreateMinutes < ActiveRecord::Migration
  def change
    create_table :minutes do |t|
      t.string :title
      t.date :date
      t.string :attendees
      t.string :agenda
      t.string :content
      t.string :actionpoints

      t.timestamps
    end
  end
end
