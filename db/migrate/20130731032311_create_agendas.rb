class CreateAgendas < ActiveRecord::Migration
  def change
    create_table :agendas do |t|
      t.integer :meeting_id
      t.string :agenda_name

      t.timestamps
    end
  end
end
VERSION=20130731032311